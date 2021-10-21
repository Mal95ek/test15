import 'package:flutter/material.dart';

class CustomDialogPlayAll extends StatefulWidget {
  @override
  _CustomDialogPlayAllState createState() => _CustomDialogPlayAllState();
}

class _CustomDialogPlayAllState extends State<CustomDialogPlayAll> {
  int _value = 1;
  List<Map<int, String>> listening = [
    {0: 'الفاتحه'},
    {1: 'استماع لصفحه كامله'},
    {2: 'استماع للحزب '},
    {3: 'استماع للجزء'},
  ];
  Map<String, bool> lisining = {
    'تكرار الاستماع': false,
    'الاستماع من الصفحه الحاليه': false,
  };
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _highet = MediaQuery.of(context).size.height;
    return Column(children: [
      Container(
          height: _highet * 0.88,
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                  child: AlertDialog(
                elevation: 3,
                backgroundColor: Colors.white,
                contentPadding: EdgeInsets.only(top: _highet * 0.001),
                titlePadding: EdgeInsets.only(top: 0, left: 0),
                title: Container(
                  padding: EdgeInsets.only(top: _highet * 0.01),
                  color: Colors.grey.shade200,
                  child: Text(
                    'استماع',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                content: Text(
                  ' الرجاء اختيار الماده المراد سماعها وتلاوتها',
                  textAlign: TextAlign.center,
                ),
                actions: [
                  Column(
                    children: [
                      ...listening
                          .map((e) => RadioListTile(
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                title: Row(
                                  children: [
                                    Text(
                                      e.values.first,
                                    ),
                                  ],
                                ),
                                value: e.keys.first,
                                groupValue: _value,
                                onChanged: (int? value) =>
                                    setState(() => _value = value!),
                              ))
                          .toList(),
                      Divider(
                        height: 4,
                        color: Colors.black,
                      ),
                      ...lisining.keys.map((String key) {
                        return new CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: new Text(key),
                          value: lisining[key],
                          onChanged: (value) {
                            setState(() {
                              lisining[key] = value as bool;
                            });
                            setState(() {});
                          },
                        );
                      }).toList(),
                      Divider(
                        height: 7,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'موافق',
                              )),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('الغاء'),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ))))
    ]);
  }
}
