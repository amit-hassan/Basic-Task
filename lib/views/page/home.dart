import '../../../index.dart';

class Home extends StatefulWidget {

  HomeService service;

  Home({required this.service, Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
