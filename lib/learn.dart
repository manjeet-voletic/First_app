import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'oneplace.dart';
class Learn extends StatefulWidget {
  const Learn({super.key,});

  @override
  State<Learn> createState() => _LearnState();
}
class _LearnState extends State<Learn> {
  void navigateTooneplace(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Oneplace()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E7CE1), // Top-Bottom gradient look
    appBar: AppBar(
      title: Text ('First Learning'),
    ),
      body: SizedBox.fromSize(
        child: Container(
          width: 350,
          height: 900,
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Name Is Manjeet',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  textAlign: TextAlign.center,
                  'I am a Flutter developer. This is my paragraph text.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 140,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // shadow color
                            spreadRadius: 2, // how much the shadow spreads
                            blurRadius: 5, // blur effect
                            offset: Offset(3, 3), // horizontal & vertical offset
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "Man",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 140,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // shadow color
                            spreadRadius: 2, // how much the shadow spreads
                            blurRadius: 5, // blur effect
                            offset: Offset(3, 3), // horizontal & vertical offset
                          ),
                        ],
                      ),
                      child: Text(
                      'Jeet',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                                          ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                GestureDetector(
               child:  Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color(0xFF1F2EFF),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // shadow color
                        spreadRadius: 2, // how much the shadow spreads
                        blurRadius: 5, // blur effect
                        offset: Offset(3, 3), // horizontal & vertical offset
                      )
                    ]
                  ),
                  child: Material(
                    child: InkWell(
                      onTap:navigateTooneplace,
                      onDoubleTap: (){
                        print("person tapped double");
                      },
                      child: Text
                        ('Send', style:TextStyle (color: Colors.white, fontSize:18,fontWeight: FontWeight.w400,backgroundColor:  Color(0xFF1F2EFF),),
                      ),
                    ),
                  ),
                ),
            ),
                SizedBox.fromSize(size: Size(0,20,),),
                Table(
                  border: TableBorder.all(color: Colors.black), // table border
                  columnWidths: const {
                    0: FlexColumnWidth(2), // first column takes 2x space
                    1: FlexColumnWidth(3),
                    2: FlexColumnWidth(2),
                  },
                  children: [
                    // Table Header
                    TableRow(
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("ID", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Age", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),

                    // Table Row 1
                    TableRow(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("1"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Manjeet"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("25"),
                        ),
                      ],
                    ),

                    // Table Row 2
                    TableRow(
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("2"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Rahul"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("30"),
                        ),
                      ],
                    ),

                    // Table Row 3
                    TableRow(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("3"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Anita"),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("28"),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox.fromSize(size: Size(0,20,),),
                Container(
                  alignment:Alignment.centerLeft,
                  child: Text("why ME", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900, fontSize:25,),),
                ),
                SizedBox(height: 5,),
                Container(
                  alignment:Alignment.centerLeft,
                  child: Text("You’re doing your best, but still things go wrong", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize:18,),),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 2,
                        height:2,
                        fit: BoxFit.contain,
                      ),

                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 4,
                        height:4,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 4,
                        height:4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 4,
                        height:4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 4,
                        height:4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  alignment:Alignment.centerLeft,
                  child: Text("why ME", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w900, fontSize:25,),),
                ),
                SizedBox(height: 5,),
                Container(
                  alignment:Alignment.centerLeft,
                  child: Text("You’re doing your best, but still things go wrong", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w400, fontSize:18,),),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 2,
                        height:2,
                        fit: BoxFit.contain,
                      ),

                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 4,
                        height:4,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 4,
                        height:4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 4,
                        height:4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        'lib/assets/images/Instagram.png',
                        width: 4,
                        height:4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}