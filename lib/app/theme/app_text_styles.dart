import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static const Color _defaultColor = Colors.black;

  // ------------------ LATO ------------------

  static TextStyle extraBold({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.lato(
        fontWeight: FontWeight.w800,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  static TextStyle semiBold({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.lato(
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  static TextStyle bold({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.lato(
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  static TextStyle medium({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.lato(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  static TextStyle regular({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.lato(
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  // ------------------ POPPINS ------------------

  static TextStyle poppinsExtraBold({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.poppins(
        fontWeight: FontWeight.w800,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  static TextStyle poppinsSemiBold({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  static TextStyle poppinsBold({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  static TextStyle poppinsMedium({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );

  static TextStyle poppinsRegular({
    double fontSize = 16,
    Color color = _defaultColor,
    Color? backgroundColor,
    Paint? foreground,
  }) =>
      GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        color: foreground == null ? color : null,
        backgroundColor: backgroundColor,
        foreground: foreground,
      );
}
