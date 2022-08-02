import 'package:flutter/material.dart';
import 'package:untitled/Segunda_tela.dart';

 class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

  class _LoginPageState extends State<LoginPage> {

  TextEditingController txtNome = TextEditingController();
  TextEditingController txtNumero = TextEditingController();
  TextEditingController txtCodigo = TextEditingController();

  void Entrar()
  {
    String nome;
    String codigo;
    String numero;

    setState(()
    {
      nome = txtNome.text;
      codigo = txtCodigo.text;
      numero = txtNumero.text;

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SegundaPage(numero,nome,codigo)));
    });
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: EdgeInsets.all(50),
        child:  Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.white,fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Número do Inventário",
                    labelStyle: TextStyle(color: Colors.white)
                  ),
                  controller: txtNumero,
                ),
                Divider(),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.white,fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(color: Colors.white)
                  ),
                  controller: txtNome,
                ),
                Divider(),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: new TextStyle(color: Colors.white,fontSize: 20),
                  decoration: InputDecoration(
                      labelText: "Código",
                      labelStyle: TextStyle(color: Colors.white)
                  ),
                  controller: txtCodigo,
                ),
                ButtonTheme(
                    child: RaisedButton(onPressed:() => Entrar(),
                    child: Text("Entrar",
                    style: TextStyle(color: Colors.deepPurple),
                    ),
                      color: Colors.white,
                    ),
                ),
              ],
            ),
        ),
      )
    );
  }

}
