import 'package:flutter/material.dart';
import 'package:projectname/theme/_index.dart';

enum ButtonType { XL, L, M, S, XS }

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double height;
  final Color color;
  final Color textColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Widget icon;
  final ButtonType type;
  final BorderRadius borderRadius;

  Button({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.icon,
    this.color,
    this.textColor = Colors.black,
    this.padding,
    this.margin,
    this.height = AppSizes.p4,
    this.type,
    this.borderRadius,
  }) : super(key: key);

  TextStyle buildTextStyle() {
    switch (type) {
      case ButtonType.L:
        return AppTextStyles.buttonL.copyWith(color: textColor);
      case ButtonType.M:
        return AppTextStyles.buttonM.copyWith(color: textColor);
      case ButtonType.S:
        return AppTextStyles.buttonS.copyWith(color: textColor);
      case ButtonType.XS:
        return AppTextStyles.buttonXS.copyWith(color: textColor);
      default:
        return AppTextStyles.buttonXL.copyWith(color: textColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.zero,
        ),
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // if (icon != null) ...[
            //   icon,
            //   SizedBox(width: AppSizes.u),
            // ],
            Text(
              text,
              style: buildTextStyle(),
            ),
          ],
        ),
        color: color,
        padding: padding,
      ),
    );
  }
}
