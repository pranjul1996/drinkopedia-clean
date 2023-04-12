
import 'package:drinkopedia/core/network/api_request_manager.dart';
import 'package:drinkopedia/core/network/app_exception.dart';
import 'package:drinkopedia/core/network/response_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class BaseRepository {
  final IHttpClient httpClient;

  BaseRepository(this.httpClient);

  dynamic validateData(ResponseModel res) {
    if (res.status == null) {
      throw AppException(reason: "Response Status is Empty");
    }
    switch (res.status) {
      case BaseResponseStatus.success:
        return res.body;
      case BaseResponseStatus.failure:
        throw AppException(reason: "Request fail", exception: res.message);
      default:
        throw AppException(
            reason: "Request fail", exception: "Status meesage is unknown");
    }
  }
}

abstract class SecureRepository extends BaseRepository {
  final FlutterSecureStorage secureStorage;

  SecureRepository(IHttpClient httpClient, this.secureStorage)
      : super(httpClient);
}
