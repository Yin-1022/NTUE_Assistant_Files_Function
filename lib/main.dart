import 'package:flutter/material.dart';
import 'package:ntue_manager_files_function/view/home_page.dart';

void main()
{
  runApp(const AddFilesFunction());
}

class AddFilesFunction extends StatefulWidget {
  const AddFilesFunction({super.key});

  @override
  State<AddFilesFunction> createState() => _NoteFunction();
}

class _NoteFunction extends State<AddFilesFunction>
{
  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp
      (
      home: HomePage(),
    );
  }
}
