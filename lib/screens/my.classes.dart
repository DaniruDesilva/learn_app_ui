import 'package:flutter/material.dart';
import 'package:learn_app_ui/Models/class_model.dart';

class MyClasses extends StatefulWidget {
  const MyClasses({super.key});

  @override
  State<MyClasses> createState() => _MyClassesState();
}

class _MyClassesState extends State<MyClasses> {
  List<ClassModel> classes = [
    ClassModel(
        name: "Mathematics",
        image:
            'https://infinitylearn.com/surge/wp-content/uploads/2021/12/MicrosoftTeams-image-58.jpg',
        studentCount: 200),
    ClassModel(
        name: "Music",
        image:
            'https://yt3.googleusercontent.com/ytc/AIdro_ncLmriXl7dvTuG5JPrtJiESaqjVlmadKc3m9Gwaw=s900-c-k-c0x00ffffff-no-rj',
        studentCount: 150),
    ClassModel(
        name: "Art",
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQjHIzfpj-4TrldpfhJ7-R3WAu6CuvaSZGcb21PmEgOA&s',
        studentCount: 375)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
        BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people_outlined), label: "Account")
      ]),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "My Classes",
          style: TextStyle(
              color: Colors.purple, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.purple,
        ),
      ),
      body: ListView.builder(
          itemCount: classes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(classes[index].image)),
              title: Text(classes[index].name),
              subtitle: Text('Student Count - ${classes[index].studentCount}'),
            );
          }),
    );
  }
}
