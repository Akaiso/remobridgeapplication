import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class HeadlineText extends StatelessWidget {
  final String text ;
  final Color? color;
  final int? maxLines;
  const HeadlineText({super.key, required this.text, this.color , this.maxLines});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(textAlign: MediaQuery.of(context).size.width < 600? TextAlign.center : TextAlign.left,
      text,minFontSize: 20,maxLines: maxLines,
      // maxFontSize: 100,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: color ??  MyColors.teal ,
        fontSize: MediaQuery.of(context).size.width < 600 ? 25 :40,
      ),
    );
  }
}

class SubHeadlineText extends StatelessWidget {
  final String text ;
  final Color? color;
  final int? maxLines;
  const SubHeadlineText({super.key, required this.text, this.color, this.maxLines });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(textAlign: MediaQuery.of(context).size.width < 600? TextAlign.center : TextAlign.left,
      text,minFontSize: 18,
      maxLines: maxLines,
      style: GoogleFonts.poppins(letterSpacing: 0,
        fontWeight: FontWeight.w600,
        color: color ?? MyColors.teal,
        fontSize: 25,
      ),
    );
  }
}

class WhiteSubHeadlineText extends StatelessWidget {
  final String text ;
  const WhiteSubHeadlineText({super.key, required this.text });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(textAlign: MediaQuery.of(context).size.width < 600? TextAlign.center : TextAlign.left,
      text,minFontSize: 10,
      style: GoogleFonts.poppins(letterSpacing: 0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 25,
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  final String text ;
  final Color? color;
  final TextAlign? alignLess600;
  final TextAlign? alignMore600;
  final int? maxLine;
  final double? maxFontSize;

  const BodyText({super.key, required this.text, this.color, this.alignLess600, this.maxLine, this.alignMore600,  this.maxFontSize });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(textAlign: MediaQuery.of(context).size.width < 600? alignLess600 : alignMore600,
      text,minFontSize: 8,
      maxFontSize:  maxFontSize ?? 15 ,
      maxLines: maxLine,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w500,
        color: color,

      ),
    );
  }
}

class SansText extends StatelessWidget {
  final String text ;
  final Color? color;
  final double? fontSize;
  final int? maxLines;
  final TextAlign? alignLess600;
  final TextAlign? alignMore600;
  const SansText({super.key, required this.text, this.color, this.fontSize, this.maxLines, this.alignLess600, this.alignMore600 });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(textAlign: MediaQuery.of(context).size.width < 600? alignLess600 : alignMore600,
      text,minFontSize: 10,
      maxFontSize: 50,
      maxLines: maxLines,
      style: GoogleFonts.bentham(
        fontWeight: FontWeight.w600,
        color: color,
        fontSize: fontSize,

      ),
    );
  }
}

class BodyTextMedium extends StatelessWidget {
  final String text ;
  final Color? color;
  final int? maxLines;
  const BodyTextMedium({super.key, required this.text , this.color, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(textAlign: MediaQuery.of(context).size.width < 600? TextAlign.center : TextAlign.left,
      text,minFontSize: 18,
      maxFontSize: 18,
      maxLines: maxLines,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        color: color,

      ),
    );
  }
}


class WhiteBodyText extends StatelessWidget {
  final String text ;
  const WhiteBodyText({super.key, required this.text });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(textAlign: MediaQuery.of(context).size.width < 600? TextAlign.center : TextAlign.left,
      text,minFontSize: 10,
      style: GoogleFonts.poppins(letterSpacing: 0,
        fontWeight: FontWeight.w300,
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}

class WhiteLeftJustifiedBodyText extends StatelessWidget {
  final String text ;
  const WhiteLeftJustifiedBodyText({super.key, required this.text });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(textAlign: MediaQuery.of(context).size.width < 600? TextAlign.left : TextAlign.left,
      text,minFontSize: 10,
      style: GoogleFonts.poppins(letterSpacing: 0,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}


class NavText extends StatelessWidget {
  final String text;
  final Color color;
  final int? maxLine;
  final double? letterSpacing;
  const NavText({super.key, required this.text, required this.color, this.maxLine, this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return  AutoSizeText(text, maxLines: maxLine, style: TextStyle(letterSpacing: letterSpacing,
      fontWeight: FontWeight.w700,
      color: color,
      fontSize: 15,
    ),);
  }
}

