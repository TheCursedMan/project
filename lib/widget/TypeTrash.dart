import 'package:flutter/material.dart';

class TypeTrash extends StatefulWidget{
  @override
  _TypeTrashState createState() => _TypeTrashState();
}

class _TypeTrashState extends State<TypeTrash>{
  String selectedTrash = '';

  void _showTrashSelectionPopup() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          // Build your bin selection UI here
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey, width: 1),),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'เลือกประเภทขยะ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(width: 80,),
                    Expanded(
                      child: TextButton(
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_circle_outline, color: Colors.green,),
                            Text('เพิ่มประเภทขยะ', style: TextStyle(color: Colors.green),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Center(
                  child: Text('ขวดน้ำใส PET', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'ขวดน้ำใส PET';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('ถุงฟิล์มยืด PE', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'ถุงฟิล์มยืด PE';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('พลาสติกแข็ง HDPE', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'พลาสติกแข็ง HDPE';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('ฟิล์มหด PVC', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'ฟิล์มหด PVC';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('พลาสติกยืดหยุ่น LDPE', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'พลาสติกยืดหยุ่น LDPE';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('พลาสติกเหนียว PP', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'พลาสติกเหนียว PP';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('กระป๋องอลูมิเนียม', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'กระป๋องอลูมิเนียม';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('กระป๋องเหล็กสังกะสี', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'กระป๋องเหล็กสังกะสี';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('กระดาษเคลือบพลาสติก', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'กระดาษเคลือบพลาสติก';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),

              ListTile(
                title: Center(
                  child: Text('พลาสติกกรอบ', textAlign: TextAlign.center),
                ),
                onTap: () {
                  setState(() {
                    selectedTrash = 'พลาสติกกรอบ';
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context){
    bool isSelected = selectedTrash.isNotEmpty;
    return Expanded(
      child: InkWell(
        onTap: () {
          _showTrashSelectionPopup();
        },
        child: Container(
          width: 125,
          height: 125,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: isSelected ? Colors.green : Colors.transparent,
              border: Border.all(
                color: isSelected ? Colors.white : Colors.grey.shade300,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12)
          ),
          child: isSelected
              ? Center(
            child: Text(
              selectedTrash,
              style: TextStyle(color: Colors.white),
            ),
          )
              : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_circle_outline, color: Colors.green,),
              Text('เลือกประเภทขยะ', style: TextStyle(color: Colors.green),),
            ],
          ),
        ),
      ),
    );
  }
}

