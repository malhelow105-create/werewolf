import 'package:flutter/material.dart';

class AvatarCircle extends StatelessWidget {
  const AvatarCircle({
    super.key,
    required this.name,
    this.radius = 18,
  });

  final String name;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final String initials = name.trim().isEmpty
        ? '?'
        : name.trim().split(' ').take(2).map((String e) => e[0]).join();

    return CircleAvatar(
      radius: radius,
      child: Text(initials.toUpperCase()),
    );
  }
}
