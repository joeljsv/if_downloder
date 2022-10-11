import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../services/controllers/meta_url_controllers.dart';

class UrlFeild extends StatelessWidget {
  const UrlFeild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: TextField(
          onSubmitted: ((value) {
            Get.find<MetaUrlController>().updateURLS(value);
          }),
          // url type keyboard
          keyboardType: TextInputType.url,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(top: 20, bottom: 20),
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: 'Paste URL',
          ),
        ),
      ),
    );
  }
}
