import 'package:flutter/material.dart';
import 'package:tabibk/features/auth/forget_password/ui/forget_password_screen.dart';
import 'package:tabibk/features/auth/login/ui/login_screen.dart';
import 'package:tabibk/features/auth/signup/ui/signup_screen.dart';
//delet
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  List<Widget> screens = [
    const LoginScreen(),
    const SignUpScreen(),
    const ForgetPasswordScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_line_chart_sharp), label: "pharmacy"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital), label: "Hospital"),
          ]),
      body: screens[currentindex],
    );
  }
}
