import '../../index.dart';

mixin Text_Style {

  static TextStyle  body1Blue()=> const TextStyle(
    color: GlobalColor.textColorBlue,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static TextStyle  body1Ash()=> const TextStyle(
    color: GlobalColor.textDarkAsh,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  static TextStyle  body3Orange()=> const TextStyle(
    color: GlobalColor.actionOrangeColor,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static TextStyle  textButtonTab1White()=> const TextStyle(
    color: GlobalColor.white,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
}