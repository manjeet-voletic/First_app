import 'package:first/Calendar.dart';
import 'package:first/learn.dart';
import 'package:flutter/material.dart';

class Workspace extends StatefulWidget {
  const Workspace({super.key});

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  bool isMenuOpen = false; // MENU OPEN / CLOSE STATE

  void navigateToCalenderPage(){
    print("button tapped");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CalendarPage()));
  }
  void navigateTolearnPage(){
    print("button tapped");
    Navigator.push(context, MaterialPageRoute(builder: (context)=>learn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          dashboardUI(), // MAIN DASHBOARD UI

          // ----------- TAP ANYWHERE TO CLOSE MENU -----------
          if (isMenuOpen)
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isMenuOpen = false; // CLOSE ON TAP
                  });
                },
                child: Container(
                  color: Colors.black45, // dim background
                ),
              ),
            ),

          sideMenuUI(), // LEFT MENU
        ],
      ),
    );
  }

  // ---------------------------------------------------------
  //                DASHBOARD SCREEN
  // ---------------------------------------------------------
  Widget dashboardUI() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            // TOP HEADER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // LOGO
                Container(
                  height: 55,
                  width: 140,
                  padding: EdgeInsets.all(4),
                  child: Image.asset(
                    "lib/assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),

                Row(
                  children: [
                    // PROFILE IMAGE
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                      AssetImage("lib/assets/images/profile.png"),
                    ),

                    const SizedBox(width: 15),

                    // NOTIFICATION
                    Stack(
                      children: [
                        Icon(Icons.notifications_none, size: 32),
                        Positioned(
                          right: 0,
                          top: -2,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              "5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(width: 15),

                    // MENU ICON
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isMenuOpen = !isMenuOpen;
                        });
                      },
                      child: Icon(Icons.menu, size: 32),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),

            Center(
              child: Column(
                children: [
                  Text(
                    "Good Morning Manjeet!",
                    style: TextStyle(
                      color: Color(0xFF004B8D),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Here's what your Ecourt Services are up to today.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            buildCaseCard(
              title: "Active Cases",
              count: "62",
              badgeText: "Active Case",
              badgeColor: Color(0xFFBDF8D0),
              borderColor: Colors.transparent,
              icon: Icons.edit_document,
              onTap:navigateToCalenderPage
            ),

            SizedBox(height: 20),

            buildCaseCard(
              title: "Total Hearing",
              count: "20",
              badgeText: "Hearings",
              badgeColor: Color(0xFFF8BBD0),
              borderColor: Colors.transparent,
              icon: Icons.description_outlined,
              onTap: navigateTolearnPage
            ),

            SizedBox(height: 20),

            buildCaseCard(
              title: "Total Recent Case",
              count: "15",
              badgeText: "Recent Cases",
              badgeColor: Color(0xFFFFECB3),
              borderColor: Colors.transparent,
              icon: Icons.file_copy_outlined,
            ),
            SizedBox(height: 20),

            buildCaseCard(
              title: "Total Recent Case",
              count: "15",
              badgeText: "Recent Cases",
              badgeColor: Color(0xFFFFECB3),
              borderColor: Colors.transparent,
              icon: Icons.file_copy_outlined,
            ),
            SizedBox(height: 20),

            buildCaseCard(
              title: "Total Recent Case",
              count: "15",
              badgeText: "Recent Cases",
              badgeColor: Color(0xFFFFECB3),
              borderColor: Colors.transparent,
              icon: Icons.file_copy_outlined,
            ),
            SizedBox(height: 20),

            buildCaseCard(
              title: "Total Recent Case",
              count: "15",
              badgeText: "Recent Cases",
              badgeColor: Color(0xFFFFECB3),
              borderColor: Colors.transparent,
              icon: Icons.file_copy_outlined,
            ),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------
  //           LEFT SLIDING SIDE MENU
  // ---------------------------------------------------------
  Widget sideMenuUI() {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      left: isMenuOpen ? 0 : -290,
      top: 110,
      bottom: 0,
      child: Container(
        width: 290,
        color: Color(0xFF0A2F66),
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.home, color: Colors.white),
                SizedBox(width: 10),
                Text("Dashboard",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),

            menuItem(Icons.dashboard, "My Workspace"),
            menuItem(Icons.travel_explore, "Court Search"),
            menuItem(Icons.add_box_outlined, "Add New Case"),
            menuItem(Icons.dashboard_customize, "Display Board"),
            menuItem(Icons.calendar_month, "Calendar"),
            menuItem(Icons.note_alt_outlined, "Report"),
            menuItem(Icons.groups, "Team Collaboration"),
            menuItem(Icons.receipt_long, "Create Invoice"),
            menuItem(Icons.payments_outlined, "Billing & Invoice"),
            menuItem(Icons.settings, "Setting"),
          ],
        ),
      ),
    );
  }

  // MENU ITEM WIDGET
  Widget menuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70, size: 22),
          SizedBox(width: 12),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 15)),
        ],
      ),
    );
  }

  // ---------------- CASE CARD ----------------
  Widget buildCaseCard({
    required String title,
    required String count,
    required String badgeText,
    required Color badgeColor,
    required Color borderColor,
    required IconData icon,
    bool isHighlighted = false,
    VoidCallback? onTap
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: borderColor,
            width: isHighlighted ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Icon(icon, size: 30, color: Colors.black87),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: badgeColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    badgeText,
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Text(
              count,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
