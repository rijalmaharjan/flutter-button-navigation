import 'package:flutter/material.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/details');
        },
        child: const Icon(Icons.add),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Material Buttons',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Different button styles and navigation actions',
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 25),

              const Text(
                'Basic Buttons',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              ElevatedButton(
                onPressed: () {
                  showMessage(context, 'Elevated Button pressed');
                },
                child: const Text('Elevated Button'),
              ),

              const SizedBox(height: 10),

              FilledButton(
                onPressed: () {
                  showMessage(context, 'Filled Button pressed');
                },
                child: const Text('Filled Button'),
              ),

              const SizedBox(height: 10),

              FilledButton.tonal(
                onPressed: () {
                  showMessage(context, 'Filled Tonal Button pressed');
                },
                child: const Text('Filled Tonal Button'),
              ),

              const SizedBox(height: 10),

              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: const Text('Settings'),
              ),

              const SizedBox(height: 10),

              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
                child: const Text('View Details'),
              ),

              const SizedBox(height: 25),

              const Text(
                'Buttons with Icons',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              IconButton(
                onPressed: () {
                  showMessage(context, 'Icon Button pressed');
                },
                icon: const Icon(Icons.favorite),
                iconSize: 32,
                tooltip: 'Favorite',
              ),

              const SizedBox(height: 10),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(Icons.person),
                label: const Text('Profile'),
              ),

              const SizedBox(height: 25),

              const Text(
                'Custom Button',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.indigo,
                      Colors.deepPurple,
                    ],
                  ),
                ),

                child: Material(
                  color: Colors.transparent,

                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      showMessage(
                        context,
                        'Custom Button pressed',
                      );
                    },

                    child: const Center(
                      child: Text(
                        'Custom Styled Button',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              FilledButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                icon: const Icon(Icons.settings),
                label: const Text('Settings'),
              ),

              const SizedBox(height: 15),

              OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/',
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}