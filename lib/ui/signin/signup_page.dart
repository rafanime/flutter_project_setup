import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectname/ui/shared/utils.dart';
import 'package:projectname/ui/signin/cubit/signup_cubit.dart';

class SignUpPage extends StatefulWidget {
  static String routeName = "SignUpPage";

  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _removeFocus(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            onFieldSubmitted: (_) => _removeFocus,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter an e-mail';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _passwordController,
            onFieldSubmitted: (_) => _removeFocus,
            keyboardType: TextInputType.visiblePassword,
            autofocus: true,
            obscureText: true,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your password';
              } else if (value != _confirmPasswordController.text) {
                return 'Password mismatch';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _confirmPasswordController,
            onFieldSubmitted: (_) => _removeFocus,
            keyboardType: TextInputType.visiblePassword,
            autofocus: true,
            obscureText: true,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please confirm your password';
              } else if (value != _passwordController.text) {
                return 'Password mismatch';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  void _showErrorNotification() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 50,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(
              'Something went wrong',
              style: TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {
            Utils.dismissLoadingDialog();
          },
          signupSuccess: (_, user) {
            //TODO INSERT LOGIN SUCCESS NAVIGATION
            Utils.dismissLoadingDialog();
          },
          signupStarted: (_) {
            Utils.showLoadingDialog();
          },
          signupFailed: (_) {
            Utils.pop(context);
            _showErrorNotification();
          },
        );
      },
      builder: (context, state) {
        _emailController.text = state.email;
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text('Sign Up'),
            ),
            body: GestureDetector(
              onTap: () => _removeFocus(context),
              behavior: HitTestBehavior.translucent,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        _buildLoginForm(),
                        const SizedBox(height: 68),
                        FlatButton(
                          child: Text('Continue'),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              BlocProvider.of<SignupCubit>(context).signUpWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                            }
                          },
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
