import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'main.dart';

class FirstPage extends ConsumerWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var val = ref.watch(messageStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value){
                ref.read(messageStateProvider.state).state=value;
              },
              decoration: const InputDecoration(
                hintText: 'Enter Text here',
                fillColor: Color(0xffE4E7EB),
                filled: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/second');
              },
              child: const Text('Go'),
            ),
          ],
        ),
      ),
    );
  }
}
