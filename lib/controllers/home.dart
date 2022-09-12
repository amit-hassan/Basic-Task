import '../../index.dart';

class HomeController {

  late HomeService _homeService;

  HomeController() : _homeService = HomeService();

  Home getView() => Home(service: _homeService);

}