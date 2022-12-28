import 'package:flutter/material.dart';
import 'dart:io';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
   File ? _storedImage ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey),
          ),
          child: _storedImage != null ? Image.file(_storedImage!) : Center(child: const Text('No Image preview')),
        ),
        Expanded(
          child: InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.camera_alt) ,
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Take a Picture',style: TextStyle(color: Theme.of(context).primaryColor,),),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
