import 'package:counter_provider/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CounterViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('카운터'),
      ),
      body: Center(
        child: Text('${viewModel.count}', style: const TextStyle(fontSize: 50),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.increase();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
