import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              debugPrint('Logout clicked');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                const CircleAvatar(
                  radius: 36,
                  backgroundImage: NetworkImage(
                    'assets/idpic.jpg',
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Daniel Cott L. Gerarman',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'ID: 546-010',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      'BSCS 4TH YEAR',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.black87),
                    title: Text('d.gerarman.546010@umindanao.edu.ph'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.black87),
                    title: Text('+63 912 345 6789'),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.black87),
                    title: Text('Toril, Davao City, Philippines'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Subjects',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            _buildSubjectCard(
              subject: 'Mobile App Development',
              instructor: 'Instructor: Meljohn Aborde',
              schedule: 'Schedule: Mon/Wed 10:00 - 11:30 AM',
            ),
            _buildSubjectCard(
              subject: 'Database Systems',
              instructor: 'Instructor: Randy Ardeña',
              schedule: 'Schedule: Tue/Thu 1:00 - 2:30 PM',
            ),
            _buildSubjectCard(
              subject: 'Operating Systems',
              instructor: 'Instructor: Mary Iana Bennel Buisan',
              schedule: 'Schedule: Fri 8:00 - 11:00 AM',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Add Subject Clicked!');
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSubjectCard({
    required String subject,
    required String instructor,
    required String schedule,
  }) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.only(bottom: 10),
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subject,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                instructor,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                schedule,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
