import '../../index.dart';

class Style {

  //All TextStyle
  static TextStyle body1Blue() => Text_Style.body1Blue();
  static TextStyle body1Ash () => Text_Style.body1Ash();
  static TextStyle body3Orange () => Text_Style.body3Orange();
  static TextStyle textButtonTab1White () => Text_Style.textButtonTab1White();
  static TextStyle title1Blue () => Text_Style.title1Blue();
  //All Heights
  static double basicGap(BuildContext context) => MediaQuery_Height.basicGap(context);

  //All Size
  static double size20() => Sizes.size20();

  //All Margins
  static EdgeInsets marginLeftRight25 () => Margin_Styles.marginLeftRight25();

  // button style
  static  ButtonStyle primaryColorButton() => Decoration_Style.primaryColorButton();

  //All Paddings
  static EdgeInsets paddingAllSides15 () => Padding_Style.paddingAllSides15();

  //All BoxDecoration
  static RoundedRectangleBorder buttonDecoration() => Decoration_Style.buttonDecoration();
}