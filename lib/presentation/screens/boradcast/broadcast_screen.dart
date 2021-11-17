import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/domain/app/app.dart';
import 'package:provider/provider.dart';

class BroadcastScreen extends StatelessWidget {
  const BroadcastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<App>(
      builder: (context, app, child) {
        return Container(
          color: Colors.blue,
        );
      },
    );
  }
}
