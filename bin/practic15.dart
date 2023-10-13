import 'dart:math';
import 'dart:io';

void main(){
  String str = "abcdefghijk1234567890lmnopqrstuvwxyz";
  String password = '';
  print('Из скольки символов должен быть пароль? 4 - 6 - 8 - 10 -12');
  
   int pass = int.tryParse(stdin.readLineSync()??'')?? 0 ;
 if (pass != 4 && pass != 6 && pass != 8 && pass != 10 && pass != 12) {  
print('Неправильная длина пароля. Выберите 4, 6, 8, 10 или 12.');
return;

}
  Random random = Random();
    for(int i = 1; i <= pass; i++ ){
    int randomIndex = random.nextInt(str.length);
    password += str[randomIndex];
  }

print(password);

}
