import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class CustomSerchField extends StatelessWidget {
  const CustomSerchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        //validator: valid,
        //controller: mycontroller,
        decoration: InputDecoration(
            hintText: 'Search food',
            hintStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: AppColor.secondaryFontColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            filled: true,
            fillColor: Color(0xffF2F2F2),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(40),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(40),
            ),
            //label: Container(
            //margin: const EdgeInsets.symmetric(horizontal: 9),
            //child: Text(labeltext)),
            prefixIcon: Icon(CupertinoIcons.search),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
      ),
    );
  }
}
