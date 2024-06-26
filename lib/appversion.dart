import 'package:flutter/material.dart';


class AppVersion extends StatelessWidget {
  const AppVersion({super.key});
 
  
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'route',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Apps Version'),
            leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("No back navigation available!"),)
                );
              }
            }
          ),
        ),
      )
    );
  }
}
