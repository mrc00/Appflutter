

class Items {
  int id;
  String codigo;
  int quantidade;



  Items(this.id, this.codigo, this.quantidade);

  Map <String,dynamic> toMap(){
    var map = <String,dynamic>{
      'id':id,
      'codigo':codigo,
      'quantidade':quantidade
    };
    return map;
  }
   //Items.fromMap(Map<String,dynamic> map){
    //id = map['id'];
    //codigo = map['codigo'];
    //quantidade = map['quantidade'];}
  @override
  String toString() {
    return 'Items{id: $id, codigo: $codigo, quantidade: $quantidade}';
  }
}