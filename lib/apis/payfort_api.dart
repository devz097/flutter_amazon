import 'dart:convert';

import 'package:amazon_payfort/amazon_payfort.dart';
import 'package:kad_payfort/constants/fort_constants.dart';
import 'package:kad_payfort/models/sdk_token_response.dart';
import 'package:http/http.dart';

class PayFortApi {
  PayFortApi._();

  static Future<SdkTokenResponse?> generateSdkToken(
      SdkTokenRequest request) async {
    var payfortAPI = FortConstants.environment==FortEnvironment.test?'https://sbpaymentservices.payfort.com/FortAPI/paymentApi'
        :'https://paymentservices.payfort.com/FortAPI/paymentApi';
    var response = await post(
      Uri.parse(payfortAPI),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(request.asRequest()),
    );
    if (response.statusCode == 200) {
      var decodedResponse = jsonDecode(response.body);
      return SdkTokenResponse.fromMap(decodedResponse);
    }
    return null;
  }
}
