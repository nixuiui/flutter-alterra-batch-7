import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({
    super.key,
  });

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {

  final nameController = TextEditingController();

  @override
  void didChangeDependencies() {
    final parameter = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    nameController.text = parameter['name'];
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Member'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Nama'
                ),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {
                  'name': nameController.text,
                });
              }, 
              child: const Text('Simpan')
            ),
          ],
        ),
      ),
    );
  }
}