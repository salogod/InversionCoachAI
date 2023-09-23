import 'package:flutter/material.dart';

void main() {
  runApp(inicio());
}

Widget inicio() {
  return MaterialApp(
    home: Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            SliderViewSection(
              itemCount: 5,
            ),
            CircleSliderView(
              itemCount: 5,
            ),
            SquareSliderView(
              itemCount: 5,
            ),
          ],
        ),
      ),
    ),
  );
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight+35.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF047C57),
      title: Container(
        padding: EdgeInsets.symmetric(vertical: 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Buscar",
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
          ),
        ),
      ),
    );
  }
}

class HeaderSection extends StatefulWidget {
  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}


class _HeaderSectionState extends State<HeaderSection> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    _startAnimation();
  }

  void _startAnimation() {
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    _animation = Tween<double>(
      begin: 0.0,
      end: mediaQuery.size.width,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    return Container(
      color: Color(0xFFEC6344),
      height: 100,
      child: Center(
        child: Transform.translate(
          offset: Offset(_animation.value, 0.0),
          child: Text(
            'Mueve este texto de izquierda a derecha',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class SliderViewSection extends StatelessWidget {
  final int itemCount;

  SliderViewSection({required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                'Elemento $index',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CircleSliderView extends StatelessWidget {
  final int itemCount;

  CircleSliderView({required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return CircleSliderItem();
        },
      ),
    );
  }
}

class CircleSliderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Center(
        child: Text(
          'Círculo',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class SquareSliderView extends StatelessWidget {
  final int itemCount;

  SquareSliderView({required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return SquareSliderItem();
        },
      ),
    );
  }
}

class SquareSliderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
      child: Center(
        child: Text(
          'Cuadrado',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
