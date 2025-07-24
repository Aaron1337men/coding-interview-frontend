import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:crypto_calculator/styles/app_spaces.dart';
import 'package:crypto_calculator/utils/snackbar_constants.dart';
import 'package:crypto_calculator/widgets/snackbar/custom_snackbar.dart';
import 'package:crypto_calculator/widgets/snackbar/snackbar_utils.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'package:unicons/unicons.dart';

extension ShowSnackBar on BuildContext {
  void showSnackBar({
    required String message,
  }) {
    _showSnackbar(
      message: message,
      icon: UniconsLine.check,
      mainColor: AppColors.neutral800,
      backgroundColor: AppColors.actionCheck,
    );
  }

  void showErrorSnackBar({required String? message}) {
    _showSnackbar(
      message: message ?? SnackbarUtils.errorMessage,
      icon: UniconsLine.times,
      mainColor: AppColors.neutralWhite,
      backgroundColor: AppColors.actionError,
    );
  }

  void showHelpSnackBar({required String message}) {
    _showSnackbar(
      message: message,
      icon: UniconsLine.question_circle,
      mainColor: AppColors.neutralWhite,
      backgroundColor: AppColors.actionInformation,
    );
  }

  void showWarningSnackBar({required String message}) {
    _showSnackbar(
      message: message,
      icon: UniconsLine.exclamation_octagon,
      mainColor: AppColors.neutral800,
      backgroundColor: AppColors.actionWarning,
    );
  }

  void _showSnackbar({
    required String message,
    required IconData icon,
    required Color mainColor,
    required Color backgroundColor,
  }) {
    final overlay = Overlay.of(this);
    final mQuery = MediaQuery.of(this).size.height;

    AnimationController? controller;

    showTopSnackBar(
      overlay,
      CustomSnackbar(
        message: message,
        icon: icon,
        mainColor: mainColor,
        backgroundColor: backgroundColor,
        dismiss: () {
          if (controller?.status != AnimationStatus.dismissed) {
            controller?.reverse();
          }
        },
      ),
      padding: EdgeInsets.only(
        top: mQuery - (mQuery * 0.29),
        left: AppSpaces.m,
        right: AppSpaces.m,
      ),
      displayDuration: SnackbarConstants.snackbarDuration,
      animationDuration: Duration.zero,
      reverseAnimationDuration: Duration.zero,
      onAnimationControllerInit: (snackbarController) {
        controller = snackbarController;
      },
    );
  }
}
