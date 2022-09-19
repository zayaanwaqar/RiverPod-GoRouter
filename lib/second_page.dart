import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_app/main.dart';
import 'first_page.dart';
class SecondPage extends ConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var no = ref.read(messageStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

             Text('Value: $no'),
            ElevatedButton(
              onPressed: () => context.push('/'),
              child: const Text('Return to First Page'),
            ),
          ],
        ),
      ),
    );
  }
}
