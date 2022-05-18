import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kanu/Screens/animated_bottom_navigation_bar_screen.dart';
import 'package:kanu/Screens/signin_screen.dart';
import 'package:kanu/Screens/songs_videos_screen.dart';
import 'package:kanu/provider/google_signin_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return AnimatedSplashScreen(
      splash: Image.asset('images/betkanulogo.png'),
      curve: Curves.easeInSine,
      splashIconSize: height,
      splashTransition: SplashTransition.scaleTransition,
      duration: 1000,
      nextScreen: 
      //SongsVideosScreen(),
      ChangeNotifierProvider(
        create: (context) => 
        GoogleSigninProvider(),
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return AnimatedBottomNavigationBarScreen();
              } else if (ConnectionState == ConnectionState.waiting) {
                return buildLoading();
              } else {
                return SigninScreen();
              }
            }),
      ),
    );
  }

  Widget buildLoading() => Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
            child: CircularProgressIndicator(
          backgroundColor: Colors.white,
          color: Colors.blue,
        )),
      );
}
