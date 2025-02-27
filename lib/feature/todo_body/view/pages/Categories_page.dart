import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/feature/todo_body/view/pages/provider.dart';
import 'package:todo/feature/todo_body/view/pages/settings_page.dart';
import 'package:todo/feature/todo_body/view/widgets/add_item_widget.dart';
import 'package:todo/feature/todo_body/view/widgets/item_container_widget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context);
    final itemCount = todoProvider.todos.length + 1;
    void openshowDialog() {
      String imogi = '';
      String title = '';
      String task = 'not add task';

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            shape: BeveledRectangleBorder(),
            content: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close_rounded, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '😍',
                    hintStyle: TextStyle(fontSize: 45),
                  ),
                  onChanged: (value) => imogi = value,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Title',
                    hintStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onChanged: (value) => title = value,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'task',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                  onChanged: (value) => task = value,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  if (title.isNotEmpty && task.isNotEmpty) {
                    todoProvider.addTodo(imogi, title, task);
                    // taskProvider.addTask({
                    //   'title': title,
                    //   'description': task,
                    //   'date': task,
                    // });
                    Navigator.of(context).pop(); // Close the dialog
                  }
                },
                child: Text('Add'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsPage();
                  },
                ),
              );
            },
            child: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage("assets/images/images.jpeg"),
            ),
          ),
        ),
        title: Center(
          child: const Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(right: 18),
              child: const Icon(Icons.search),
            ),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/images (1).jpeg",
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '"The memories is a shield and life helper."',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Alin Jose Perera',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                child: Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: itemCount,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return GestureDetector(
                          onTap: () => openshowDialog(),
                          child: AddItemWidget(),
                        );
                      }

                      final todo = todoProvider.todos[index - 1];
                      return ItemWidget(todo: todo);
                    },
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
