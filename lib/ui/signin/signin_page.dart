import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectname/ui/shared/utils.dart';
import 'package:projectname/ui/signin/cubit/signin_cubit.dart';

class SignInPage extends StatefulWidget {
  static String routeName = "SignInPage";

  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _passwordController,
            keyboardType: TextInputType.visiblePassword,
            autofocus: true,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your password';
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
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {
            Utils.dismissLoadingDialog();
          },
          loginSuccess: (user) {
            //TODO INSERT LOGIN SUCCESS NAVIGATION
            Utils.dismissLoadingDialog();
          },
          loginStarted: () {
            Utils.showLoadingDialog();
          },
          loginFailed: () {
            Utils.pop(context);
            _showErrorNotification();
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text('Log in'),
            ),
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              behavior: HitTestBehavior.translucent,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text('Welcome to projectname'),
                        const SizedBox(height: 50),
                        _buildLoginForm(),
                        const SizedBox(height: 24),
                        FlatButton(
                          child: Text('Continue'),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              BlocProvider.of<SigninCubit>(context)
                                  .signInWithEmailAndPassword(_passwordController.text);
                            }
                          },
                        ),
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
