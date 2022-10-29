import 'package:flutter/material.dart';

class ButtonFilterWidgets extends StatelessWidget {
  ButtonFilterWidgets({
    super.key, required this.texto, 
    required this.colors,
    required this.isSelected,
    required this.onTap
    });
  String texto;
  Color? colors;
  bool isSelected = true;
   Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('object');
        onTap();
      },
      child: Container(
        width: 90,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color:isSelected ? Color(0xfffe7d55) : Colors.black.withOpacity(.06), 
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          texto,
          style: TextStyle(
              color: Colors.white, 
              fontSize: 15, 
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
