import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:sjipment/utils/file_path.dart';
import 'package:sjipment/widgets/themes.dart';

class Profile extends StatefulWidget {
  final logoutAction;
  final String? name;
  final String? picture;

  Profile({this.logoutAction, this.name, this.picture});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 388.h,
              child: Stack(
                children: [
                  appBar(),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      child: Image.asset(
                        FilePath.profileLines,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 46.h,
                    right: 116,
                    left: 117,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25,
                            color: const Color(0xff8B010B).withOpacity(0.1),
                            spreadRadius: 25,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 90,
                        backgroundImage: NetworkImage(
                          widget.picture ?? '',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 198,
                    left: 115,
                    child: Text(
                      '\n ${widget.name}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: CustomTheme.lightMainFigColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      elevation: 0,
      actions: [
        Row(
          children: [
            const Icon(
              Icons.logout,
              color: Colors.black,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              'Logout',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
