import 'package:crypto_calculator/widgets/loaders/circular_progress_indicator.dart';
import 'package:flutter/material.dart';

class CustomLoadingProgress extends StatelessWidget {
  const CustomLoadingProgress({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AbsorbPointer(
      child: Container(
        width: size.width,
        height: size.height,
        color: Theme.of(context).colorScheme.background.withOpacity(0.8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.8,
              height: 200,
              child: const Center(child: CustomCircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
