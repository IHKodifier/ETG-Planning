import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/theme/app_dimensions.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonType type;
  final UserTier? userTier;
  final bool isLoading;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.type = ButtonType.primary,
    this.userTier,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.minTouchTarget,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: _getButtonStyle(context),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Text(
                text,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: _getTextColor(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }

  ButtonStyle _getButtonStyle(BuildContext context) {
    Color backgroundColor;

    switch (type) {
      case ButtonType.primary:
        backgroundColor = _getPrimaryColor();
        break;
      case ButtonType.secondary:
        backgroundColor = Colors.transparent;
        break;
      case ButtonType.outline:
        backgroundColor = Colors.transparent;
        break;
    }

    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: _getTextColor(context),
      elevation: type == ButtonType.primary ? 2 : 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
        side: type == ButtonType.outline
            ? BorderSide(color: _getPrimaryColor(), width: 2)
            : BorderSide.none,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.space6,
        vertical: AppDimensions.space3,
      ),
    );
  }

  Color _getPrimaryColor() {
    switch (userTier) {
      case UserTier.anonymous:
        return AppColors.anonymousPrimary;
      case UserTier.free:
        return AppColors.freePrimary;
      case UserTier.paid:
        return AppColors.paidPrimary;
      default:
        return AppColors.primary700;
    }
  }

  Color _getTextColor(BuildContext context) {
    if (type == ButtonType.primary) {
      return Colors.white;
    } else {
      return _getPrimaryColor();
    }
  }
}

enum ButtonType { primary, secondary, outline }
enum UserTier { anonymous, free, paid }