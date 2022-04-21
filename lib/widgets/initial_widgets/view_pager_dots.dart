import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';

class ViewPagerDots extends StatelessWidget {
  const ViewPagerDots({
    Key? key,
    this.index,
    this.currentPage,
  }) : super(key: key);
  final index;
  final currentPage;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.all(4),
      height: 5,
      width: currentPage == index ? 20 : 5,
      decoration: BoxDecoration(
          color: currentPage == index ? kGreenColor : kWhiteColor,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
