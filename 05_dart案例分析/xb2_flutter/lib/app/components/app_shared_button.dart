import 'package:flutter/material.dart';

class AppSharedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print('floating action button');
      },
      backgroundColor: Colors.amber.shade900,
      foregroundColor: Colors.white,
      child: const Icon(Icons.share_outlined),
    );
  }
}
