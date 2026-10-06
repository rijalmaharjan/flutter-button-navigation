import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.info_outline,
                size: 70,
                color: Colors.indigo,
              ),

              const SizedBox(height: 20),

              const Text(
                'About This Application',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'This application demonstrates different '
                    'Material Design buttons and navigation '
                    'techniques in Flutter.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 30),

              const Card(
                child: Padding(
                  padding: EdgeInsets.all(20),

                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.touch_app),
                        title: Text('Material Buttons'),
                        subtitle: Text(
                          'Multiple button variants',
                        ),
                      ),

                      ListTile(
                        leading: Icon(Icons.navigation),
                        title: Text('Navigation'),
                        subtitle: Text(
                          'Push, Pop and Replacement',
                        ),
                      ),

                      ListTile(
                        leading: Icon(Icons.route),
                        title: Text('Named Routes'),
                        subtitle: Text(
                          'Organized screen navigation',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}