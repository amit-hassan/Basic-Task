import './index.dart';

final Routes = {
  '/'        :    (BuildContext context) => SignUpController().getView(),
  '/home'    :    (BuildContext context) => HomeController().getView(),
  '/mailView' : (BuildContext context) => MailView(),
};