import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kanu/provider/google_signin_provider.dart';
import 'package:provider/provider.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset('images/light.jpg').image,
                  fit: BoxFit.fill)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Text(
                  'Wellcome to BETKANU ..',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[400]),
                ),
                SizedBox(height: 10),
                Text(
                  'Login to your google account to continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton.icon(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.orange[300]),
                    icon: FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      final provider = Provider.of<GoogleSigninProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                    },
                    label: Text('Sign in with Google')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
