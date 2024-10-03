import 'package:flutter/material.dart';
import 'package:aspen_travel_app/Screens/home/home_screen.dart';

class ButtonExplore extends StatelessWidget {
  const ButtonExplore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {
        print("Button pressed!"); // Debugging
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const HomeScreen();
        }));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 251, 198, 38), // Warna latar belakang
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13), // Mengatur radius
        ),
        fixedSize: Size(size.width, size.height * 0.065), // Mengatur ukuran tetap
      ),
      child: const Text(
        "Explore Now",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'ProductSans',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
