void main() {
  //print(callGen(2000));
  // var x = callColor();
  // print(x);

  callWeb("Goolge", protocal: "https" ,port: 443);
}

//String callGen(int year){

//var year =2000;

// if(year >= 1996){
//   print("Gen Z");
// }else{
//   print("Gen Y");
// }
//                          true      false
//var x = (year >= 1996) ? "Gen Z" : "Gen Y";
//  return x;
//}

//เขียนแบบ Arrow Function
String callGen(int year) => (year >= 1996) ? "Gen Z" : "Gen Y";

int callColor([String newColor = "White"]) {

  //                        0       1      2
  List<dynamic> color = ["BLACK", "GREEN", "BLUE"];
  color.add(newColor);
  for (var item in color) {
    print(item);
  }
  return color.length; // ส่งค่าจำนวนข้อมูลใน array กลับไป
}

void callWeb(String web,{int port = 80, String protocal = "http"}) => 
    print("$protocal: $web : $port");
