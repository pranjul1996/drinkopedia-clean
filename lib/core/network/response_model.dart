import 'package:drinkopedia/core/constant_strings/string_resources.dart';
import 'package:get/get.dart';

enum BaseResponseStatus { success, failure, unknown }

class ResponseModel<B> {
  String success = StringsResources.success.tr;

  final dynamic message;
  final String _status;

  BaseResponseStatus get status => _status == StringsResources.success.tr
      ? BaseResponseStatus.success
      : _status == StringsResources.fail.tr
          ? BaseResponseStatus.failure
          : BaseResponseStatus.unknown;
  final B? body;

  ResponseModel(this.message, this._status, this.body);

  ResponseModel.fromJson(Map<String, dynamic> json,
      {B Function(Map<String, dynamic> bodyJson)? bodyBuilder})
      : message = json["message"],
        _status = json["status"],
        body = json["body"] != null ? bodyBuilder?.call(json["body"]) : null;

  ResponseModel copyWith({B? body}) =>
      ResponseModel(message, _status, body ?? this.body);
}
