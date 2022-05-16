import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String mobileNumber = '',
    String password = '',
    String sessionName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'LoginAPI',
      apiUrl: 'https://greenbotsecommerce.azurewebsites.net/api/Login',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mobile_number': mobileNumber,
        'password': password,
        'session_name': sessionName,
      },
      returnBody: true,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$['message']''',
      );
  static dynamic errormessage(dynamic response) => getJsonField(
        response,
        r'''$['errormessage']''',
      );
  static dynamic result(dynamic response) => getJsonField(
        response,
        r'''$['result']''',
      );
}

class MasterCategoryListCall {
  static Future<ApiCallResponse> call({
    int page = 1,
    int limit = 5,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'MasterCategoryList',
      apiUrl:
          'https://greenbotsecommerce.azurewebsites.net/api/MasterCategoryList',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'limit': limit,
      },
      returnBody: true,
    );
  }
}

class ProductListCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductList',
      apiUrl: 'https://greenbotsecommerce.azurewebsites.net/api/AllProduct',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class SearchProductCall {
  static Future<ApiCallResponse> call({
    String productName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchProduct',
      apiUrl: 'https://greenbotsecommerce.azurewebsites.net/api/SearchProduct',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'product_name': productName,
      },
      returnBody: true,
    );
  }
}

class ImageListCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'ImageList',
      apiUrl: 'https://api.imgflip.com/get_memes',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
