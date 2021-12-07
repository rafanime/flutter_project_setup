import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitie/session/cubit/session_cubit.dart';
import 'package:fitie/ui/shared/utils.dart';

class LandingPage extends StatelessWidget {
  static String routeName = "LandingPage";

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'You are logged in',
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () => BlocProvider.of<SessionCubit>(context).logout(),
                child: Text('Log out'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                )),
          ],
        ),
      ),
    );
  }
}
