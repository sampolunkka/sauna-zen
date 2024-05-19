import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class AppColors {
  static const Gradient primaryGradient = LinearGradient(
    colors: [Color(0xFF22dcfd), Color(0xFF5865b9)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Color darkBackground = Color(0xFF5865b9);

  static const Color textPrimary = Color(0xFFFFFFFF);
}

class AppStyles {
  static TextStyle primaryButton = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    shadows: [
      Shadow(
        color: const Color(0xFF000000).withOpacity(0.1),
        offset: const Offset(0, 2),
        blurRadius: 1,
      ),
    ],
  );
}

class AppIcons {
  static SvgPicture homeIotDevice = SvgPicture.asset(
    'assets/icons/home_iot_device.svg',
    width: 24,
    height: 24,
    colorFilter: const ColorFilter.mode(AppColors.textPrimary, BlendMode.srcIn),
  );

  static SvgPicture listAlt = SvgPicture.asset(
    'assets/icons/list_alt.svg',
    width: 24,
    height: 24,
    colorFilter: const ColorFilter.mode(AppColors.textPrimary, BlendMode.srcIn),
  );

  static SvgPicture personCelebrate = SvgPicture.asset(
    'assets/icons/person_celebrate.svg',
    width: 24,
    height: 24,
    colorFilter: const ColorFilter.mode(AppColors.textPrimary, BlendMode.srcIn),
  );

}