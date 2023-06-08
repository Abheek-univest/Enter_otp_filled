import 'package:flutter/material.dart';

class bottom2 extends StatefulWidget {
  const bottom2({super.key});
  @override
  State<bottom2> createState() => _bottom2State();
}
class _bottom2State extends State<bottom2> {
  void init() async
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: const Text('press'),
          onPressed: (){
            bottom2sheet();
          }
      ),
    );
  }
  void bottom2sheet(){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Center(
                            child: Image(image:AssetImage('assets/device_restricted.png'),
                              width:100,
                              height:100,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0,right: 2.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child:
                            GestureDetector(
                              onTap: (){Navigator.pop(context);},
                              child: const CircleAvatar(
                                  backgroundColor:Color(0xff414141),
                                  radius: 12,
                                  child: Icon(Icons.close,color: Colors.white,size:16,)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: Text('Your phone is no longer registered',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color(0xff202020),
                              fontSize: 16
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 12.0),
                      child: Text('with Univest on this device',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Color(0xff202020),
                              fontSize: 16
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Last active:",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff202020),
                                  fontSize: 14
                              )),
                          Text(" iPhone 13 Pro",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff202020),
                                  fontSize: 14
                              )),
                        ],
                      ),
                    ),
                    const Text('As per fair usage policy you can use pro',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff414141),
                            fontSize:10
                        )),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 24),                      child: Text('feature only on one device at a time.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff414141),
                            fontSize:10
                        )),
                    ),
                    SizedBox(
                      height: 50, //height of button
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: const BorderSide(color: Colors.black)),
                            backgroundColor: const Color(0xff00439D),
                            foregroundColor: Colors.black,
                            elevation: 0,
                          ),
                          child: const Text(
                            'Login here',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff),
                                fontSize: 16
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }
                      ),
                    ),
                  ],
                ),
              );
            },);
        });
  }
}

