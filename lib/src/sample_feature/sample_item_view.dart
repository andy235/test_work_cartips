import 'package:flutter/material.dart';

class SampleItemView extends StatelessWidget {
  const SampleItemView({Key? key}) : super(key: key);

  static const routName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffffc),
      appBar: AppBar(
        backgroundColor: Color(0xfffffffc),
        elevation: 0,
        title: Text(
          'Мои коды',
          style:  TextStyle (
            fontFamily: 'Roboto',
            fontSize:  24,
            fontWeight:  FontWeight.w500,
            color:  Color(0xff211f1f),
          ),
        ),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.notifications, color: Color(0xff000000), size: 35,)),
              ),
              Positioned(
                right: 26,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 8,
                    minHeight: 8,
                  ),
                ),
              )
            ],
          )
        ],

      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            height: 25,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 50,),
                Container(
                  width: 83,
                  height: 22,
                  decoration:  BoxDecoration (
                    color:  Color(0xff211f1f),
                    borderRadius:  BorderRadius.circular(41.1398963928),
                  ),
                  child:
                  Center(
                    child:
                    Text(
                      'Все коды',
                      style:  TextStyle (
                        fontFamily: 'Roboto',
                        fontSize:  14,
                        fontWeight:  FontWeight.w400,
                        color:  Color(0xfffffefb),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height:  23,
                  width: 83,
                  decoration:  BoxDecoration (
                      border:  Border.all(color: Color(0xffebebeb)),
                  color:  Color(0xfffffefb),
                  borderRadius:  BorderRadius.circular(41.1398963928),
                ),
                child:
                  Center(
                    child: Text('Избранное',
                    style:  TextStyle(
                      fontFamily: 'Roboto',
                      fontSize:  14,
                      fontWeight:  FontWeight.w400,
                      color:  Color(0xff000000),
                    ),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height:  23,
                  width: 83,
                  decoration:  BoxDecoration (
                    border:  Border.all(color: Color(0xffebebeb)),
                    color:  Color(0xfffffefb),
                    borderRadius:  BorderRadius.circular(41.1398963928),
                  ),
                  child:
                  Center(
                    child: Text('Машина',
                      style:  TextStyle(
                        fontFamily: 'Roboto',
                        fontSize:  14,
                        fontWeight:  FontWeight.w400,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height:  23,
                  width: 83,
                  decoration:  BoxDecoration (
                    border:  Border.all(color: Color(0xffebebeb)),
                    color:  Color(0xfffffefb),
                    borderRadius:  BorderRadius.circular(41.1398963928),
                  ),
                  child:
                  Center(
                    child: Text('Добавить',
                      style:  TextStyle(
                        fontFamily: 'Roboto',
                        fontSize:  14,
                        fontWeight:  FontWeight.w400,
                        color:  Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color:  Color(0xff211F1F),
                    borderRadius:  BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: SizedBox()),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.settings,
                            color: Color(0xFFFFFEFC),
                            size: 30,
                          )),
                      SizedBox(width: 30,),
                      Container(
                        width: 136,
                        height: 48,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFCDC1FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.qr_code, color: Color(0xFF211F1F),),
                                SizedBox(width: 11,),
                                Text(
                                  'Мои коды',
                                  style:  TextStyle (
                                    fontFamily: 'Roboto',
                                    fontSize:  14,
                                    fontWeight:  FontWeight.w500,
                                    color:  Color(0xff211f1f),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(width: 30,),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.person,
                              color: Color(0xFFFFFEFC),
                              size: 30,
                          )),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
