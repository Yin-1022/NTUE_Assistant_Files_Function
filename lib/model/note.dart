class Note {
  int id;
  String title;
  String content;

  Note({
    required this.id,
    required this.title,
    required this.content,
  });
}


List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'First class',
    content:
    'Content of first class',
  ),
  Note(
    id: 1,
    title: 'Second class',
    content:
    '',
  ),
  Note(
    id: 2,
    title: 'Third class',
    content:
    '',
  ),
];