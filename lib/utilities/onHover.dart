import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class OnHoverWidget extends StatefulWidget {
  final Widget Function(bool isHovered)? builder;
  const OnHoverWidget({Key? key, this.builder}) : super(key: key);

  @override
  State<OnHoverWidget> createState() => _OnHoverWidgetState();
}

class _OnHoverWidgetState extends State<OnHoverWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.05);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            curve: Sprung.overDamped,
            duration: Duration(milliseconds: 200),
            transform: transform,
            child: widget.builder!(isHovered)));
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
