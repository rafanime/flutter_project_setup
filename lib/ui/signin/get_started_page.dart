import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectname/ui/shared/utils.dart';
import 'package:projectname/ui/signin/cubit/get_started_cubit.dart';
import 'package:projectname/ui/signin/signin_page.dart';
import 'package:projectname/ui/signin/signup_page.dart';

class GetStartedPage extends StatefulWidget {
  static String routeName = "GetStartedPage";

  GetStartedPage({Key key}) : super(key: key);

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  GetStartedCubit _signInPageCubit;

  @override
  void initState() {
    super.initState();
    _signInPageCubit = BlocProvider.of<GetStartedCubit>(context);
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
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

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter an e-mail';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetStartedCubit, GetStartedState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {
            Utils.dismissLoadingDialog();
          },
          jumpToSignIn: (email) {
            Utils.dismissLoadingDialog();
            Utils.pushNamed(context, SignInPage.routeName, arguments: email);
          },
          jumpToSignUp: (email) {
            Utils.dismissLoadingDialog();
            Utils.pushNamed(context, SignUpPage.routeName, arguments: email);
          },
          loginSuccess: (user) {
            //TODO INSERT LOGIN SUCCESS NAVIGATION
            Utils.dismissLoadingDialog();
          },
          loginStarted: () {
            Utils.showLoadingDialog();
          },
          loginFailed: () {
            Utils.showLoadingDialog();
            _showErrorNotification();
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              behavior: HitTestBehavior.translucent,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Log in or sign up',
                        ),
                      ),
                      const SizedBox(height: 56),
                      _buildLoginForm(),
                      const SizedBox(height: 24),
                      FlatButton(
                        child: Text('Continue'),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _signInPageCubit.getStarted(_emailController.text);
                          }
                        },
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text('or'),
                          ),
                          Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const SizedBox(height: 10),
                      FlatButton(
                        child: Text('Continue with Google'),
                        onPressed: () =>
                            BlocProvider.of<GetStartedCubit>(context).loginWithGoogle(),
                      ),
                      const SizedBox(height: 10),
                    ],
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
