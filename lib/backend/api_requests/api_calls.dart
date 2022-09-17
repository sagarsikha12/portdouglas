import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? toEmail = '',
    String? subject = '',
    String? content = '',
  }) {
    final body = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "${toEmail}"
        }
      ],
      "subject": "${subject}"
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": "${content}"
    }
  ],
  "from": {
    "email": "pd2022last@gmail.com",
    "name": "PortDouglasApplication"
  },
  "reply_to": {
    "email": "noreply@portdouglasapp.com",
    "name": "PortDouglasApplication"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'send Email',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class SendEmailCopyCall {
  static Future<ApiCallResponse> call({
    String? toEmail = '',
    String? subject = '',
    String? content = '',
  }) {
    final body = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "${toEmail}"
        }
      ],
      "subject": "${subject}"
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": "${content}"
    }
  ],
  "from": {
    "email": "pd2022last@gmail.com",
    "name": "PortDouglasApplication"
  },
  "reply_to": {
    "email": "noreply@portdouglasapp.com",
    "name": "PortDouglasApplication"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'send Email Copy',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
