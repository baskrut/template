import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color? buttonColor;
  final Color? borderColor;
  final String? iconPath;
  final Color? iconColor;

  const CommonButton({
    required this.onTap,
    required this.label,
    this.buttonColor,
    this.borderColor,
    this.iconPath,
    this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.0,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(16.0),
          border: borderColor != null ? Border.all(color: borderColor!, width: 1.0) : null,
        ),
        child: Row(
          children: [
            if (iconPath != null)
              SvgPicture.asset(
                iconPath!,
                color: iconColor,
              ),
            Text(
              label,
              //todo specify stile
            )
          ],
        ),
      ),
    );
  }
}
