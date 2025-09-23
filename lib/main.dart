import 'package:flutter/material.dart';
import 'package:shop/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market Store',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Pro Display'),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      print("Navigating to HomeScreen");
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => const HomeScreen()),
      //   );
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = Offset(0.0, 1.0);
            var end = Offset.zero;
            var curve = Curves.ease;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: Duration(milliseconds: 800),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 48, 75, 199),
                    Color.fromARGB(255, 101, 25, 177),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF667EEA).withOpacity(0.3),
                    blurRadius: 20,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 60,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Market Store',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3748),
                letterSpacing: 8,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your one-stop shop for everything',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4A5568),
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: 80),
            CircularProgressIndicator(
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF667EEA)),
            ),
          ],
        ),
      ),
    );
  }
}
