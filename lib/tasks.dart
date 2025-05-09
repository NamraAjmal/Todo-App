// import 'package:shared_preferences/shared_preferences.dart';

// import 'package:flutter/material.dart';

// List<String> tasks = [];
// List<bool> taskChecked = [];

// class Tasks extends StatefulWidget {
//   const Tasks({super.key});

//   @override
//   State<Tasks> createState() => _TasksState();
// }

// class _TasksState extends State<Tasks> {
//   final TextEditingController _taskController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Tasks",
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
//           ),
//         ),
//         body: tasks.isEmpty
//             ? const Center(
//                 child: Text(
//                   "No tasks yet!",
//                   style: TextStyle(
//                     fontSize: 50,
//                     color: Colors.grey,
//                     fontStyle: FontStyle.italic,
//                   ),
//                 ),
//               )
//             : ListView.builder(
//                 itemCount: tasks.length,
//                 itemBuilder: (context, index) => Card(
//                   shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.zero),
//                   elevation: 3,
//                   child: ListTile(
//                     leading: taskChecked[index]
//                         ? const Icon(Icons.check_box, color: Colors.green)
//                         : const Icon(Icons.square_outlined, color: Colors.grey),
//                     title: Text(
//                       tasks[index],
//                       style: TextStyle(
//                         fontStyle: taskChecked[index]
//                             ? FontStyle.italic
//                             : FontStyle.normal,
//                         decoration: taskChecked[index]
//                             ? TextDecoration.combine(
//                                 [TextDecoration.lineThrough])
//                             : TextDecoration.none,
//                       ),
//                     ),
//                     trailing: IconButton(
//                       onPressed: () {
//                         showDialog(
//                           context: context,
//                           builder: (BuildContext context) {
//                             return AlertDialog(
//                               title: const Text("Delete Task"),
//                               content: const Text(
//                                   "Are you sure you want to delete this task?"),
//                               actions: [
//                                 TextButton(
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   },
//                                   child: const Text(
//                                     "Cancel",
//                                     style: TextStyle(color: Colors.blue),
//                                   ),
//                                 ),
//                                 TextButton(
//                                   onPressed: () {
//                                     setState(() {
//                                       tasks.removeAt(index);
//                                       taskChecked.removeAt(index);
//                                     });
//                                     Navigator.pop(context);
//                                   },
//                                   child: const Text(
//                                     "Delete",
//                                     style: TextStyle(color: Colors.red),
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                       icon: const Icon(Icons.delete_forever_outlined),
//                       color: Colors.red,
//                     ),
//                     onTap: () {
//                       setState(() {
//                         taskChecked[index] = !taskChecked[index];
//                       });
//                     },
//                   ),
//                 ),
//               ),
//         bottomNavigationBar: BottomAppBar(
//           color: Colors.transparent,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 8.0),
//                 child: Transform.translate(
//                   offset: const Offset(0, -20),
//                   child: IconButton(
//                     onPressed: () {
//                       showModalBottomSheet(
//                         context: context,
//                         isScrollControlled: true, // Important fix
//                         builder: (context) => Padding(
//                           padding: EdgeInsets.only(
//                             bottom: MediaQuery.of(context).viewInsets.bottom,
//                           ),
//                           child: Container(
//                             padding: const EdgeInsets.all(16),
//                             height: 250,
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 TextField(
//                                   autofocus: true,
//                                   controller: _taskController,
//                                   cursorColor: Colors.blue,
//                                   decoration: const InputDecoration(
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide:
//                                           BorderSide(color: Colors.blue),
//                                     ),
//                                     labelText: 'Enter your task',
//                                     labelStyle: TextStyle(
//                                       color: Colors.grey,
//                                     ),
//                                     border: OutlineInputBorder(),
//                                   ),
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Expanded(
//                                       child: ElevatedButton(
//                                         onPressed: () {
//                                           if (_taskController.text.isNotEmpty) {
//                                             setState(() {

//                                               tasks.add(_taskController.text);
//                                               taskChecked.add(false);
//                                             });
//                                             _taskController.clear();
//                                             Navigator.pop(context);
//                                           }
//                                         },
//                                         child: const Text(
//                                           "Save",
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 20),
//                                         ),
//                                         style: ElevatedButton.styleFrom(
//                                           backgroundColor: Colors.blue,
//                                           shape: const RoundedRectangleBorder(
//                                             borderRadius: BorderRadius.zero,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(width: 10),
//                                     Expanded(
//                                       child: ElevatedButton(
//                                         onPressed: () {
//                                           _taskController.clear();
//                                           Navigator.pop(context);
//                                         },
//                                         child: const Text(
//                                           "Cancel",
//                                           style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 20),
//                                         ),
//                                         style: TextButton.styleFrom(
//                                           backgroundColor: Colors.blue,
//                                           shape: const RoundedRectangleBorder(
//                                             borderRadius: BorderRadius.zero,
//                                           ),
//                                         ),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                     icon: const Icon(Icons.add_circle),
//                     color: Colors.blue,
//                     iconSize: 60,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

List<String> tasks = [];
List<bool> taskChecked = [];

class Tasks extends StatefulWidget {
  const Tasks({super.key});

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  void initState() {
    super.initState();
    LoadTasks();
  }

  final TextEditingController _taskController = TextEditingController();
  Future<void> saveTasks() async {
    final perfs = await SharedPreferences.getInstance();
    perfs.setStringList('tasks', tasks);
    perfs.setStringList(
        'taskChecked', taskChecked.map((e) => e ? '1' : '0').toList());
  }

  Future<void> LoadTasks() async {
    final perfs = await SharedPreferences.getInstance();
    List<String>? storedTasks = perfs.getStringList('tasks');
    List<String>? storedChecks = perfs.getStringList('taskChecked');
    if (storedTasks != null && storedChecks != null) {
      setState(() {
        tasks = storedTasks;
        taskChecked = storedChecks.map((e) => e == '1').toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tasks",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
        body: tasks.isEmpty
            ? const Center(
                child: Text(
                  "No tasks yet!",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) => Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                  elevation: 3,
                  child: ListTile(
                    leading: taskChecked[index]
                        ? const Icon(Icons.check_box, color: Colors.green)
                        : const Icon(Icons.square_outlined, color: Colors.grey),
                    title: Text(
                      tasks[index],
                      style: TextStyle(
                        fontStyle: taskChecked[index]
                            ? FontStyle.italic
                            : FontStyle.normal,
                        decoration: taskChecked[index]
                            ? TextDecoration.combine(
                                [TextDecoration.lineThrough])
                            : TextDecoration.none,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Delete Task"),
                              content: const Text(
                                  "Are you sure you want to delete this task?"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      tasks.removeAt(index);
                                      taskChecked.removeAt(index);
                                      saveTasks();
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Delete",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.delete_forever_outlined),
                      color: Colors.red,
                    ),
                    onTap: () {
                      setState(() {
                        taskChecked[index] = !taskChecked[index];
                        saveTasks();
                      });
                    },
                  ),
                ),
              ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Transform.translate(
                  offset: const Offset(0, -20),
                  child: IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true, // Important fix
                        builder: (context) => Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            height: 250,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextField(
                                  autofocus: true,
                                  controller: _taskController,
                                  cursorColor: Colors.blue,
                                  decoration: const InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                    ),
                                    labelText: 'Enter your task',
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (_taskController.text.isNotEmpty) {
                                            setState(() {
                                              tasks.add(_taskController.text);
                                              taskChecked.add(false);
                                              saveTasks();
                                            });
                                            _taskController.clear();
                                            Navigator.pop(context);
                                          }
                                        },
                                        child: const Text(
                                          "Save",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          _taskController.clear();
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Cancel",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.add_circle),
                    color: Colors.blue,
                    iconSize: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
