import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.icon,
    required this.color,
    required this.title,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final Color color;

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  double width = 0.0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (a) {
        setState(() {
          width = 180;
        });
      },
      onExit: (a) {
        setState(() {
          width = 0;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.zero,
            width: 50,
            height: 50,
            color: widget.color,
            child: Icon(
              widget.icon,
              color: Colors.white,
              size: 32,
            ),
          ),
          const VerticalDivider(
            color: Colors.white,
            width: 3,
          ),
          AnimatedContainer(
            curve: Curves.easeIn,
            padding: const EdgeInsets.only(right: 5),
            duration: const Duration(milliseconds: 500),
            color: widget.color,
            width: width,
            height: 50,
            child: Expanded(
              child: Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
