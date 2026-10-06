import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Wrap each news card in padding to give horizontal scrolling breathing room
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 5, top: 10),
                  child: Stack(
                    children: [
                      // 1. Base Image Container
                      Container(
                        height: size.height / 4.5,
                        width: size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBB4LQTn0vRq4ydPLp-uTj_lEUHOHYWUU18JlCq5KuMw&s=10",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // 2. Dark Overlay Layer for Readability
                      Container(
                        height: size.height / 4.5,
                        width: size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.black38, // Slightly darkened for better contrast
                            borderRadius: BorderRadius.circular(20)),
                      ),

                      // 3. News Title Text
                      Positioned(
                        bottom: 45,
                        left: 20,
                        right: 70, // Prevents text from clashing into the play button
                        child: const Text(
                          "L5 PCPS news  news news happy dashain...",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),

                      // 4. Date Text
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: const Text(
                          "September 30, 2026",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),

                      // 5. Responsive Play Icon
                      const Positioned(
                        bottom: 18,
                        right: 20, // Clean dynamic alignment relative to the right side
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),

                // Example of a second card to test horizontal scrolling
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 15, top: 10),
                  child: Container(
                    height: size.height / 4.5,
                    width: size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text("Second News Card Placeholder", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
