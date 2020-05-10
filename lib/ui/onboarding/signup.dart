import 'package:flutter/material.dart';
import 'package:projectname/app/di.dart';
import 'package:projectname/business/bloc/login/login.dart';
import 'package:projectname/business/bloc/login/login_bloc.dart';
import 'package:projectname/constants.dart';
import 'package:projectname/theme/_index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectname/ui/onboarding/login_form.dart';

class SignUp extends StatelessWidget {
  static const routeName = '$landingPath/sign_up';

  const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = LoginBloc(authService: sl());
    final _formKey = GlobalKey<LoginFormState>();

    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider<LoginBloc>(
        create: (context) => loginBloc,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("SIGN UP", style: AppTextStyles.h1),
              SizedBox(height: AppSizes.u10),
              LoginForm(
                key: _formKey,
                type: FormType.SignUp,
                onSave: (values) => loginBloc.add(
                  LoginSubmitted(
                    email: values.email,
                    password: values.password,
                    type: LoginType.SIGNUP,
                  ),
                ),
                onEmailPressed: () => _formKey.currentState.submit(),
                onGooglePressed: () => loginBloc.add(SignWithGooglePressed()),
                onFacebookPressed: () =>
                    loginBloc.add(SignWithFacebookPressed()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
