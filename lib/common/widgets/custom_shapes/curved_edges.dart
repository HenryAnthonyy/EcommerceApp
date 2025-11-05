import 'package:flutter/material.dart';

// This class defines a custom clipper that creates a curved edge shape.
// It can be used to clip widgets into this custom curved shape.
class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Create a new Path object to define the shape
    var path = Path();

    // Start drawing from the top-left corner (0,0) down to the bottom-left corner
    path.lineTo(0, size.height);

    // ===== FIRST CURVE (bottom-left small curve) =====
    // Define the control and end points for the first curve
    final firstCurveStart = Offset(0, size.height - 40); // control point
    final firstCurveEnd = Offset(50, size.height - 40);  // end point

    // Draw the first small curve using a quadratic Bezier curve
    path.quadraticBezierTo(
        firstCurveStart.dx, firstCurveStart.dy, firstCurveEnd.dx, firstCurveEnd.dy);

    // ===== STRAIGHT LINE (across the bottom section) =====
    // Define start and end points for a horizontal line across the bottom
    final lineStart = Offset(0, size.height - 40);
    final lineEnd = Offset(size.width - 50, size.height - 40);

    // Draw a smooth line (could also be done with lineTo)
    path.quadraticBezierTo(lineStart.dx, lineStart.dy, lineEnd.dx, lineEnd.dy);

    // ===== SECOND CURVE (bottom-right curve) =====
    // Define the control and end points for the right curve
    final secondCurveStart = Offset(size.width, size.height - 40); // control point
    final secondCurveEnd = Offset(size.width, size.height);        // end point

    // Draw the second curve connecting to the right edge
    path.quadraticBezierTo(
        secondCurveStart.dx, secondCurveStart.dy, secondCurveEnd.dx, secondCurveEnd.dy);

    // Draw a straight line from the bottom-right corner to the top-right corner
    path.lineTo(size.width, 0);

    // Close the path to connect back to the starting point (top-left corner)
    path.close();

    // Return the completed custom path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // Always reclip whenever the widget is rebuilt to ensure updated curves
    return true;
  }
}
