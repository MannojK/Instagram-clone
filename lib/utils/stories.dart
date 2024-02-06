import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class stories extends StatelessWidget {
  const stories({super.key});

  @override
  Widget build(BuildContext context) {
    final List images = [
      "assets/profile.jpeg",
      "assets/images/photo_1.jpeg",
      "assets/images/photo_2.jpeg",
      "assets/images/photo_3.jpeg",
      "assets/images/photo_4.jpeg",
      "assets/images/photo_5.jpg",
      "assets/images/photo_6.jpeg",
      "assets/images/photo_7.jpeg",
      "assets/images/photo_8.jpg",
    ];
    return Container(
      height: 120,
      child: Expanded(
        child: ListView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 90,
                height: 100,
                padding: const EdgeInsets.all(3),
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF9B2282),
                        Color(0xFFEEA863),
                      ],
                    )),
                child: Container(
                  width: 105,
                  height: 225,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                      ),
                    ],
                    image: DecorationImage(image: AssetImage(images[index])),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
