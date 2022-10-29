import 'package:codigo_2qr_sqlite/ui/widgets/general_widgets.dart';
import 'package:codigo_2qr_sqlite/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
              decoration: BoxDecoration(
                 color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 18,
                    offset: const Offset(3,14)
                  )
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('Texto lagor texto latgo',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                          )
                        ),
                        divader6,
                        const Text('Id sit eiusmo dkjdklsdk im dolore in. Occaecat est tempor ad veniam laboris adipisicing.',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15
                          ),
                        ),
                        divader6,
                        Row(
                          children: [
                            SvgPicture.asset(Assets.calendar,color: Colors.black54,height:20,),
                            const Text('12/12/2022',
                               style: TextStyle(
                               color: Colors.black54
                               )
                            ),
                            divaderwidht6,
                            SvgPicture.asset(Assets.time,color: Colors.black54,height: 20,),
                            const Text('12:00:00 pm',
                             style: TextStyle(
                            color: Colors.black54
                            ),
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                  divaderwidht6,
                  SvgPicture.asset(Assets.link),
                ],
              ),
            )
;
  }
}