import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Gradient gradient;
  const GradientText({
    super.key,
    required this.text,
    this.style,
    required this.gradient,
  });
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

class GradientColor extends StatelessWidget {
  final Gradient gradient;
  final Widget content;
  final EdgeInsetsDirectional? margin;
  const GradientColor({
    super.key,
    required this.gradient,
    required this.content,
    this.margin,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: content,
      ),
    );
  }
}
