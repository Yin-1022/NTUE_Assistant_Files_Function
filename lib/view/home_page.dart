import 'package:flutter/material.dart';
import 'package:ntue_manager_files_function/model/note.dart';
import 'package:ntue_manager_files_function/view/files_page.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 55,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Align
              (
                alignment: Alignment.topRight,
                child: IconButton
                (
                  icon: const Icon(Icons.folder, size: 40, color: Colors.white,),
                  onPressed: ()
                  {
                    setState(() {});
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const FilesPage()));
                  },
              ),
            ),
            Expanded
              (
                child: ListView.builder
                  (
                    itemCount: sampleNotes.length,
                    itemBuilder: (context, index)
                    {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: RichText(
                              text: TextSpan(
                                text: '${sampleNotes[index].title}\n',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                ),
                                children: [
                                  TextSpan(
                                    text: '${sampleNotes[index].content}\n',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                )
              )
            ],
          ),
       ),
    );
  }
}
