import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color kColorBackgroundDefault = const Color(0xFF454755);

class SwitchButtonItem {
  ValueKey? key;
  String? title;
  Widget? content;
  SwitchButtonItem({
    this.title,
    this.content,
    this.key,
  });
}

class SwitchButtonWidget extends StatefulWidget {
  final Function(SwitchButtonItem)? onChange;
  final List<SwitchButtonItem>? items;
  final Color? colorBackground;

  const SwitchButtonWidget({
    super.key,
    this.onChange,
    this.items,
    this.colorBackground,
  });

  @override
  SwitchButtonWidgetState createState() => SwitchButtonWidgetState();
}

class SwitchButtonWidgetState extends State<SwitchButtonWidget> {
  Map<int, Widget> _widgetItem = {};
  int? _indexSelect = 0;

  @override
  void initState() {
    super.initState();

    final items = [];
    // ignore: avoid_function_literals_in_foreach_calls
    widget.items!.forEach((element) {
      items.add(
        Text(
          element.title!,
          style: const TextStyle(color: Colors.white),
        ),
      );
    });
    _widgetItem = List<Widget>.from(items).asMap();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 400,
          child: CupertinoSlidingSegmentedControl<int>(
            backgroundColor: widget.colorBackground ?? kColorBackgroundDefault,
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            thumbColor: Theme.of(context).colorScheme.secondary,
            children: _widgetItem,
            onValueChanged: (index) {
              setState(() {
                _indexSelect = index;
              });
            },
            groupValue: _indexSelect,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: widget.items![_indexSelect!].content,
        )
      ],
    );
  }
}
