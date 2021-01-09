import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_flutter/models/task_data.dart';

import 'screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // provides TaskData data to all children subscribed
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
