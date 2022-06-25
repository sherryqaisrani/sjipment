import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sjipment/widgets/themes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.mainGreenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
            ),
            Container(
              width: 375.w,
              height: 740.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    40.r,
                  ),
                  topRight: Radius.circular(
                    40.r,
                  ),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 20.5.w,
                    height: 1.h,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Let’s login for explore continues',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: CustomTheme.lightgrayCode,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        SizedBox(
                          height: 56.95,
                          width: 62.95,
                          child: SvgPicture.asset(
                            'assets/svg/login_logo.svg',
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Sijpment',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                                color: CustomTheme.mainGreenColor,
                              ),
                            ),
                            // SizedBox(
                            //   width: 4.w,
                            // ),
                            // Text(
                            //   'PAGE',
                            //   style: TextStyle(
                            //     fontSize: 16.sp,
                            //     fontWeight: FontWeight.w800,
                            //     color: CustomTheme.mainOrangeColor,
                            //   ),
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Container(
                          width: 315.w,
                          height: 91.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email or Phone Number',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                decoration: emailgetInputDecoration(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          width: 315.w,
                          height: 81.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              TextFormField(
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: passwordGetInputDecoration(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: CustomTheme.mainGreenColor,
                              elevation: 20,
                              padding: EdgeInsets.symmetric(
                                vertical: 16.h,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10.r,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have an account?',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Sign Up Here',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: CustomTheme.mainOrangeColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

InputDecoration passwordGetInputDecoration() {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        10.r,
      ),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        10.r,
      ),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 16.h,
    ),
    hintText: '**********',
    hintStyle: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
    prefixIcon: SvgPicture.asset(
      'assets/svg/lock.svg',
      fit: BoxFit.scaleDown,
      width: 14.w,
      height: 18.h,
    ),
    suffixIcon: Container(
      width: 66.w,
      height: 32.h,
      margin: EdgeInsets.symmetric(
        vertical: 9.h,
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        border: Border.all(
          color: CustomTheme.mainOrangeColor,
        ),
        color: CustomTheme.lightOrangeColor,
      ),
      child: Text(
        'view',
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: CustomTheme.lightOrangeColor,
        ),
      ),
    ),
    filled: true,
    fillColor: CustomTheme.lightWhiteColor,
  );
}

InputDecoration emailgetInputDecoration() {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        10.r,
      ),
      borderSide: BorderSide(
        color: CustomTheme.mainBorderColor,
        width: 1.0.w,
        style: BorderStyle.solid,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        10.r,
      ),
      borderSide: BorderSide(
        color: CustomTheme.mainBorderColor,
        width: 1.0.w,
        style: BorderStyle.solid,
      ),
    ),
    hintStyle: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 16.h,
    ),
    hintText: 'Hello@Zachry.com',
    prefixIcon: SvgPicture.asset(
      'assets/svg/email_Icon.svg',
      fit: BoxFit.scaleDown,
      height: 10.h,
      width: 12.w,
    ),
    suffixIcon: SvgPicture.asset(
      'assets/svg/circle_checkMark.svg',
      fit: BoxFit.scaleDown,
      width: 20.h,
      height: 20.h,
    ),
  );
}
