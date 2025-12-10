import 'package:flutter/material.dart';

/// Color constants for the application
class AppColors {
  // Primary colors - Professional Blue theme
  static const Color primaryBrown = Color(0xFF1E88E5); // Professional Blue
  static const Color darkBrown = Color(0xFF0D47A1); // Deep Blue
  static const Color lightBrown = Color(0xFF64B5F6); // Light Blue
  
  // Secondary colors
  static const Color darkBg = Color(0xFF0F1419);
  static const Color cardBg = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  
  // Accent colors
  static const Color accentBlue = Color(0xFF2196F3);
  static const Color accentGreen = Color(0xFF4CAF50);
  
  // Additional professional colors
  static const Color successGreen = Color(0xFF4CAF50);
  static const Color errorRed = Color(0xFFE53935);
  static const Color warningOrange = Color(0xFFF57C00);
}

/// App constants
class AppConstants {
  static const String appName = 'Authentication';
  static const String appVersion = '1.0.0';
}

/// Route names for navigation
class Routes {
  static const String login = '/login';
  static const String register = '/register';
}
