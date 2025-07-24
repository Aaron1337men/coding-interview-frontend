import 'package:crypto_calculator/styles/app_colors.dart';
import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.accentPrimary
      ..style = PaintingStyle.fill;

    final path = Path();

    // Punto de inicio: un poco a la izquierda del borde superior derecho
    final startX = size.width - 40;
    final startY = -100.0;

    // Punto final: un poco antes de la esquina inferior derecha
    final endX = size.width - 20;
    final endY = size.height * 0.9;

    // Radio amplio para una curva suave
    final radius = Radius.circular(size.width * 2);

    // Empieza un poco más a la izquierda del borde superior derecho
    path.moveTo(startX, startY);

    // Dibuja arco hacia abajo, cóncavo hacia la izquierda
    path.arcToPoint(
      Offset(endX, endY),
      radius: radius,
      clockwise: false,
    );

    // Cierra la figura hacia el borde inferior derecho y luego hacia arriba
    path.lineTo(size.width, size.height * 0.925);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
