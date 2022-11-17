import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin, RestorationMixin {
  Size? size;
  Orientation? orientation;

  final RestorableInt _index = RestorableInt(0);
  TextEditingController? _controller1;
  TextEditingController? _controller2;
  TextEditingController? _controller3;
  TextEditingController? _controller4;
  TextEditingController? _controller5;
  TextEditingController? _controller6;
  FocusNode? _focusNode1;
  FocusNode? _focusNode2;
  FocusNode? _focusNode3;
  FocusNode? _focusNode4;
  FocusNode? _focusNode5;
  FocusNode? _focusNode6;

  @override
  void initState() {
    _controller1 = TextEditingController(text: "");
    _controller2 = TextEditingController(text: "");
    _controller3 = TextEditingController(text: "");
    _controller4 = TextEditingController(text: "");
    _controller5 = TextEditingController(text: "");
    _controller6 = TextEditingController(text: "");
    _focusNode1 = FocusNode();
    _focusNode2 = FocusNode();
    _focusNode3 = FocusNode();
    _focusNode4 = FocusNode();
    _focusNode5 = FocusNode();
    _focusNode6 = FocusNode();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    orientation = MediaQuery.of(context).orientation;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Add Recurring Post",
            style: TextStyle(color: Colors.white),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: MaterialLocalizations.of(context).backButtonTooltip,
              );
            },
          ),
          leadingWidth: 35,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10, 5.0),
                    child: Text(
                      "Write a post",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                            // border color
                            color: Colors.grey.shade300,
                            // border thickness
                            width: 2)),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {
                                    setState(() {
                                      _index.value = 0;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 3, bottom: 3),
                                    margin: const EdgeInsets.only(
                                        left: 1, right: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // Red border with the width is equal to 5
                                      border: Border.all(
                                          width: 1,
                                          color: _index.value != 0
                                              ? Colors.black
                                              : Colors.transparent),
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Original",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: _index.value != 0
                                                  ? Colors.black
                                                  : Colors.teal,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {
                                    setState(() {
                                      _index.value = 1;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    margin: const EdgeInsets.only(
                                        left: 1, right: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // Red border with the width is equal to 5
                                      border: Border.all(
                                          width: 1,
                                          color: _index.value != 1
                                              ? Colors.black
                                              : Colors.transparent),
                                    ),
                                    child: Icon(Icons.facebook_rounded,
                                        size: 22,
                                        color: _index.value != 1
                                            ? Colors.black
                                            : Colors.teal.shade300),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {
                                    setState(() {
                                      _index.value = 2;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    margin: const EdgeInsets.only(
                                        left: 1, right: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // Red border with the width is equal to 5
                                      border: Border.all(
                                          width: 1,
                                          color: _index.value != 2
                                              ? Colors.black
                                              : Colors.transparent),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.twitter,
                                      size: 22,
                                      color: _index.value != 2
                                          ? Colors.black
                                          : Colors.teal.shade300,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {
                                    setState(() {
                                      _index.value = 3;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    margin: const EdgeInsets.only(
                                        left: 1, right: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // Red border with the width is equal to 5
                                      border: Border.all(
                                          width: 1,
                                          color: _index.value != 3
                                              ? Colors.black
                                              : Colors.transparent),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.linkedinIn,
                                      size: 22,
                                      color: _index.value != 3
                                          ? Colors.black
                                          : Colors.teal.shade300,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {
                                    setState(() {
                                      _index.value = 4;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    margin: const EdgeInsets.only(
                                        left: 1, right: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // Red border with the width is equal to 5
                                      border: Border.all(
                                          width: 1,
                                          color: _index.value != 4
                                              ? Colors.black
                                              : Colors.transparent),
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.instagram,
                                      size: 22,
                                      color: _index.value != 4
                                          ? Colors.black
                                          : Colors.teal.shade300,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  splashColor: Theme.of(context).splashColor,
                                  onTap: () {
                                    setState(() {
                                      _index.value = 5;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    margin: const EdgeInsets.only(
                                        left: 1, right: 1),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      // Red border with the width is equal to 5
                                      border: Border.all(
                                          width: 1,
                                          color: _index.value != 5
                                              ? Colors.black
                                              : Colors.transparent),
                                    ),
                                    child: Icon(
                                      Icons.calendar_month,
                                      size: 22,
                                      color: _index.value != 5
                                          ? Colors.black
                                          : Colors.teal.shade300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: textView(),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(child: _previewImages()),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () async {
                      await pickPhotos();
                    },
                    color: Colors.white,
                    splashColor: Theme.of(context).splashColor,
                    tooltip: "Select Images",
                    icon: Icon(
                      Icons.camera_alt,
                      size: 24,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textView() {
    Widget? widget;
    switch (_index.value) {
      case 0:
        widget = Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                controller: _controller1!,
                focusNode: _focusNode1,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 3,
                decoration: InputDecoration(
                  hintText: "Write Here Something...",
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.teal.shade300,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
        break;
      case 1:
        widget = Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                controller: _controller2!,
                focusNode: _focusNode2,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 3,
                decoration: InputDecoration(
                  hintText: "Write Here Something...",
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.teal.shade300,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
        break;
      case 2:
        widget = Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                controller: _controller3!,
                focusNode: _focusNode3,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 3,
                decoration: InputDecoration(
                  hintText: "Write Here Something...",
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.teal.shade300,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
        break;
      case 3:
        widget = Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                controller: _controller4!,
                focusNode: _focusNode4,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 3,
                decoration: InputDecoration(
                  hintText: "Write Here Something...",
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.teal.shade300,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
        break;
      case 4:
        widget = Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                controller: _controller5!,
                focusNode: _focusNode5,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 3,
                decoration: InputDecoration(
                  hintText: "Write Here Something...",
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.teal.shade300,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
        break;
      case 5:
        widget = Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                controller: _controller6!,
                focusNode: _focusNode6,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                minLines: 3,
                decoration: InputDecoration(
                  hintText: "Write Here Something...",
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.teal.shade300,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
        break;
      default:
        widget = Container();
        break;
    }
    return widget;
  }

  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? _imageFileList = <XFile>[];
  dynamic _pickImageError;

  Future<void> pickPhotos() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      if (pickedfiles != null && _imageFileList!.length <= 10) {
        _imageFileList = pickedfiles;
        setState(() {});
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Max lintits of photos is 10. "),
        ));
        print("No image is selected.");
      }
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
      print("error while picking file.");
    }
  }

  Widget _previewImages() {
    if (_imageFileList != null && _imageFileList!.length <= 10) {
      return GridView.builder(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0))),
                margin: const EdgeInsets.only(
                    left: 5, right: 10, top: 10, bottom: 5),
                // padding: const EdgeInsets.only(left: 5, right: 10, top: 10,bottom: 5),

                child: Image.file(
                  File(_imageFileList![index].path),
                  height: 150,
                  width: size!.width,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: -14,
                top: -13,
                child: IconButton(
                  icon: Icon(Icons.cancel, size: 23, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      _imageFileList!.removeAt(index);
                    });
                  },
                ),
              )
            ],
          );
        },
        itemCount: _imageFileList!.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 0.0, mainAxisSpacing: 0.0),
      );
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return Container();
      return const Text(
        'You have not yet picked an image.',
        textAlign: TextAlign.center,
      );
    }
  }

  @override
  void dispose() {
    _controller1!.dispose();
    _controller2!.dispose();
    _controller3!.dispose();
    _controller4!.dispose();
    _controller5!.dispose();
    _controller6!.dispose();
    _focusNode1!.dispose();
    _focusNode2!.dispose();
    _focusNode3!.dispose();
    _focusNode4!.dispose();
    _focusNode5!.dispose();
    _focusNode6!.dispose();
    super.dispose();
  }

  @override
  // TODO: implement restorationId
  String? get restorationId => "homePageState";

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_index, "index");
  }
}
