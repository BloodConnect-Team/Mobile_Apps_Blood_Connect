import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/information_provider.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<InformationProvider>(builder: (context, state, child) {
      return Text(
        state.stokDarah["Update"].toString(),
        style: TextStyle(fontSize: 11, color: Colors.grey),
      );
    });
  }
}
