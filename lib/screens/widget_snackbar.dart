import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnakBar(
    BuildContext context,
    {required String snack, Color? bgColor}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(snack),
      duration: Duration(seconds: 2),
      showCloseIcon: true,
      backgroundColor: bgColor,
    ),
  );
}
