import 'package:flutter/material.dart';
import 'package:projectname/theme/_index.dart';
import 'package:projectname/widgets/_index.dart';

enum FormType { SignIn, SignUp }

class Values {
  String email;
  String password;

  Values({
    this.email = '',
    this.password = '',
  });
}

class Keys {
  static const emailField = Key('__emailField__');
  static const passwordField = Key('__passwordField__');
}

class LoginForm extends StatefulWidget {
  final FormType type;
  final VoidCallback onEmailPressed;
  final VoidCallback onGooglePressed;
  final VoidCallback onFacebookPressed;
  final ValueChanged<Values> onSave;

  const LoginForm({
    Key key,
    @required this.type,
    @required this.onEmailPressed,
    @required this.onGooglePressed,
    @required this.onFacebookPressed,
    @required this.onSave,
  }) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  Values values = Values();
  bool autoValidate = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FocusNode emailFocus;
  FocusNode passwordFocus;

  @override
  void initState() {
    super.initState();
    emailFocus = FocusNode();
    passwordFocus = FocusNode();
  }

  void submit() {
    final FormState form = formKey.currentState;
    FocusScope.of(context).requestFocus(FocusNode());

    if (form.validate()) {
      form.save();
      widget.onSave(values);
    } else {
      autoValidate = true;
    }
  }

  isValidEmail(String email) {
    final _emailRegExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );
    return _emailRegExp.hasMatch(email);
  }

  isValidPassword(String password) {
    final _passwordRegExp = RegExp(
      r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
    );
    return _passwordRegExp.hasMatch(password);
  }

  String _emailValidator(String value) {
    if (value.trim().isEmpty) {
      return "Email is required";
    }
    if (!isValidEmail(value.trim())) {
      return "Email is not valid";
    }

    return null;
  }

  String _passwordValidator(String value) {
    if (value.isEmpty) {
      return "Password is required";
    }
    if (!isValidPassword(value.trim())) {
      return "Password needs to be longer than 8 characters";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final sizedBoxP2 = SizedBox(height: AppSizes.p2);

    return Form(
      key: formKey,
      autovalidate: autoValidate,
      child: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSizes.p),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextForm(
                key: Keys.emailField,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                hintText: "Email address",
                focusNode: emailFocus,
                validator: _emailValidator,
                onSaved: (String value) {
                  values.email = value.trim();
                },
                onFieldSubmitted: (String value) {
                  emailFocus.unfocus();
                  FocusScope.of(context).requestFocus(passwordFocus);
                },
                borderRadius: BorderRadius.circular(25.0),
              ),
              SizedBox(height: AppSizes.h),
              TextForm(
                key: Keys.passwordField,
                obscureText: true,
                textInputAction: TextInputAction.done,
                hintText: "Password",
                focusNode: passwordFocus,
                validator: _passwordValidator,
                onSaved: (String value) {
                  values.password = value;
                },
                onFieldSubmitted: (String value) {
                  submit();
                },
                borderRadius: BorderRadius.circular(25.0),
              ),
              SizedBox(height: AppSizes.h),
              Button(
                onPressed: widget.onEmailPressed,
                text:
                    "Sign ${(widget.type == FormType.SignIn) ? "in" : "up"} with email",
                color: Colors.amber,
                borderRadius: BorderRadius.circular(25.0),
              ),
              sizedBoxP2,
              Divider(
                thickness: 2,
              ),
              sizedBoxP2,
              Button(
                onPressed: widget.onGooglePressed,
                icon: Image.asset('assets/icons/Google.png'),
                text:
                    "Sign ${(widget.type == FormType.SignIn) ? "in" : "up"} with google",
                color: Colors.white,
                type: ButtonType.L,
                borderRadius: BorderRadius.circular(25.0),
              ),
              sizedBoxP2,
              Button(
                onPressed: widget.onFacebookPressed,
                icon: Image.asset('assets/icons/Facebook.png'),
                text:
                    "Sign ${(widget.type == FormType.SignIn) ? "in" : "up"} with facebook",
                color: AppColors.facebookBlue,
                type: ButtonType.L,
                borderRadius: BorderRadius.circular(25.0),
                textColor: Colors.white,
              ),
              sizedBoxP2,
            ],
          ),
        ),
      ),
    );
  }
}
