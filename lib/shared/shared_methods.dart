import 'package:another_flushbar/flushbar.dart';
import 'package:e_wallet/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void showCustomSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    duration: const Duration(seconds: 2),
    backgroundColor: redColor,
  ).show(context);
}

String formatCurrency(num number, {String symbol = 'Rp '}) {
  return NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: symbol)
      .format(
    number,
  );
}
