import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Column(
        children: [
          WelcomeText(),
          SizedBox(
            height: 14,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search For Products',
                border: OutlineInputBorder(borderSide: BorderSide.none),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 10,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        'Howdy, What Are You\n Looking For 👀',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.bold,
        ),
      ),
      Container(
        child: SvgPicture.asset(
          'assets/icons/cart.svg',
          width: 20,
        ),
      )
    ]);
  }
}
