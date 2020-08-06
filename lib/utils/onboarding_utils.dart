import 'package:flutter/material.dart';

class OnboardingUtils extends StatelessWidget {
  final String image;
  final String title;
  final String deskripsi;

  OnboardingUtils({this.image, this.title, this.deskripsi});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("images/bgonboarding.png"),
              fit: BoxFit.cover)),
      child: Column(
        children: [
          Image.asset('images/logoob.png', width: 150, height: 150),
          Image.asset(
            image,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              deskripsi,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                fontSize: 10,
                letterSpacing: 0.7,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
