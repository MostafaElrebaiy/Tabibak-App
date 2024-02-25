import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tabibk/core/helper/extensions.dart';
import '../../../../core/widgets/custom_widget/app_text_button.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/styles.dart';
import 'widgets/controller.dart';
import 'widgets/resend.dart';
import 'widgets/top_bk_otp_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int counter = 60;
  late Timer _timer;
  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (counter > 0) {
          counter--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,

        child: Column(children: [
          const TopBackgroundOTPScreen(),
          Padding(
            padding: EdgeInsets.only(bottom: 20.h, left: 15.w, right: 15.w),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child:
                      Text('OTP Verification', style: AppStyle.font24BlackBold),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                      'We will send you one-time password to you mobile number',
                      style: AppStyle.font14GrayRegular),
                ),
                verticalSpace(30),
                Text("$counter", style: AppStyle.font14BlackSemiBold),
                verticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OTPTextField(
                      controller: c1,
                      first: true,
                      last: false,
                    ),
                    OTPTextField(
                      controller: c2,
                      first: false,
                      last: false,
                    ),
                    OTPTextField(
                      controller: c3,
                      first: false,
                      last: false,
                    ),
                    OTPTextField(
                      controller: c4,
                      first: false,
                      last: false,
                    ),
                    OTPTextField(
                      controller: c5,
                      first: false,
                      last: false,
                    ),
                    OTPTextField(
                      controller: c6,
                      first: false,
                      last: true,
                    ),
                  ],
                ),
                verticalSpace(30),
                AppTextButton(
                  buttonText: 'Verify',
                  textStyle: AppStyle.font16WhiteSemiBold,
                  onPressed: () {
                    context.pushNamed(Routes.updatePasswordScreen);
                  },
                ),
                verticalSpace(25),
                const Resend(),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  @override
  void dispose() {
    c1.dispose();
    c2.dispose();
    c3.dispose();
    c4.dispose();
    c5.dispose();
    c6.dispose();
    _timer.cancel();
    super.dispose();
  }
}

// ignore: must_be_immutable
class OTPTextField extends StatelessWidget {
  bool first;
  bool last;
  TextEditingController controller;
  OTPTextField(
      {required this.controller,
      required this.first,
      required this.last,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(5),
        color: AppColor.white,
      ),
      child: TextField(
        onChanged: ((value) {
          if (value.isNotEmpty && last == false) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        }),
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        style: AppStyle.font24BlackBold,
        decoration: InputDecoration(
            border: InputBorder.none,
            constraints: BoxConstraints(
              maxHeight: 50.h,
              maxWidth: 50.w,
            )),
      ),
    );
  }
}
