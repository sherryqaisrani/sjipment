import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sjipment/widgets/themes.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.mainGreenColor,
      body: SingleChildScrollView(
        child: Column(children: [
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
          ),
        ]),
      ),
    );
  }
}
