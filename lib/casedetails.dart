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
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text('Details'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 🔹 FIRST CARD (Your Case Details Text)
            Container(
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
                    offset: const Offset(3, 3),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Case Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                        "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 25),

                  _caseCard(
                    "Gupta brother",
                    "Cj",
                    "Amrit pal",
                    "item 2",
                    "for bail",
                  ),
                ],
              ),
            ),

            /// 🔹 SECOND CARD (Court No / Case No / VC Link)
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: const Offset(3, 3),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TOP ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Court No. 1",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Board Details",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    "W.P.(C) – 2093 / 2015",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    "IMPERIA STRUCTURE LTD & ORS Vs M/S AMBAWATTA BUILDWELL PVT LTD & ANR",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 14),

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.video_call,
                        size: 18, color: Colors.white),
                    label: const Text(
                      "VC Link",
                      style: TextStyle(
                          color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  /// 🔹 CARD WIDGET
  Widget _caseCard(
      String title, String court, String judge, String item, String purpose) {
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
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            _rich("Court: ", court),
            _rich("Judge: ", judge),
            _rich("Item: ", "$item   /   Purpose: $purpose"),

            const SizedBox(height: 12),

            Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.blue,
                child: const Icon(Icons.arrow_forward,
                    color: Colors.white, size: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rich(String bold, String normal) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(color: Colors.black87, fontSize: 14,height: 1.8,),
        children: [
          TextSpan(
              text: bold,
              style:
              const TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: normal),
        ],
      ),
    );
  }
}
