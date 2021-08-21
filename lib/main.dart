import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cálculo do Peso Ideal',
      debugShowCheckedModeBanner: false,
      home: HomePeso(),
    );
  }
}

class HomePeso extends StatelessWidget {
  const HomePeso({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo do Peso Ideal'),
      ),
      body: ListView(
        children: <Widget>[
          PesoCab(),
          PesoForm(),
        ],
      ),
    );
  }
}

class PesoCab extends StatelessWidget {
  const PesoCab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SizedBox(
          height: 10,
        ),
        const Image(
          image: NetworkImage(
              'data:image/jpeg;base64,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'),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Informe seus dados',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}

class PesoForm extends StatefulWidget {
  const PesoForm({Key? key}) : super(key: key);

  @override
  _PesoFormState createState() => _PesoFormState();
}

enum SingingSex { masculino, feminino }

class _PesoFormState extends State<PesoForm> {
  var _edNome = TextEditingController();
  var _edAltura = TextEditingController();
  SingingSex? _sexo = SingingSex.feminino;
  String _mensagem = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _edNome,
            keyboardType: TextInputType.name,
            style: const TextStyle(
              fontSize: 20,
            ),
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              labelText: 'Nome',
            ),
          ),
          ListTile(
            title: const Text('Masculino'),
            leading: Radio<SingingSex>(
              value: SingingSex.masculino,
              groupValue: _sexo,
              onChanged: (SingingSex? value) {
                setState(() {
                  _sexo = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Feminino'),
            leading: Radio<SingingSex>(
              value: SingingSex.feminino,
              groupValue: _sexo,
              onChanged: (SingingSex? value) {
                setState(() {
                  _sexo = value;
                });
              },
            ),
          ),
          TextFormField(
            controller: _edAltura,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontSize: 20,
            ),
            decoration: const InputDecoration(
              icon: Icon(Icons.vertical_split),
              labelText: 'Altura',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ElevatedButton(
              onPressed: () {
                double altura = double.parse(_edAltura.text);
                double peso;
                if (_sexo == SingingSex.masculino) {
                  peso = pow(altura, 2) * 22;
                } else {
                  peso = pow(altura, 2) * 21;
                }
                setState(() {
                  _mensagem = "${_edNome.text} seu peso ideal é ${peso.toStringAsFixed(3)} kg";
                });
              },
              child: Text(
                ' Calcular ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                )
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            _mensagem,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
