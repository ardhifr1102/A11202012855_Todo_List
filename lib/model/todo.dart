// Firebase Collection Document ID: RHedGqRhlehYMeEHCOHjRHedGqRhlehYMeEHCOHj

class Todo {
  final String uid;
  final String nama;
  final String deskripsi;
  final bool done;

  Todo({
    required this.uid,
    required this.nama,
    required this.deskripsi,
    required this.done,
  });

  // static List<Todo> dummyData = [
  //   Todo("Latihan Menggambar", "Latihan perlombaan menggambar"),
  //   Todo("Makan Malam", "Makan malam bersama camer", done: true),
  //   Todo("Bernyanyi bersama", "Bernyanyi bersama teman-teman"),
  // ];

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'nama': nama,
  //     'deskripsi': deskripsi,
  //     'done': done
  //   };
  // }

  // factory Todo.fromMap(Map<String, dynamic> map) {
  //   return Todo(
  //     map['nama'] as String,
  //     map['deskripsi'] as String,
  //     done: map['done'] == 0 ? false : true,
  //     id: map['id'],
  //   );
  // }
}
