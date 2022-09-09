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
      return apiResponse.response!.data.toString();
    }
}
}