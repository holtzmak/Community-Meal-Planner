import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const SmallTextSize = 14.0;
const BodyTextSize = 16.0;
const MediumTextSize = 20.0;
const LargeTextSize = 24.0;

final Charcoal = const Color.fromRGBO(38, 70, 83, 1);
final CharcoalOpaque = const Color.fromRGBO(38, 70, 83, 50);
final PersianGreen = const Color.fromRGBO(42, 157, 143, 1);
final PersianGreenOpaque = const Color.fromRGBO(42, 157, 143, 50);
final PersianGreenVeryOpaque = const Color.fromRGBO(35, 140, 125, 90);
final OrangeYellowCrayola = const Color.fromRGBO(233, 196, 106, 1);
final SandyBrown = const Color.fromRGBO(244, 162, 97, 1);
final SandyBrownOpaque = const Color.fromRGBO(244, 162, 97, 50);
final BurntSienna = const Color.fromRGBO(231, 111, 81, 1);
final BurntSiennaOpaque = const Color.fromRGBO(231, 111, 81, 50);
final IndependencePurple = const Color.fromRGBO(61, 64, 91, 1);
final TerraCottaPink = const Color.fromRGBO(224, 122, 95, 1);

OutlinedButton outlinedButton(
        {required String text,
        required VoidCallback onPressed,
        required Color color}) =>
    OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(75.0, 50.0),
        primary: color,
        side: BorderSide(color: color),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.cabin(fontSize: MediumTextSize),
      ),
    );

ElevatedButton elevatedButton(
        {required String text,
        Widget? trailing,
        required VoidCallback onPressed,
        required Color color,
        required Color pressedColor}) =>
    ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(80.0, 50.0),
          primary: color,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: GoogleFonts.cabin(fontSize: MediumTextSize),
            ),
            if (trailing != null) trailing,
          ],
        ));

ElevatedButton stretchedButton(
        {required String text,
        Widget? trailing,
        required VoidCallback onPressed,
        required Color color,
        required Color pressedColor}) =>
    ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(80.0, 50.0),
          primary: color,
        ),
        child: Row(
          children: [
            Text(
              text,
              style: GoogleFonts.cabin(fontSize: LargeTextSize),
            ),
            Spacer(),
            if (trailing != null) trailing,
          ],
        ));

TextButton textButton(
        {required String text,
        required VoidCallback onPressed,
        required Color color,
        double? fontSize}) =>
    TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.raleway(
              fontSize: fontSize ?? MediumTextSize, color: color),
        ));

Container outlinedBox(
        {required Widget child,
        required Alignment childAlignmentInBox,
        required Color color}) =>
    Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
      decoration: BoxDecoration(border: Border.all(color: color)),
      child: Align(alignment: childAlignmentInBox, child: child),
    );
