import 'package:contacomigov2/UserModel.dart';
import 'package:contacomigov2/ui/Home.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class SolicitarDoacao extends StatefulWidget {
  @override
  _SolicitarDoacaoState createState() => _SolicitarDoacaoState();
}

class _SolicitarDoacaoState extends State<SolicitarDoacao> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _addressController = TextEditingController();

  InputDecoration _buildDecoration(String label) {
    return InputDecoration(
        labelText: label, labelStyle: TextStyle(color: Colors.grey));
  }

  final _fieldStyle =
      TextStyle(color: Color.fromRGBO(245, 50, 64, 1), fontSize: 16);

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color.fromRGBO(255, 255, 224, 1),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()));
              })
        ],
        title: Text('Solicitar Doação'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(144, 238, 144, 0.5),
      ),
      body: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: <Widget>[
                TextFormField(
                  style: _fieldStyle,
                  decoration: _buildDecoration("Título"),
                  controller: _titleController,
                  //validator: validateTitle,
                ),
                TextFormField(
                  style: _fieldStyle,
                  minLines: 1,
                  maxLines: 10,
                  controller: _descriptionController,
                  decoration: _buildDecoration("Descrição"),
                  // validator: validateDescription
                ),
                TextFormField(
                  style: _fieldStyle,
                  minLines: 1,
                  maxLines: 10,
                  controller: _addressController,
                  decoration: _buildDecoration("Local/Endereço"),
                  // validator: validateDescription
                ),
                SizedBox(
                  height: 25,
                ),
                FlatButton(
                    color: Color.fromRGBO(60, 196, 124, 0.2),
                    splashColor: Colors.white,
                    onPressed: () {},
                    child: Text('Cadastrar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(130, 128, 129, 1),
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
