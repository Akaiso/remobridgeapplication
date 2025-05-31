import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:remobridgeapplication/utility/text_styles.dart';

import 'colors.dart';

class MainButton extends StatelessWidget {
  final String title;
  final VoidCallback? function;
  const MainButton({super.key, required this.title, required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
          width: 200,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: MyColors.red),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}

class PageBackButtonAndTitle extends StatelessWidget {
  final String title;
  const PageBackButtonAndTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          )),
      title: WhiteBodyText(
        text: title,
      ),
      backgroundColor: Colors.blue,
    );
  }
}

class NavbarButtons extends StatefulWidget {
  final String? text;
  final String pageName;
  final VoidCallback? function;
  final Color? textColor;
  const NavbarButtons(
      {super.key,
        required this.text,
        required this.pageName,
        required this.function, this.textColor});

  @override
  State<NavbarButtons> createState() => _NavbarButtonsState();
}

class _NavbarButtonsState extends State<NavbarButtons> {
  Color color = const Color(0xff336666);
  bool changeAboutUsColor = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          changeAboutUsColor = true;
        });
      },
      onExit: (_) {
        setState(() {
          changeAboutUsColor = false;
        });
      },
      child: InkWell(
          onTap: widget.function,
          child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: NavText(
                color:  changeAboutUsColor ? MyColors.red : Colors.black45,
                text: widget.text!,
              ))),
    );
  }
}
