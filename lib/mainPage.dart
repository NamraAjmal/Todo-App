import 'package:flutter/material.dart';
import 'package:to_do_app/tasks.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWideScreen = constraints.maxWidth > 800;

          return SafeArea(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(16),
                constraints: const BoxConstraints(maxWidth: 1000),
                child: Column(
                  children: [
                    // IMAGE
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.5, // 55% of screen height
                      width: double.infinity, // Full width of the screen
                      child: Image.asset(
                        'assets/ChatGPT Image Apr 14, 2025, 05_25_26 PM.png', // Replace with your image asset path
                        fit: BoxFit
                            .cover, // Ensures the image stretches and covers the space
                      ),
                    ),

                    const SizedBox(height: 24),

                    // TITLE
                    Padding(
                      padding: const EdgeInsets.only(top: 17.0),
                      child: Text(
                        "To-Do List",
                        style: TextStyle(
                          fontSize: isWideScreen ? 36 : 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // DESCRIPTION
                    Center(
                      child: Container(
                        child: Text(
                          "Stay organized and boost your productivity with this simple and intuitive to-do app. Quickly add tasks, set priorities, and check off your accomplishments—all in one place. Your day, your goals, your control.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: isWideScreen ? 18 : 14,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ),

                    const Spacer(),

                    // BUTTON
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Tasks()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize: Size(
                            isWideScreen
                                ? constraints.maxWidth * 0.5
                                : constraints.maxWidth * 0.9,
                            50,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Get Started!",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
