import 'package:flutter/material.dart';
import 'package:noteapp_project/constant.dart';

class TextButtom extends StatelessWidget {
  const TextButtom({super.key, this.onPressed, this.isloading = false});
  final void Function()? onPressed;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kprimarycolor,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: isloading == false
            ? const Text(
                'Add',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            : const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
      ),
    );
  }
}
