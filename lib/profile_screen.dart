import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [
              const SizedBox(height: 30),

              const CircleAvatar(
                radius: 55,
                child: Icon(
                  Icons.person,
                  size: 60,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Student Profile',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Name'),
                subtitle: Text('ren'),
              ),

              const ListTile(
                leading: Icon(Icons.school),
                title: Text('Role'),
                subtitle: Text('Student'),
              ),

              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('ren@gmail.com'),
              ),

              const SizedBox(height: 20),

              FilledButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}