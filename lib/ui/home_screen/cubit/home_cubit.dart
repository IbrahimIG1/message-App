import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messeges_app/ui/home_screen/cubit/home_state_cubit.dart';

class HomeCubit extends Cubit<HomeStateCubit> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);
  var dp = FirebaseFirestore.instance;
  final user = <String, dynamic>{
    "first": "uossef",
    "last": "algammal",
    "born": 2003
  };
  void saveData() async {
    try {
      await dp.collection("users").add(user).then((value) {
        print('save user data done');
        getData();
      });
    } catch (error) {
      // TODO
      print("Error in save user data => ${error.toString}");
    }
  }

  getData() async {
    try {
      await dp.collection("users").get().then((value) {
        value.docs.forEach((userData) {
          print('get user data done =>${userData.get('first')}');
        });
      });
    } catch (error) {
      // TODO
      print("Error in get user data => ${error.toString}");
    }
  }
}
