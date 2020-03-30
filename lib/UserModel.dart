import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model{

    static UserModel of(BuildContext context) =>
      ScopedModel.of<UserModel>(context);

}