import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo_c8/models/task_model.dart';

class FirebaseFunctions {

 static CollectionReference<TaskModel> getTaskCollection (){
   return FirebaseFirestore.instance.collection("tasks")
        .withConverter<TaskModel>(
        fromFirestore: (snapshot, _) => TaskModel.fromJson(snapshot.data()!),
        toFirestore: (task, options) => task.toJson()
    );
  }

 static Future<void> addTaskToFirestore(TaskModel task){
    var collection = getTaskCollection();
    var docRef = collection.doc();
    task.id = docRef.id;
   return docRef.set(task);
  }

  static Stream<QuerySnapshot<TaskModel>> getTasksFromFireStore (DateTime date) {
    var collection = getTaskCollection();
    return collection.where('date',isEqualTo:DateUtils.dateOnly(date).millisecondsSinceEpoch).snapshots();
  }
}