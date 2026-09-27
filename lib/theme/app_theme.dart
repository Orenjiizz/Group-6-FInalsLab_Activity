import 'package:flutter/material.dart';

/// Central place for colors, spacing and text styles so that the
/// Login, Sign-Up and Home screens share one consistent look.
class AppColors {
  static const Color primary = Color(0xFF4A5FE7); // indigo/blue
  static const Color primaryDark = Color(0xFF2F3FB0);
  static const Color background = Color(0xFFF5F6FB);
  static const Color card = Colors.white;
  static const Color textDark = Color(0xFF1E2138);
  static const Color textMuted = Color(0xFF8A8FA3);
  static const Color error = Color(0xFFE5484D);
}

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.background,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    primary: AppColors.primary,
  ),
  fontFamily: 'Roboto',
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    foregroundColor: AppColors.textDark,
    centerTitle: true,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFE2E4F0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.primary, width: 1.6),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      minimumSize: const Size.fromHeight(52),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      elevation: 0,
    ),
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: AppColors.textDark,
    ),
    bodyMedium: TextStyle(fontSize: 14, color: AppColors.textMuted),
  ),
);

/// Simple flat icon header — a plain colored circle with a single-color
/// Material icon. No gradient/glow so it doesn't read as generic
/// AI-generated app art.
class BrandBadge extends StatelessWidget {
  final IconData icon;
  const BrandBadge({super.key, this.icon = Icons.route_rounded});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: AppColors.primary, size: 30),
    );
  }
}
