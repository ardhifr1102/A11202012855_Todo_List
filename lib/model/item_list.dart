import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:proyek_todolist/model/todo.dart';

class ItemList extends StatelessWidget {
  final String transaksiDocId;
  final Todo todo;
  const ItemList({super.key, required this.todo, required this.transaksiDocId});

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    CollectionReference todoCollection = _firestore.collection('Todos');
    TextEditingController _namaController = TextEditingController();
    TextEditingController _deskripsiController = TextEditingController();

    Future<void> deleteTodo() async {
      await _firestore.collection('Todos').doc(transaksiDocId).delete();
    }

    Future<void> updateTodo() async {
      await _firestore.collection('Todos').doc(transaksiDocId).update({
        'nama': _namaController.text,
        'deskripsi': _deskripsiController.text,
        'isComplete': false,
      });
    }

    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 6,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    todo.nama,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    todo.deskripsi,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              icon: Icon(
                todo.done ? Icons.check_box : Icons.check_box_outline_blank,
                color: todo.done ? Colors.blue : Colors.grey,
              ),
              onPressed: () {
                todoCollection.doc(transaksiDocId).update({
                  'done': !todo.done,
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                deleteTodo();
              },
            ),
          ],
        ),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Update Todo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller:
                      // ignore: unnecessary_null_comparison
                      todo.nama == null ? _namaController : _namaController
                        ..text = todo.nama,
                  decoration: InputDecoration(
                    hintText: 'Nama',
                  ),
                ),
                TextField(
                  // ignore: unnecessary_null_comparison
                  controller: todo.deskripsi == null
                      ? _deskripsiController
                      : _deskripsiController
                    ..text = todo.deskripsi,
                  decoration: InputDecoration(
                    hintText: 'Deskripsi',
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                child: const Text('Batalkan'),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: const Text('Update'),
                onPressed: () {
                  updateTodo();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
