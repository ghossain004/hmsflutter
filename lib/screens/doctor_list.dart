import 'package:flutter/material.dart';

class DoctorListScreen extends StatefulWidget {
  // const DoctorListScreen({Key? key}) : super(key: key);

  @override
  State<DoctorListScreen> createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  final List<Map<String, dynamic>> _allDoctors = [
    {
      "id": 1,
      "name": "Dr. Mahabub Mia",
      "des": "Co-founder & CEO @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 2,
      "name": "Dr. Golam Mia",
      "des": "GestroLiver & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 3,
      "name": "Dr. Minhaj Mia",
      "des:": "Gynocologist & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 4,
      "name": "Dr. Zkbon Mia",
      "des": "Neuromedicine & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 5,
      "name": "Dr. Mamun Mia",
      "des": "Co-founder & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 6,
      "name": "Dr. Rakib Mia",
      "des": "Co-founder & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 7,
      "name": "Dr. Din Mia",
      "des": "Co-founder & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 8,
      "name": "Dr. Nokib Mia",
      "des": "Co-founder & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 9,
      "name": "Dr. Kawser Mia",
      "des": "Co-founder & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
    {
      "id": 10,
      "name": "Dr. Enamul Mia",
      "des": "Co-founder & sergeon @",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU",
    },
  ];
  List<Map<String, dynamic>> _foundDoctors = [];

  @override
  initState() {
    // TODO: implement initState
    _foundDoctors = _allDoctors;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allDoctors;
    } else {
      results = _allDoctors
          .where((doctor) => doctor["name"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundDoctors = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Doctor List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundDoctors.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundDoctors.length,
                      itemBuilder: (context, index) => Card(
                        elevation: 1,
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage(_foundDoctors[index]['image']),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(_foundDoctors[index]['name']),
                          subtitle: Text('${_foundDoctors[index]["des"]}'),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found please try with diffrent search',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
