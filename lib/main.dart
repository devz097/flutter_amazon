import 'package:kad_payfort/constants/app_colors.dart';
import 'package:kad_payfort/providers/payment_provider.dart';
import 'package:kad_payfort/views/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon Payfort Example',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.primaryColor,
        ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => PaymentProvider(),
        child: const PaymentScreen(),
      ),
    );
  }
}
