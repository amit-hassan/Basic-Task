import 'package:basic_task/utils/index.dart';
import 'package:basic_task/utils/network/request.dart';

class SignUpService {

  Future getDomainList() async {

    var queriesParams = {
      "page": 1
    };

    var apiResponse = await Request().get(
        url: ApiUrl.domainList,
        params: queriesParams,
        options: await Request.buildRequestJsonOptions()
    );

    if(apiResponse.response?.statusCode == 200) {
      return apiResponse.response!.data["hydra:member"][0]["domain"].toString();
    }
}

  Future getAccountCreation({required String address, required String password}) async {
    var apiResponse = await Request().post(
        url: ApiUrl.account,
        options: await Request.buildRequestContentTypeOptions(),
        data: {
          "address": address,
          "password": password
        }
    );

    if(apiResponse.response?.statusCode == 201) {
      return apiResponse.response!.statusMessage;
    }
  }

  Future getLoginForToken({required String address, required String password}) async{
    var apiResponse = await Request().post(
        url: ApiUrl.login,
        options: await Request.buildRequestLoginOptions(),
        data: {
          "address": address,
          "password": password
        }
    );

    if(apiResponse.response?.statusCode == 200) {
      return apiResponse.response!.data["token"];
    }
  }


}