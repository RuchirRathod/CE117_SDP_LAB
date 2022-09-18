/*
  class User {

    const User({this.id = _anonymousId, this.name = _anonymousName,}) : assert(id >= 0);

    const User.anonymous() : this(); 
    final String name;
    final int id;

    String toJson() {
    return '{"id":$id,"name":"$name"}';
    }
    @override
    String toString() {
    return 'User(id: $id, name: $name)';
    }
  }
*/