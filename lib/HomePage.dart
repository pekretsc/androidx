import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  double scrollpos = 0;
  final List<double> picChangeValues = [];
  int picIndex = 0;
  List images = [
    Image(
      image: AssetImage('dart-1943313_640.jpg'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('camp-4363073_640.png'),
      fit: BoxFit.cover,
    ),
    Image(
      image: AssetImage('plane-4301615_640.png'),
      fit: BoxFit.cover,
    ),
  ];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double maxScrollpercentage;
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();

    scrollController =
        ScrollController(initialScrollOffset: 0, keepScrollOffset: true)
          ..addListener(() {
            int oldIndex = widget.picIndex;
            widget.scrollpos = scrollController.offset;
            print(scrollController.offset.toString());
            if (widget.picChangeValues.length == 0) {
              widget.picIndex = 0;
            } else {
              widget.picIndex = 0;
              widget.picChangeValues.forEach((value) {
                if (widget.scrollpos > value) {
                  widget.picIndex++;
                }
              });
              if (widget.picIndex > widget.images.length) {
                widget.picIndex = widget.images.last;
              }
              if (oldIndex != widget.picIndex) {
                setState(() {});
              }
            }
          });
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          getImage(),
          Row(
            children: <Widget>[
              RaisedButton(
                  child: Text('AddPos'),
                  onPressed: () {
                    widget.picChangeValues.add(widget.scrollpos);
                  }),
              RaisedButton(child: Text('save to internal'), onPressed: () {}),
              RaisedButton(child: Text('Upload'), onPressed: () {}),
            ],
          ),
          Expanded(
              child: Container(
                  width: double.infinity,
                  child: Material(
                      child: ListView(
                    controller: scrollController,
                    children: <Widget>[
                      Text(
                          'Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo Hallo ')
                    ],
                  )))),
        ],
      ),
    );
  }

  getImage() {
    Widget displayedWidget = Container(
      height: 175,
      width: double.infinity,
      child: widget.images[widget.picIndex],
    );

    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      transitionBuilder: (Widget child, Animation<double> animation) =>
          ScaleTransition(
        scale: animation,
        child: child,
      ),
      child: displayedWidget,
    );
  }
}
