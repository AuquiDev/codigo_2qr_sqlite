import 'package:codigo_2qr_sqlite/ui/general/colors.dart';
import 'package:codigo_2qr_sqlite/ui/widgets/button_filter_widgets.dart';
import 'package:codigo_2qr_sqlite/ui/widgets/general_widgets.dart';
import 'package:codigo_2qr_sqlite/ui/widgets/text_field_normal_widget.dart';
import 'package:codigo_2qr_sqlite/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.0),
                  topRight: Radius.circular(32.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    divader20,
                    Container(
                      width: 48,
                      height: 4.5,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    divader20,
                    Text(
                      "Nuevo registro",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff1E1E1E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    divader6,
                    Text(
                      "Por favor ingresa todos los datos solicitados a continuación",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        height: 1.6,
                        color: Color(0xff1E1E1E).withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    divader30,
                    TexfieldNormalWidget(
                      titulo:'Titulo' ,
                      icons: Assets.qr_scan,
                      texto: 'ingrese titulo',
                    ),
                    
                    TexfieldNormalWidget(
                       titulo:'Descripcion' ,
                      icons: Assets.link,
                      texto: 'Ingrese descripcion',
                      maxLines: 4,
                    ),

                    Container(
                      margin: EdgeInsets.all(30),
                      width: 200,
                      height: 200,
                      child: QrImage(
                        data: "https://github.com/AuquiDev",
                        backgroundColor: Color.fromARGB(255, 0, 0, 0),
                        foregroundColor: Color.fromARGB(255, 248, 144, 33),
                        //embeddedImage: NetworkImage('https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI',
                        //),
                        ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}