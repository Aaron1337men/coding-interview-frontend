import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:flutter/material.dart';

class CustomExpandedScroll extends StatelessWidget {
  const CustomExpandedScroll({
    super.key,
    required this.children,
    this.padding,
    this.hasScrollBody,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.decorationImage,
  });

  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final bool? hasScrollBody;
  final CrossAxisAlignment crossAxisAlignment;
  final DecorationImage? decorationImage;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: hasScrollBody ?? false,
          child: Container(
            padding: padding ?? const EdgeInsets.all(AppSpaces.l),
            decoration: BoxDecoration(
              image: decorationImage,
            ),
            child: Column(
              crossAxisAlignment: crossAxisAlignment,
              children: children,
            ),
          ),
        ),
      ],
    );
  }
}
