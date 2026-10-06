import 'package:flutter/material.dart';

import 'detail_screen.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        title: const Text('Button Gallery'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Profile',
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),

      // BODY
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(12, 10, 12, 90),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [


              const Text(
                'Material Buttons',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),


              const SizedBox(height: 22),
              // NAVIGATION BUTTONS

              const Text(
                'Navigation Buttons',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Elevated Button
              ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailsScreen(),
                    ),
                  );
                },
                child: const Text('Open Details'),
              ),

              const SizedBox(height: 8),

              // Filled Button
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                child: const Text('Profile'),
              ),

              const SizedBox(height: 8),

              // Filled Tonal Button
              FilledButton.tonal(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: const Text('Settings'),
              ),

              const SizedBox(height: 20),

              // BASIC BUTTONS

              const Text(
                'Basic Buttons',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Outlined Button
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Outlined Button pressed'),
                    ),
                  );
                },
                child: const Text('Show Message'),
              ),

              const SizedBox(height: 5),

              // Text Button
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Text Button pressed'),
                    ),
                  );
                },
                child: const Text('Learn More'),
              ),

              const SizedBox(height: 20),

              // ICON BUTTON

              const Text(
                'Icon Buttons',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  tooltip: 'Favorite',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Added to favorites'),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 15),

              // BUTTON WITH ICON

              const Text(
                'Buttons With Icons',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Download started'),
                    ),
                  );
                },
                icon: const Icon(Icons.download),
                label: const Text('Download'),
              ),

              const SizedBox(height: 20),

              // CUSTOM STYLED BUTTON

              const Text(
                'Custom Styled Button',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // CUSTOM BUTTON
              SizedBox(
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Custom button pressed'),
                      ),
                    );
                  },
                  icon: const Icon(Icons.star),
                  label: const Text(
                    'Custom Button',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 4,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // -------------------------------------------------
              // ACCOUNT
              // -------------------------------------------------

              const Text(
                'Account',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              OutlinedButton.icon(
                onPressed: () {
                  // pushReplacementNamed returns to Login
                  Navigator.pushReplacementNamed(
                    context,
                    '/',
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout'),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),

      // FLOATING ACTION BUTTON

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/details',
          );
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}