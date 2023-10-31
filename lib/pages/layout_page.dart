import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

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
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1/0.7,
                viewportFraction: 0.7,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 1),
                autoPlayAnimationDuration: const Duration(seconds: 1)
              ),
              items: imgList.map((item) => Container(
                color: Colors.green,
                child: Image.network(
                  item,
                  fit: BoxFit.cover,
                ),
              )).toList(),
            ),
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