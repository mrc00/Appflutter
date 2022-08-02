
import 'package:flutter/material.dart';

import 'LoginSap.dart';


class SegundaPage extends StatefulWidget
{
  String nome;
  String codigo;
  String numero;

  SegundaPage(this.nome,this.codigo,this.numero);


  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage>
{
  @override
  Widget build(BuildContext context)
  {

    return Scaffold
      (
      backgroundColor: Colors.green,
      body: Padding
        (
        padding: EdgeInsets.all(50),
        child: Center
          (
          child: Column
            (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Text( "${widget.numero}", style: TextStyle(color: Colors.white,fontSize: 20)),
              Text( "${widget.nome}", style: TextStyle(color: Colors.white,fontSize: 20)),
              Text( "${widget.codigo}", style: TextStyle(color: Colors.white,fontSize: 20)),

            TextFormField
            (
            autofocus: true,
            keyboardType: TextInputType.number,
            style: new TextStyle(color: Colors.white, fontSize: 20),
            decoration: InputDecoration
              (
                labelText: "Codigo do Material",
                labelStyle: TextStyle(color: Colors.white)
            ),
          ),
          Divider(),

          TextFormField
            (
            autofocus: true,
            keyboardType: TextInputType.number,
            style: new TextStyle(color: Colors.white, fontSize: 20),
            decoration: InputDecoration
              (
                labelText: "Quantidade",
                labelStyle: TextStyle(color: Colors.white)
            ),
          ),
          Divider(),
          ButtonTheme
            (
            child: RaisedButton
              (
              onPressed: () => {_paginaLoginSap},
              child: Text
                (
                "Enviar",
                style: TextStyle(color: Colors.deepPurple),
              ),
              color: Colors.white,
            ),
          ),
          ],
        ),
      ),
    ),
    );

    _paginaLoginSap(context);
  }
  _paginaLoginSap(BuildContext context){
    Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginSap()),
    );
  }
}



