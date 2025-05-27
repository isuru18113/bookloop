import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Map<String, String>> books = [
    {
      'name': 'Book Name 1',
      'author': 'Author 1',
      'price': '\$10',
    },
    {
      'name': 'Book Name 2',
      'author': 'Author 2',
      'price': '\$15',
    },
    // Add more books if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'My Books'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          ],),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("BOOKLOOP"),
      actions: [
        IconButton(
            onPressed: (){


            }, icon: Icon(Icons.account_circle_rounded))
      ],),

      body: booklist(),

    );
  }

  Widget booklist(){

    return  ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return Card(
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                // Placeholder for Book Image
                Container(
                  width: 60,
                  height: 80,
                  color: Colors.grey[300],
                  child: Icon(Icons.book, size: 40),
                ),
                SizedBox(width: 10),
                // Book details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(book['name']!, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(book['author']!),
                      Text(book['price']!),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: () {
                          // Handle exchange
                        },
                        child: Text('Exchange', style: TextStyle(color: Colors.blue)),
                      ),
                    ],
                  ),
                ),
                // Buy Button
                ElevatedButton(
                  onPressed: () {
                    // Handle buy
                  },
                  child: Text('Buy'),
                )
              ],
            ),
          ),
        );
      },
    );

  }
}
