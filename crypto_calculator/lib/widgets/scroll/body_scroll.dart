import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:flutter/material.dart';

class BikeInBodyScroll extends StatelessWidget {
  const BikeInBodyScroll({
    super.key,
    required this.children,
    this.padding,
    this.safeArea = false,
    this.scroll = true,
    this.shrinkWrap = false,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final List<Widget> children;
  final bool safeArea;
  final bool scroll;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: SafeArea(
        left: safeArea,
        top: safeArea,
        right: safeArea,
        bottom: safeArea,
        child: (scroll)
            ? SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  padding: padding ?? const EdgeInsets.all(AppSpaces.l),
                  child: Column(
                    crossAxisAlignment: crossAxisAlignment,
                    children: children,
                  ),
                ),
              )
            : Container(
                padding: padding ?? const EdgeInsets.all(AppSpaces.l),
                child: Column(
                  crossAxisAlignment: crossAxisAlignment,
                  children: children,
                ),
              ),
      ),
    );
  }
}
