import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginApiCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? url = '',
  }) async {
    final ffApiRequestBody = '''
{
  "institutionalEmail": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginApi',
      apiUrl: '${url}/meetagora-services/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
  static dynamic responseBody(dynamic response) => getJsonField(
        response,
        r'''$.responseBody''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.firstName''',
      );
  static dynamic secondName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.secondName''',
      );
  static dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.lastName''',
      );
  static dynamic institutionaEmail(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.institutionalEmail''',
      );
  static dynamic isValidate(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.isValidate''',
      );
  static dynamic nickname(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.nickname''',
      );
  static dynamic isTeacher(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.isTeacher''',
      );
  static dynamic profileImage(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.profileImage''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.token''',
      );
  static dynamic rut(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.rut''',
      );
  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.userId''',
      );
  static dynamic scheduleId(dynamic response) => getJsonField(
        response,
        r'''$.resposeBody.scheduleID''',
      );
  static dynamic careerName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.careerName''',
      );
}

class RegistApiCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? file,
    String? email = '',
    String? password = '',
    String? nickname = '',
    String? profile =
        'https://ichef.bbci.co.uk/news/800/cpsprodpb/8A1C/production/_129265353_whatsappimage2023-04-04at12.48.55.jpg',
    String? phonenumber = '',
    String? url = '',
    FFUploadedFile? profileImage,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'registApi',
      apiUrl: '${url}/meetagora-services/on-boarding/v1/load-scheduler',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'file': file,
        'userForm':
            "{\"password\": \"${password}\",\"institutionalEmail\": \"${email}\",\"nickName\": \"${nickname}\",\"profileImage\": \"${profile}\",\"phoneNumber\": \"${phonenumber}\"}",
        'profileImage': profileImage,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic responseBody(dynamic response) => getJsonField(
        response,
        r'''$.responseBody''',
      );
}

class UpdatePassApiCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? newpassword = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePassApi',
      apiUrl: '${url}/meetagora-services/user/update-password',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'newpassword': newpassword,
        'token': token,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic resposeBody(dynamic response) => getJsonField(
        response,
        r'''$.responseBody''',
      );
}

class GetAllSubjectApiCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? url = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllSubjectApi',
      apiUrl: '${url}/meetagora-services/user/get-all-subject',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'token': token,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic responseBody(dynamic response) => getJsonField(
        response,
        r'''$.responseBody''',
        true,
      );
  static dynamic subjectName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].subjectName''',
        true,
      );
  static dynamic subjectCode(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].subjectCode''',
        true,
      );
  static dynamic subjectSection(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].subjectSection''',
        true,
      );
  static dynamic starAt(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].startAt''',
        true,
      );
  static dynamic endAt(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].endAt''',
        true,
      );
  static dynamic classroomNumber(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].classroomNumber''',
        true,
      );
  static dynamic scheduleId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].scheduleId''',
        true,
      );
  static dynamic dayId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].dayId''',
        true,
      );
}

class ProfileImageApiCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? url = '',
    String? email = '',
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'profileImageApi',
      apiUrl: '${url}/meetagora-services/user/update-image-profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'token': token,
        'image': image,
        'email': email,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class UpdateNicknameApiCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? url = '',
    String? nickname = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateNicknameApi',
      apiUrl: '${url}/meetagora-services/user/update-nickname',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'token': token,
        'nickname': nickname,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class CreateAnnouncementApiCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    int? userId,
    String? body = '',
    int? delayedTime,
    String? titleAnnouncement = '',
    String? category = '',
    bool? isVisible,
    String? subjectCode = '',
    String? subjectSection = '',
    String? nickname = '',
  }) async {
    final ffApiRequestBody = '''
{
  "subjectCode": "${subjectCode}",
  "subjectSection": "${subjectSection}",
  "userId": ${userId},
  "body": "${body}",
  "likeCount": <likeCount>,
  "titleAnnouncement": "${titleAnnouncement}",
  "category": "${category}",
  "isVisible": ${isVisible},
  "nickname": "${nickname}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAnnouncementApi',
      apiUrl: '${url}/meetagora-services/announcement/create',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class GetAllAnnouncementBySubjectApiCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? subjectCode = '',
    String? subjectSection = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllAnnouncementBySubjectApi',
      apiUrl: '${url}/meetagora-services/announcement/get-all',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'subjectCode': subjectCode,
        'subjectSection': subjectSection,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic responseBody(dynamic response) => getJsonField(
        response,
        r'''$.responseBody''',
        true,
      );
  static dynamic subjectId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].subjectId''',
        true,
      );
  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].userId''',
        true,
      );
  static dynamic body(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].body''',
        true,
      );
  static dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].createdAt''',
        true,
      );
  static dynamic likeCount(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].likeCount''',
        true,
      );
  static dynamic titleAnnouncement(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].titleAnnouncement''',
        true,
      );
  static dynamic category(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].category''',
        true,
      );
  static dynamic visible(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].visible''',
        true,
      );
  static dynamic profileImage(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].profileImage''',
        true,
      );
  static dynamic nickname(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].nickname''',
        true,
      );
  static dynamic delayedTime(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].delayedTime''',
        true,
      );
  static dynamic subjectCode(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].subjectCode''',
        true,
      );
  static dynamic subjectSection(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].subjectSection''',
        true,
      );
  static dynamic institutionalEmail(dynamic response) => getJsonField(
        response,
        r'''$.responseBody[:].institutionalEmail''',
        true,
      );
}

class GetImageByNameCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? imageName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getImageByName',
      apiUrl: '${url}/meetagora-services/gcp/image/${imageName}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class RefreshApiCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? url = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'refreshApi',
      apiUrl: '${url}/meetagora-services/refresh',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'token': token,
        'url': url,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
    );
  }

  static dynamic response(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic responseBody(dynamic response) => getJsonField(
        response,
        r'''$.responseBody''',
      );
  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.userId''',
      );
  static dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.firstName''',
      );
  static dynamic secondeName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.secondName''',
      );
  static dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.lastName''',
      );
  static dynamic rut(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.rut''',
      );
  static dynamic institutionalEmail(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.institutionalEmail''',
      );
  static dynamic scheduleId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.scheduleId''',
      );
  static dynamic carrerId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.careerId''',
      );
  static dynamic isValidate(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.isValidate''',
      );
  static dynamic nickname(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.nickname''',
      );
  static dynamic isTeacher(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.isTeacher''',
      );
  static dynamic profileImage(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.profileImage''',
      );
  static dynamic statusId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.statusId''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.token''',
      );
  static dynamic carrerName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.careerName''',
      );
}

class ChangePasswordApiCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? newPassword = '',
    String? token = '',
    String? oldPassword = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'changePasswordApi',
      apiUrl: '${url}/meetagora-services/user/update-password',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'newPassword': newPassword,
        'token': token,
        'oldPassword': oldPassword,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
    );
  }
}

class AsistenciaAlumnoApiCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? studentToken = '',
    String? tokenSession = '',
    String? location = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'asistenciaAlumnoApi',
      apiUrl: '${url}/meetagora-services/attendance/say-present',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'url': url,
        'studentToken': studentToken,
        'tokenSession': tokenSession,
        'location': location,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
    );
  }
}

class AddSubjectApiCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? subjectName = '',
    String? subjectCode = '',
    String? subjectSection = '',
    String? startAt = '',
    String? endAt = '',
    String? classroomNumber = '',
    int? scheduleId,
    int? dayId,
  }) async {
    final ffApiRequestBody = '''
{
  "subjectName": "${subjectName}",
  "subjectCode": "${subjectCode}",
  "subjectSection": "${subjectSection}",
  "startAt": "${startAt}",
  "endAt": "${endAt}",
  "classroomNumber": "${classroomNumber}",
  "scheduleId": ${scheduleId},
  "dayId": ${dayId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addSubjectApi',
      apiUrl: '${url}/meetagora-services/on-boarding/v1/add-subject',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AsistenciaProfesorApiCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? tokenTeacher = '',
    String? subjectCode = '',
    String? email = '',
    int? dayId,
    String? subjectSection = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'asistenciaProfesorApi',
      apiUrl: '${url}/meetagora-services/attendance/make-a-site',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'tokenTeacher': tokenTeacher,
        'subjectCode': subjectCode,
        'email': email,
        'dayId': dayId,
        'subjectSection': subjectSection,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
    );
  }
}

class UpdateLocationCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? location = '',
    String? url = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateLocation',
      apiUrl: '${url}/meetagora-services/user/update-location',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'token': token,
        'location': location,
        'url': url,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SayPresentCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    String? tokenSession = '',
    String? studenToken = '',
    String? location = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'sayPresent',
      apiUrl: '${url}/meetagora-services/attendance/say-present',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'url': url,
        'token_session': tokenSession,
        'studen_token': studenToken,
        'location': location,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoadProfileApiCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? url = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loadProfileApi',
      apiUrl: '${url}/meetagora-services/user/load-profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic bWlyYW5kZXo6bWlyYW5kZXo=',
      },
      params: {
        'userId': userId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
    );
  }

  static dynamic code(dynamic response) => getJsonField(
        response,
        r'''$.code''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic descriptiom(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic responseBody(dynamic response) => getJsonField(
        response,
        r'''$.responseBody''',
      );
  static dynamic userId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.userId''',
      );
  static dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.firstName''',
      );
  static dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.lastName''',
      );
  static dynamic intitutionalEmail(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.institutionalEmail''',
      );
  static dynamic scheduleId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.scheduleId''',
      );
  static dynamic careerId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.careerId''',
      );
  static dynamic nickname(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.nickname''',
      );
  static dynamic profileImage(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.profileImage''',
      );
  static dynamic statusId(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.statusId''',
      );
  static dynamic careerName(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.careerName''',
      );
  static dynamic isTeacher(dynamic response) => getJsonField(
        response,
        r'''$.responseBody.isTeacher''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
