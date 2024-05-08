import 'package:flutter/material.dart';
import 'package:project/models/Category.dart';
import 'package:project/product1.dart';

class  ChooseBin extends StatefulWidget{
  @override
  _ChooseBinState createState() => _ChooseBinState();
}

class _ChooseBinState extends State<ChooseBin>{
  Category? selectedCategory;

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: Colors.white,
      child: Container(
        width: 200,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'เลือกถังขยะ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedCategory = categories[index];
                          print(selectedCategory?.image);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyHomePage(selectedCategory: selectedCategory)));
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            categories[index].image,
                            width: 100,
                            height: 100,
                            color: selectedCategory == categories[index] 
                                ? Colors.grey.withOpacity(0.5) 
                                : null,
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                  itemCount: categories.length
              ),
            ),
            if (selectedCategory != null)
              Column(
                children: [
                  SizedBox(height: 10,),
                  Text(
                    'Selected: ${selectedCategory?.title}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}