import 'package:flutter/material.dart';

class CustomDialogPlay extends StatefulWidget {
  _CustomDialogPlayAllState createState() => _CustomDialogPlayAllState();
}

class _CustomDialogPlayAllState extends State<CustomDialogPlay> {
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
            height: _highet * 0.40,
            margin: EdgeInsets.only(top: _highet * 0.20),
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: AlertDialog(
                  backgroundColor: Colors.white,
                  elevation: 3,
                  title: Text(
                    'التنبيه',
                    textAlign: TextAlign.center,
                  ),
                  content: Text(
                    ' لم يتم تنزيل السور المراد الاستماع الى أياتها مسبقا هل تريد تنزيل السور',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                            onPressed: () {},
                            child: Text(
                              'النعم',
                            )),
                        MaterialButton(
                          onPressed: () {},
                          child: Text('لا'),
                        )
                      ],
                    ),
                  ],
                )))
      ],
    );
  }
}
