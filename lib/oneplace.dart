import 'package:first/casedetails.dart';
import 'package:flutter/material.dart';

class Oneplace extends StatefulWidget {
  const Oneplace({super.key});

  @override
  State<Oneplace> createState() => _OneplaceState();
}

class _OneplaceState extends State<Oneplace> {
  bool isLoading = false;

  void navigateToonecasedetails() async {
    setState(() {
      isLoading = true; // Show Loader
    });

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      isLoading = false; // Hide Loader
    });
    print("Searching");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Casedetails()),
    );
  }

  String? selectedK;
  List<String> kOptions = ['Manjeet', 'Ankit', 'pyar', 'Mohabbat', 'Dil'];

  String? type;
  List<String> typeoption = ['1', '2', '3', '4', '5'];

  String? name;
  List<String> typename = ['yaad', 'Nhi', 'areha', 'ho', 'tum'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text('Case'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: 380,
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(3, 3),
                  ),
                ],
              ),

              child: Column(
                children: [
                  Text(
                    "Add Case",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),

                  SizedBox(height: 40),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Select Value",
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    value: selectedK,
                    hint: Text("Select Case Number"),
                    items: kOptions.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedK = newValue;
                      });
                    },
                  ),

                  SizedBox(height: 30),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Select Type",
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    value: type,
                    items: typeoption.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        type = newValue;
                      });
                    },
                  ),

                  SizedBox(height: 30),

                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Select Type",
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    value: name,
                    items: typename.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        name = newValue;
                      });
                    },
                  ),

                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: navigateToonecasedetails,
                        child: Text("Search"),

                      ),
                      ElevatedButton(
                        onPressed: () {
                          print("Reset All");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF7B7B),foregroundColor: Color(0xFFFFFFFF),
                        ),
                        child: Text("Reset"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          //    FULL SCREEN PREMIUM DESIGN LOADER
          if (isLoading) ...[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black54, // Background blur
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 12,
                        spreadRadius: 1,
                        offset: Offset(0, 4),
                      )
                    ],
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 45,
                        height: 45,
                        child: CircularProgressIndicator(
                          strokeWidth: 4,
                          color: Colors.blueAccent,
                        ),
                      ),

                      SizedBox(height: 18),

                      Text(
                        "Processing...",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),

                      SizedBox(height: 6),

                      Text(
                        "Please wait",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ],
      ),
    );
  }
}
