import 'dart:async';

import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/themes/text_themes.dart';
import 'package:crypto_calculator/utils/snackbar_constants.dart';
import 'package:flutter/material.dart';

class CustomSnackbar extends StatefulWidget {
  const CustomSnackbar({
    super.key,
    required this.message,
    required this.icon,
    required this.mainColor,
    required this.backgroundColor,
    required this.dismiss,
  });

  final String message;
  final IconData icon;
  final Color mainColor;
  final Color backgroundColor;
  final VoidCallback dismiss;

  @override
  State<CustomSnackbar> createState() => _CustomSnackbarState();
}

class _CustomSnackbarState extends State<CustomSnackbar> {
  bool _visible = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      () => setState(() => _visible = true),
    );

    _timer = Timer(
      SnackbarConstants.snackbarWithoutLasAnimDuration,
      _dismiss,
    );
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: SnackbarConstants.fadeInDuration,
      opacity: _visible ? 1.0 : 0.0,
      child: GestureDetector(
        onTap: _dismiss,
        child: Material(
          color: widget.backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppSpaces.xs2),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(AppSpaces.m),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  widget.icon,
                  color: widget.mainColor,
                ),
                const SizedBox(width: AppSpaces.m),
                Expanded(
                  child: Text(
                    widget.message,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.semiboldBody1.copyWith(
                          color: widget.mainColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _dismiss() async {
    _timer?.cancel();

    setState(() => _visible = false);

    await Future.delayed(SnackbarConstants.fadeInDuration);

    widget.dismiss();
  }
}
