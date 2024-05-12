import 'package:flutter/material.dart';
import 'package:flutterfeb/state%20management/getx/controller/count_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(
      const MaterialApp(
          home: GetX()));
}

class GetX extends StatelessWidget {
  const GetX({super.key});

  @override
  Widget build(BuildContext context) {
    final CountController controller = Get.put(CountController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text('Count : ${controller.count}')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                controller.increment();
              }, child: const Text('Increment')),
              ElevatedButton(onPressed: () {
                controller.decrement();
              }, child: const Text('Increment')),
            ],
          )
        ],
      ),
    );
  }
}
