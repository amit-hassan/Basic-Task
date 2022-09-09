import '../../index.dart';

mixin Decoration_Style {
  static BoxDecoration profileLabelDecoration() =>const BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(7),
        topRight: Radius.circular(7),)
  );

  static ButtonStyle primaryColorButton() =>  ElevatedButton.styleFrom(
    padding:Style.paddingAllSides15(),
    primary: GlobalColor.primaryColor,
    shape: Style.buttonDecoration(),
  );

  static RoundedRectangleBorder buttonDecoration()=> RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );
}