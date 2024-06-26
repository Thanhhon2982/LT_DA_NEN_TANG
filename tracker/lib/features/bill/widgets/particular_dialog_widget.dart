// ignore_for_file: unnecessary_import

import 'package:tracker/database/database.isar.dart';
import 'package:tracker/features/bill/bill_bloc.dart';
import 'package:tracker/repository/db_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ParticularDialog extends StatelessWidget {
  ParticularDialog({super.key});
  final ctrl1 = TextEditingController();
  final ctrl2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Record'),
      contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
      content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Record Name',
            ),
            controller: ctrl1,
            autofocus: true,
          ),

          TextField(
            decoration: const InputDecoration(
              labelText: 'Amount',
            ),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
            ],
            controller: ctrl2,
          ),
        ],
      ),
      ),
        actionsPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            final id = context.read<BillCubit>().bill.id;
            final particular = Particular();
            particular.particularName = ctrl1.text;
            particular.amount = double.tryParse(ctrl2.text) ?? 0;
            particular.date = DateTime.now();
            Get.find<DatabaseRepository>().addParticular(id, particular);

            Navigator.pop(context);
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}
