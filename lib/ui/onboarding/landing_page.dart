import 'package:flutter/material.dart';
import 'package:projectname/constants.dart';
import 'package:projectname/theme/_index.dart';
import 'package:projectname/ui/onboarding/signin.dart';
import 'package:projectname/ui/onboarding/signup.dart';
import 'package:projectname/widgets/_index.dart';

class LandingPage extends StatelessWidget {
  static const routeName = landingPath;
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(AppSizes.u3),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text("projectname", style: AppTextStyles.h1),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Button(
                  onPressed: () {
                    Navigator.pushNamed(context, SignIn.routeName);
                  },
                  text: "Log In",
                  color: Colors.amber,
                  type: ButtonType.XL,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                SizedBox(height: AppSizes.u2),
                Button(
                  onPressed: () {
                    Navigator.pushNamed(context, SignUp.routeName);
                  },
                  text: "Sign Up",
                  color: Colors.red,
                  type: ButtonType.XL,
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
