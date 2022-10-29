import 'package:codigo_2qr_sqlite/ui/general/colors.dart';
import 'package:codigo_2qr_sqlite/ui/widgets/general_widgets.dart';
import 'package:codigo_2qr_sqlite/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TexfieldNormalWidget extends StatelessWidget {
   TexfieldNormalWidget({
    super.key,
    required this.icons,
    required this.texto,
    required this.titulo,
    this.maxLines
    });
  String titulo;
  String texto;
  String icons;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        divader10,
        Row(
          children: [
            Text(titulo),
          ],
        ),
        divader6,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              
              BoxShadow(
                color: Color.fromARGB(255, 56, 50, 50).withOpacity(0.06),
                offset: const Offset(4, 4),
                blurRadius: 12.0,
              ),
            ],
          ),
          child: TextField(
            textAlign: TextAlign.start,
            
            maxLines: maxLines,
            decoration: InputDecoration(
              
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
                hintText:texto,
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.45),
                ),
                filled: true,
                
                fillColor: Color.fromARGB(255, 255, 255, 255),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: SvgPicture.asset(
                  icons,
                  height: 20,
                  color: kBrandPrimaryColor.withOpacity(0.45),
                  fit: BoxFit.scaleDown,
                )),
          ),
        ),
      ],
    );
  }
}
