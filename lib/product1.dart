import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'widget/ChooseBin.dart';
import 'widget/TypeTrash.dart';

import 'models/Category.dart';

class product extends StatelessWidget {
  final Category? selectedCategory;

  const product({
    Key? key,
    this.selectedCategory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOGO',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

//widget.selectedCategory!.image.toString()
class MyHomePage extends StatefulWidget {
  final Category? selectedCategory;

  const MyHomePage({
    Key? key,
    this.selectedCategory,
  }) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => {Navigator.pop(context)},
        ),
        title: const Text("LOGO"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite_border_outlined),
            onPressed: () => print('favorite button'),
          ),
          IconButton(
              icon: const Icon(Icons.format_align_left), onPressed: () {}),
        ],
        backgroundColor: Colors.grey[300],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.grey[300],
            child: const Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'How to',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      'แยก...',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: const Icon(Icons.send_outlined),
              color: Colors.green,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Save Success'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 3),
                  ),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Image.asset(
                  'assets/dettol.png',
                  width: 150,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '8 850 3600 33321',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Dettol Multi Surface Disinfectant Spray',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ChooseBin();
                  },
                );
              },
              child: Container(
                width: 125,
                height: 125,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.grey.shade300,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ Builder(builder: (context){
                    if(widget.selectedCategory != null){
                      return Image.asset(
                        widget.selectedCategory!.image
                      );
                    }
                    else {
                      return Column(
                        children: [
                          Icon(
                            Icons.delete_outline,
                            color: Colors.green,
                          ),
                          Text(
                            'เลือกถังขยะ',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      );
                    }
                  }),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                child: Container(
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        child: Divider(
                          height: 0,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      // if (showPattern)
                      Positioned(
                        top: -20,
                        child: SizedBox(
                          width: 125,
                          child: Image.asset('assets/เพิ่มขยะ.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 125,
                          height: 125,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.upload,
                                color: Colors.green,
                              ),
                              Text(
                                'อัปโหลดภาพ',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.navigate_next, size: 35, color: Colors.green),
                    Icon(Icons.navigate_next, size: 35, color: Colors.green),
                    Expanded(
                      child: TypeTrash(),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.edit_outlined, color: Colors.green, size: 25),
                    Expanded(
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          hintText:
                              'เขียนคำแนะนำ เช่น ฝาสามารถบริจาคให้ N15 Technology ได้',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}
