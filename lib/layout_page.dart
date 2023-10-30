import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout'),
      ),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        child: ListView(
          reverse: false,
          children: [
            GridView.count(
              childAspectRatio: 5/7,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              padding: const EdgeInsets.all(16),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: List.generate(20, (index) => const ContainerItem(
                width: 30,
                height: 10,
              ))
            ),
            ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Text('ListView Builder');
              }
            ),
            ListView(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(7, (index) => const Text('ListView')),
            ),
            ListView(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              children: const [
                ContainerItem(
                  width: 10,
                  height: 10,
                ),
                ContainerItem(
                  width: 60,
                  height: 10,
                ),
                ContainerItem(
                  width: 30,
                  height: 10,
                ),
              ],
            ),
            const ContainerItem(
              width: 180,
              height: 30,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  ContainerItem(
                    width: 30,
                    height: 10,
                  ),
                  ContainerItem(
                    width: 60,
                    height: 50,
                  ),
                  ContainerItem(
                    width: 80,
                    height: 10,
                  ),
                  ContainerItem(
                    width: 30,
                    height: 10,
                  ),
                  ContainerItem(
                    width: 60,
                    height: 50,
                  ),
                  ContainerItem(
                    width: 80,
                    height: 10,
                  ),
                ],
              ),
            ),
            const ContainerItem(
              width: 140,
              height: 70,
            ),
            const ContainerItem(
              width: 140,
              height: 70,
            ),
            const ContainerItem(
              width: 140,
              height: 70,
            ),
            const SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ContainerItem(
                    width: 10,
                    height: 10,
                  ),
                  ContainerItem(
                    width: 60,
                    height: 10,
                  ),
                  ContainerItem(
                    width: 30,
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerItem extends StatelessWidget {

  final double? width;
  final double? height;

  const ContainerItem({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: SizedBox(
        width: width,
        height: height,
      ),
    );
  }
}