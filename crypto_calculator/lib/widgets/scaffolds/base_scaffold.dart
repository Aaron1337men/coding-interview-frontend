import 'package:crypto_calculator/widgets/views/loading_progress.dart';
import 'package:flutter/material.dart';

class CustomBaseScaffold extends StatelessWidget {
  const CustomBaseScaffold({
    super.key,
    required this.child,
    this.isLoading = false,
    this.onWillPop,
  });

  final Widget child;
  final bool isLoading;
  final WillPopCallback? onWillPop;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: isLoading ? () async => false : onWillPop,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Stack(
          children: [
            child,
            if (isLoading) const CustomLoadingProgress(),
          ],
        ),
      ),
    );
  }
}
