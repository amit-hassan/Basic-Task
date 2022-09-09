import '../../../index.dart';

mixin MediaQuery_Height {
  static double basicGap(BuildContext context) => MediaQuery.of(context).size.height*0.2;
}

mixin Sizes {
  static double size15() => 15.0;
  static double size20() => 20.0;
}

mixin Margin_Styles {
  static EdgeInsets marginLeftRight25()=> const EdgeInsets.only(left: 25, right: 25);
}