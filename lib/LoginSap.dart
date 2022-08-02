
import 'package:flutter/material.dart';

import 'EnviaDadosPage.dart';

class LoginSap extends StatefulWidget {

  @override
  State<LoginSap> createState() => _LoginSapState();


}

class _LoginSapState extends State<LoginSap> {
  final _login = TextEditingController();
  final _senha = TextEditingController();
  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Login"),
    centerTitle: true,
    backgroundColor: Colors.green,
    ),
      body: _body(context),
    );
  }
  _body(BuildContext context){
    return Form(
        key: _formkey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children:<Widget> [
              _textFormField(
                "Login",
                "Digite o login",
                controller: _login,
          ),
              _textFormField(
              "Senha",
              "Digite a Senha",
                senha: true,
                controller: _senha,
              ),
              _raisedButton("Enviar", Colors.green, context)
            ],
          ),
        )
    );
  }
  _textFormField(
      String label,
      String hint,{
        bool senha = false,
        TextEditingController? controller,
        FormFieldValidator<String>? validator,
  }){
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: senha,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
    );
  }
  String? _validaLogin(String texto){
    if(texto.isEmpty){
      return "Digite o Usuario";
    }
  }
  String? _validaSenha(String texto){
    if(texto.isEmpty){
      return "Digite a senha";
    }
  }
  _raisedButton(
      String texto,
      Color cor,
      BuildContext context){
        return RaisedButton(
          color : cor,
          child : Text(
           texto,
      style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      ),
      ),
          onPressed: (){
            _clickButton(context);
          },
      );
      }
      void _clickButton(BuildContext context){
    bool formOk = _formkey.currentState!.validate();
    if(!formOk){
      return;
    }
    _paginaEnviaDados(context);
  }
  _paginaEnviaDados(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context)=> EnviaDadosPage()),
    );
  }
}
