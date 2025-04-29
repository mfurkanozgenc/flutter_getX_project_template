import 'package:flutter/material.dart';

class MainElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Widget? icon;
  final ButtonStyle? style;
  final Widget? child;
  final bool isExpanded;
  final Color backgroundColor;
  final double width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const MainElevatedButton({
    Key? key,
    this.onPressed,
    this.text,
    this.icon,
    this.style,
    this.child,
    this.isExpanded = false,
    this.backgroundColor = Colors.grey,
    this.width = double.infinity,
    this.height = 50,
    this.borderRadius = 15,
    this.padding = const EdgeInsets.all(8), // Varsayılan padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonContent = child ??
        (icon != null
            ? Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon!,
                  const SizedBox(width: 8),
                  Text(text ?? ''),
                ],
              )
            : Text(text ?? ''));

    final button = ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: backgroundColor,
        minimumSize: Size(width, height),
      ),
      child: buttonContent,
    );

    final wrappedButton =
        isExpanded ? SizedBox(width: double.infinity, child: button) : button;

    return Padding(
      padding: padding,
      child: wrappedButton,
    );
  }
}
