import 'package:flutter/material.dart';
import 'package:ntue_manager_files_function/model/note.dart';

class FilesPage extends StatefulWidget {
  const FilesPage({super.key});

  @override
  State<FilesPage> createState() => _FilesPageState();
}

class _FilesPageState extends State<FilesPage>
{
  String option = sampleNotes[0].title;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
        backgroundColor: Colors.grey.shade900,
        body: Padding
          (
            padding: const EdgeInsetsDirectional.symmetric(vertical: 25, horizontal: 20,),
            child: Column
              (
                children:
                [
                  SizedBox(height: 30,),
                  Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        IconButton
                          (
                            onPressed: ()
                            {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back, size: 40, color: Colors.white,),
                          ),

                        IconButton(onPressed: (){}, icon: Icon(Icons.add, size: 40, color: Colors.white),),
                      ],
                    ),
                ],
              ),
          )
    );
  }
}
