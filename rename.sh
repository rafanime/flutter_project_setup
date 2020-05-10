#!/bin/sh
set -e

PROGNAME=$(basename $0)
WORKING_DIR=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

die() {
    echo "$PROGNAME: $*" >&2
    exit 1
}

usage() {
    if [ "$*" != "" ] ; then
        echo "Error: $*"
    fi

    cat << EOF
Usage: $PROGNAME --package-name [PACKAGE_NAME] --title [TITLE]
Rename an Android app and package.

Options:
-h, --help                         display this usage message and exit
-p, --package-name [PACKAGE_NAME]  new package name (i.e. com.example.package)
-t, --title [TITLE]                new app title (i.e. MyApp)
-o, --old-package-name [OLD_PACKAGE]     old package  name to be changed (i.e. com.app.fitness)
EOF

    exit 1
}

packagename=""
title=""
oldpackage=""
while [ $# -gt 0 ] ; do
    case "$1" in
    -h|--help)
        usage
        ;;
    -p|--package-name)
        packagename="$2"
        shift
        ;;
    -t|--title)
        title="$2"
        shift
        ;;
    -o|--old-package-name)
        oldpackage="$2"
        shift
        ;;
    -*)
        usage "Unknown option '$1'"
        ;;
    *)
        usage "Too many arguments"
      ;;
    esac
    shift
done

if [ -z "$packagename" ] ; then
    usage "Not enough arguments"
fi

if [ -z "$title" ] ; then
    usage "Not enough arguments"
fi

if [ -z "$oldpackage" ] ; then
    usage "Not enough arguments"
fi

TITLE_NO_SPACES="${title// /}"

# get rid of the git history
rm -rf ./.git

# Rename folder structure
renamefolderstructure() {
  DIR=""
  if [ "$*" != "" ] ; then
      DIR="$*"
  fi
  ORIG_DIR=$DIR

  IFS='.' read -ra oldpackages <<< "$oldpackage"
  mv $DIR/${oldpackages[0]}/${oldpackages[1]}/${oldpackages[2]} $DIR/
  rmdir $DIR/${oldpackages[0]}/${oldpackages[1]}
  rmdir $DIR/${oldpackages[0]} 

  cd $DIR
  IFS='.' read -ra packages <<< "$packagename"
  for i in "${packages[@]}"; do
      DIR="$DIR"
      mkdir $i
      cd $i

  done
  mv $WORKING_DIR/$ORIG_DIR/${oldpackages[2]}/*  ./
  rmdir $WORKING_DIR/$ORIG_DIR/${oldpackages[2]}
  cd $WORKING_DIR
}

PACKAGE_DIR="android/app/src/main/kotlin"
PACKAGE_DIR=$( renamefolderstructure $PACKAGE_DIR )

# search and replace in files
PACKAGE_NAME_ESCAPED="${packagename//./\.}"
OLD_PACKAGE_NAME_ESCAPED="${oldpackage//./\.}"
LC_ALL=C find $WORKING_DIR -type f -exec sed -i "" "s/$OLD_PACKAGE_NAME_ESCAPED/$PACKAGE_NAME_ESCAPED/g" {} +
LC_ALL=C find $WORKING_DIR -type f -exec sed -i "" "s/$OLD_TITLE/$TITLE_NO_SPACES/g" {} +
