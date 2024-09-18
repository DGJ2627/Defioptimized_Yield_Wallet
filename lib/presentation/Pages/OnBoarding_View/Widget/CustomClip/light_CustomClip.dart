import 'package:flutter/material.dart';

class TopNotchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.purple;

    final path = Path();
    path.lineTo(0, 80); // Start from the left and go down 80px

    // Draw the notch here
    path.quadraticBezierTo(
        size.width * 0.4,
        500, // Control point
        size.width,
        100); // End point

    path.lineTo(size.width, 0); // Top-right corner
    path.close(); // Complete the path

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width, 120),
      painter: TopNotchPainter(),
    );
  }
}
