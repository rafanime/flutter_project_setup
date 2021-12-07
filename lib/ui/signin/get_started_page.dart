import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitie/ui/shared/utils.dart';
import 'package:fitie/ui/landing/landing_page.dart';
import 'cubit/get_started_cubit.dart';

class GetStartedPage extends StatefulWidget {
  static String routeName = "GetStartedPage";

  const GetStartedPage({Key? key}) : super(key: key);

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
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
              // if (value.isEmpty) {
              //   return 'Please enter an e-mail';
              // }
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
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 50,
                  color: Colors.greenAccent,
                  child: Center(
                    child: Text(
                      'SUCCESS',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                );
              },
            );
            // Utils.pushNamed(context, SignInPage.routeName, arguments: email);
          },
          jumpToSignUp: (email) {
            Utils.dismissLoadingDialog();
            // Utils.pushNamed(context, SignUpPage.routeName, arguments: email);
          },
          loginSuccess: (user) {
            Utils.dismissLoadingDialog();
            Utils.pushNamed(context, LandingPage.routeName, arguments: user);
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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              centerTitle: true,
              title: Text(
                'Log in or sign up',
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
              ),
            ),
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              behavior: HitTestBehavior.translucent,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _buildLoginForm(),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          // if (_formKey.currentState.validate()) {
                          //   _signInPageCubit.getStarted(_emailController.text);
                          // }
                        },
                        child: Text('Continue'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          onPrimary: Colors.black,
                          minimumSize: Size(double.infinity, 40),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: const [
                          Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('or'),
                          ),
                          Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                        ],
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton.icon(
                        icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
                        onPressed: () =>
                            BlocProvider.of<GetStartedCubit>(context).loginWithGoogle(),
                        label: Text('Continue with Google'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          minimumSize: Size(double.infinity, 40),
                        ),
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
