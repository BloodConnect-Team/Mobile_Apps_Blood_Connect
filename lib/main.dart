import 'package:blood_connect/providers/auth_provider.dart';
import 'package:blood_connect/providers/donor_provider.dart';
import 'package:blood_connect/providers/information_provider.dart';
import 'package:blood_connect/providers/profile_provider.dart';
import 'package:blood_connect/screens/onboarding_one.dart';
import 'package:blood_connect/screens/pages/bottomnav/bottom_navigation.dart';
import 'package:blood_connect/screens/pages/login_screen.dart';
import 'package:blood_connect/screens/pages/register_screen.dart';
import 'package:blood_connect/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => authProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProfileProvider()..getProfile(),
        ),
        ChangeNotifierProvider(
          create: (context) => InformationProvider()
            ..news()
            ..stokUdd()
            ..notificationHome()
            ..listJadwalMobileUnit(),
        ),
        ChangeNotifierProvider(
          create: (context) => DonorProvider()..donorReqAll(),
        )
      ],
      child: MaterialApp(
        title: 'Blood Connection',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: PageSatu(),
        home: const SplashScreen(),

        //
        initialRoute: '/',
        routes: {
          '/OnBoardingTwo': (context) => const OnboardingTwo(),
          '/registerScreen': (context) => const RegisterScreen(),
          '/LoginScreen': (context) => const LoginScreen(),
          '/home': (context) => const BottomNavigation(),
        },
      ),
    );
  }
}
