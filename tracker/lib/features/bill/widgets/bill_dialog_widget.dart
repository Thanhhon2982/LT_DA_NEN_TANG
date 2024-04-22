// ignore_for_file: prefer_const_constructors

import 'package:tracker/database/database.isar.dart';
import 'package:tracker/features/bill/bill_bloc.dart';
import 'package:tracker/repository/db_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BillDialog extends StatelessWidget {
  BillDialog({super.key});
  final ctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Bill'),
      contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0), // Adjust content padding
      content: SingleChildScrollView( // Wrap content in SingleChildScrollView
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: ctrl,
              autofocus: true,
            ),
          ],
        ),
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            final bill = Bill();
            bill.billName = ctrl.text;

            final b = context.read<BillCubit>().bill;

            bill.parentBill.value = b;

            Get.find<DatabaseRepository>().addBillWithParent(bill);

            Navigator.of(context).pop();
          },
          child: Text('Add'),
        ),
      ],
    );

  }
}
