abstract class AppCubitState {}

class InitialState extends AppCubitState {}
//  Login State
class LoginSuccessState extends AppCubitState {}
class LoginErrorState extends AppCubitState {}
//  SignUp State
class SignUpSuccessState extends AppCubitState {}
class SignUpErrorState extends AppCubitState {}

/* << Firebase States >> */

//  GetData State
class GetDataSuccessState extends AppCubitState {}
class GetDataErrorState extends AppCubitState {}
//  SaveData State
class SaveDataSuccessState extends AppCubitState {}
class SaveDataErrorState extends AppCubitState {}
