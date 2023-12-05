import 'package:amazon_payfort/amazon_payfort.dart';

class FortConstants {
  FortConstants._();

  static const FortEnvironment environment = FortEnvironment.test;
  static const String merchantIdentifier = '01f19a33';

// For Debit/Credit Card
  static const String accessCode = 'FhHYGEYCB3GNWrbrGiJ1';
  static const String shaType = 'SHA-256';
  static const String shaRequestPhrase = '12n.VZ00Jhr/fLHBY5yM05@-';

// For Apple Pay
  static const String applePayAccessCode = 'FC4toZlVQWI4Za3sHDUt';
  static const String applePayShaType = 'SHA-256';
  static const String applePayShaRequestPhrase = '36xaVU7z.R7nJRgZCQ82L._';

  static const String applePayMerchantId = 'merchant.com.ska.kad-payfort';


}
