import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant/colors.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  //final String labeltext;
  //final IconData iconData;
  final TextEditingController? mycontroller;
  //final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuth(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      //required this.labeltext,
      //required this.iconData,
      required this.mycontroller,
      //required this.valid,
      required this.isNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        //validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: AppColor.secondaryFontColor),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 23, horizontal: 30),
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
            //suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
      ),
    );
  }
}
