import 'package:flutter/material.dart';

class CustomGridViewHomeScreen extends StatelessWidget {
  const CustomGridViewHomeScreen({
    super.key,
    required this.itemBuilder,
    required this.scrollDirection,
    required this.height,
    required this.itemCount,
    required this.mainAxisExtent,
  });
  final Widget? Function(BuildContext, int) itemBuilder;
  final Axis scrollDirection;
  final double height;
  final double mainAxisExtent;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: height,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisExtent: mainAxisExtent,
            mainAxisSpacing: 13,
          ),
          scrollDirection: scrollDirection,
          itemCount: itemCount,
          shrinkWrap: true,
          itemBuilder: itemBuilder),
    );
  }
}
