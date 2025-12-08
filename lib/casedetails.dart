import 'package:flutter/material.dart';

class Casedetails extends StatefulWidget {
  const Casedetails({super.key});

  @override
  State<Casedetails> createState() => _CasedetailsState();
}

class _CasedetailsState extends State<Casedetails> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Title
              Text(
                "Case Details",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              SizedBox(height: 12),

              /// Paragraph
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                    "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  height: 1.6,
                ),
              ),

              SizedBox(height: 25),

              /// 🔽 Case Card
              _caseCard("Gupta brother,", "Cj","Amrit pal","ittem 2","for bail"),

            ],
          ),
        ),
      ),
    );
  }
  /// 🔹 CARD WIDGET SEPARATED
  Widget _caseCard(String title,String court,String judge,String item,String purpose ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 14),
                children: [
                  TextSpan(
                      text: 'Court: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Delhi High Court (Court #41)'),
                ],
              ),
            ),

            SizedBox(height: 4),

            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 14),
                children: [
                  TextSpan(
                      text: 'Judge: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Justice Jasmeet Singh'),
                ],
              ),
            ),

            SizedBox(height: 4),

            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black87, fontSize: 14),
                children: [
                  TextSpan(
                      text: 'Item: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '95 | '),
                  TextSpan(
                      text: 'Purpose: ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Preliminary Hearing'),
                ],
              ),
            ),

            SizedBox(height: 12),

            Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.blue,
                child: Icon(Icons.arrow_forward,
                    color: Colors.white, size: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
