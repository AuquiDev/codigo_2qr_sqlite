import 'package:codigo_2qr_sqlite/ui/general/colors.dart';
import 'package:codigo_2qr_sqlite/ui/pages/scanner_pages.dart';
import 'package:codigo_2qr_sqlite/ui/widgets/button_filter_widgets.dart';
import 'package:codigo_2qr_sqlite/ui/widgets/general_widgets.dart';
import 'package:codigo_2qr_sqlite/ui/widgets/items_list_widget.dart';
import 'package:codigo_2qr_sqlite/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
   
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String buttonValue = 'Hoy';

  @override
  Widget build(BuildContext context) {
    var color2 = const Color.fromARGB(255, 84, 66, 72);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var color3 = const Color.fromARGB(255, 237, 127, 54);
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: color2,
      //   title: const Text('QR Storage'),
      // ),
      backgroundColor: color2,

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> ScannerPages()));
        },
        backgroundColor: kBrandPrimaryColor,
        child: SvgPicture.asset(Assets.qr_scan,color: Colors.white,height: 30,),
        ),

      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.only(top: 30),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 238, 237),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  //Reto_clase(width: width, color3: color3),
                  Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Column(
                     children: [
                       Container(
                         width: 48,
                         height: 4.5,
                         decoration: BoxDecoration(
                           color: Colors.black.withOpacity(0.2),
                           borderRadius: BorderRadius.circular(10),
                         ),
                       ),
                       divader30,
                       const Text(
                         "Historial de Escaneos",
                         style: TextStyle(
                           fontSize: 18.0,
                           color: Color(0xff1E1E1E),
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                       divader6,
                       Text(
                         "En esta sección podrás visualizar el historial de elementos registrados, también puedes agregar nuevos ingresos cuando tú prefieras.",
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           fontSize: 14.0,
                           height: 1.6,
                           color: const Color(0xff1E1E1E).withOpacity(0.7),
                           fontWeight: FontWeight.w500,
                         ),
                       ),
                        divader30,
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         ButtonFilterWidgets(texto: 'Hoy',
                          isSelected: buttonValue == 'Hoy', 
                          colors: null,
                          onTap: (){
                               buttonValue = 'Hoy';
                                setState(() {
                                  
                                });
                          },),
                          divaderwidht14,
                         ButtonFilterWidgets(
                          texto: 'Todos',
                         isSelected:buttonValue == 'Todos', 
                         colors: null,
                         onTap: (){
                          buttonValue = 'Todos';
                          setState(() {
                            
                          });
                         },),
                        ],
                       )
                     ],
                   ),
                 ),

                
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const ItemListWidget(),
                          const ItemListWidget(),
                          const ItemListWidget(),
                          const ItemListWidget(),
                          const ItemListWidget(),
                          const ItemListWidget(),
                          const ItemListWidget(),
                          const ItemListWidget(),
                          const ItemListWidget(),
                          const ItemListWidget(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Reto_clase extends StatelessWidget {
  const Reto_clase({
    Key? key,
    required this.width,
    required this.color3,
  }) : super(key: key);

  final double width;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
           Divider(
                  color: Colors.black,
                  height: 10,
                  indent: width * .45,
                  endIndent: width * .45,
                ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
               
                divader30,
                const Text(
                  'Scanning History',
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                divader10,
                const Text(
                  'Pariatur  fugiat cillum nisi amet. Sit sunt exercitation elit anim consequat duisat mollit ullamco incididunt elit quis laborum qui incididunt eu irure. .',
                ),
                divader30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: width * .1,),
                    MaterialButton(onPressed: (){},
                    child: const Text('data'),
                    color: color3,
                    ),
                    
                    MaterialButton(onPressed: (){},
                    child: const Text('data'),
                    color: Colors.black26,
                    ),
                    SizedBox(width: width * .1,),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(right: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: color3,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: IconButton(
                    onPressed: () => null,
                    icon: Icon(Icons.play_circle_fill,size: 30,color: color3,)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
