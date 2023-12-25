import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Laborum do duis aliqua officia laborum nulla consectetur consectetur laborum. Officia et non pariatur elit dolor duis pariatur proident in consectetur aute amet elit excepteur. Eiusmod exercitation qui cupidatat labore esse. Non in nisi aute commodo.'),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancel')
          ),
          FilledButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Accept')
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Excepteur ea in esse nostrud reprehenderit duis nisi culpa veniam esse nostrud dolore voluptate esse. Proident commodo laboris cillum non sint sunt proident pariatur cillum consequat occaecat sunt elit. Irure occaecat velit qui et velit sint Lorem aute consequat enim cillum.')
                  ]
                );
              },
              child: const Text('Used Licences')
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show Dialog')
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Show snackbar')
      ),
    );
  }
}