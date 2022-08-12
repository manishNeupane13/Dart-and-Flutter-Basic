import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'dart:async';

class FireBaseCrud extends StatefulWidget {
  FireBaseCrud({Key? key}) : super(key: key);

  @override
  State<FireBaseCrud> createState() => _FireBaseCrudState();
}

class _FireBaseCrudState extends State<FireBaseCrud> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  double? _finalprice = 0;

  final CollectionReference _products =
      FirebaseFirestore.instance.collection("product");

  Future<void> _create([DocumentSnapshot? documentSnapshot]) async {
    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: _priceController,
                  decoration: const InputDecoration(
                    labelText: 'Price per quantity',
                  ),
                ),
                TextField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: _quantityController,
                  decoration: const InputDecoration(
                    labelText: 'Quantity',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Create'),
                  onPressed: () async {
                    final String name = _nameController.text;
                    final double? price =
                        double.tryParse(_priceController.text);
                    final double? quanity =
                        double.tryParse(_quantityController.text);
                    _finalprice = price! * quanity!;
                    if (price != null) {
                      await _products.add({
                        "name": name,
                        "price per quantity": price,
                        "quantity": quanity,
                        "final price": _finalprice
                      });

                      _nameController.text = '';
                      _priceController.text = '';
                      _quantityController.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      _nameController.text = documentSnapshot['name'];
      _priceController.text = documentSnapshot['price per quantity'].toString();
      _quantityController.text = documentSnapshot['quantity'].toString();
      _finalprice = documentSnapshot['final price'];
    }

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: _priceController,
                  decoration: const InputDecoration(
                    labelText: 'Price per quantity',
                  ),
                ),
                TextField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  controller: _quantityController,
                  decoration: const InputDecoration(
                    labelText: 'quantity',
                  ),
                ),
                Text(
                  _finalprice.toString(),
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Update'),
                  onPressed: () async {
                    final String name = _nameController.text;
                    final double? price =
                        double.tryParse(_priceController.text);
                    final double? quantity =
                        double.tryParse(_quantityController.text);
                    _finalprice = price! * quantity!;

                    if (price != null) {
                      await _products.doc(documentSnapshot!.id).update({
                        "name": name,
                        "price per quantity": price,
                        "quantity": quantity,
                        "final price": _finalprice
                      });
                      _nameController.text = '';
                      _priceController.text = '';
                      _quantityController.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

  Future<void> _delete(String productId) async {
    await _products.doc(productId).delete();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('You have successfully deleted a product')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('FIREBASE CRUD')),
        ),
        body: StreamBuilder(
          stream: _products.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            print(streamSnapshot.data!.docs.length);

            print(streamSnapshot.data!.docs[0].data());
            if (streamSnapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (streamSnapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  // var myList = streamSnapshot.data!.docs[index]
                  //     as List<DocumentSnapshot>;
                  // print(myList);
              

                  Map<String, dynamic> data =
                      documentSnapshot.data()! as Map<String, dynamic>;

                  // print(data.keys);
                  // print(data.values);
                  print(data['price per quantity']);
                  print(data['name']);
                  print(data['quantity']);
                  print(data['final price']);

                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(data["name"]),
                      subtitle: Text(data['price per quantity'].toString()),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () => _update(documentSnapshot)),
                            IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () => _delete(documentSnapshot.id)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
// Add new product
        floatingActionButton: FloatingActionButton(
          onPressed: () => _create(),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
