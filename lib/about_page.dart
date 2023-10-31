import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {

  const AboutPage({
    super.key,
  });

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  final nameController = TextEditingController();
  final batchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final parameter = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    nameController.text = parameter['name'];
    batchController.text = parameter['batch'];
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    nameController.dispose();
    batchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
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
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: batchController,
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
                  'batch': batchController.text,
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