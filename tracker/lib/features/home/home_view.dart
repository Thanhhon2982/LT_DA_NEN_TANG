import 'package:tracker/core/util/widget_ext.dart';
import 'package:tracker/database/database.isar.dart';
import 'package:tracker/features/bill/bill_view.dart';
import 'package:tracker/features/home/home_bloc.dart';
import 'package:tracker/repository/db_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'dart:ui';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(Get.find()),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'All Bills',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/hon2982.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state.status == HomeStatus.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    itemCount: state.bills.length,
                    itemBuilder: (context, index) {
                      return BillWidget(
                        bill: state.bills[index],
                      );
                    },
                  );
                }
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final ctrl = TextEditingController();
            AlertDialog(
              title: const Text('Add Bill'),
              contentPadding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
              content: SingleChildScrollView(
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
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    final bill = Bill();
                    bill.billName = ctrl.text;

                    Get.find<DatabaseRepository>().addBill(bill);

                    Navigator.of(context).pop();
                  },
                  child: const Text('Add'),
                ),
              ],
            ).showDialogBlocExt<HomeCubit>(context: context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}


class BillWidget extends StatelessWidget {
  const BillWidget({
    super.key,
    required this.bill,
  });

  final Bill bill;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BillView(
            bill: bill,
          ),
        ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),

        child: Row(
          children: [
            Expanded(
              child: Text(
                bill.billName,
                style: const TextStyle(fontSize: 15.0),
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
