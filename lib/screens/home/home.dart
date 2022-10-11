import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/controllers/meta_url_controllers.dart';
import 'components/fetch_button.dart';
import 'components/url_feild_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('IF Downloder'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            // rounded text field
            const UrlFeild(),
            //  rounded button
            const SizedBox(height: 10),
            const FetchButton(),
            GetX<MetaUrlController>(
              init: MetaUrlController(),
              builder: (data) => Text(data.reel.value.user!.fullname!),
            )
          ]),
        ),
      ),
    );
  }
}
