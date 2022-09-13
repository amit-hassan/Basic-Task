import '../../index.dart';

class HomeService {

  Future getMessages() async {

    var queriesParams = {
      "page": 1
    };

    var apiResponse = await Request().get(
        url: ApiUrl.messages,
        params: queriesParams,
        options: await Request.buildRequestJsonOptions()
    );

    if(apiResponse.response?.statusCode == 200) {
      return apiResponse.response!.data['hydra:member'] as List<dynamic>;
    }

  }
}