import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Url Launcher Example'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    //Here we can write function for opening url-
                    launchUrl(
                      Uri.parse('https://siamahnaf.com'),
                    );
                  },
                  child: const Text(
                    'Click me for opening External Url',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                //We can open email app, sms app, phone app as well as. I am showing you step by step.
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    //
                    launchUrl(
                      Uri.parse('mailto:mail@siamahnaf.com'),
                    );
                  },
                  child: const Text(
                    'Open Email App',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                //For Opening SMS app
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    launchUrl(
                      Uri.parse('sms:+8801521744654'),
                    );
                  },
                  child: const Text(
                    'Open SMS App',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                //For Opening Telephone App-

                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {
                    launchUrl(
                      Uri.parse('tel:+8801521744654'),
                    );
                  },
                  child: const Text(
                    'Open Tell App',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
