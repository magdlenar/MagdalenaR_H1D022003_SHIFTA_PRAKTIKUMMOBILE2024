import 'package:flutter/material.dart';

void main(List<String>args) {
  runApp(pertemuan1());
}

class pertemuan1 extends StatelessWidget{
  const pertemuan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      
    );
  }
}

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();

}
class _HomepageState extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    TextEditingController conBil1 = TextEditingController();
    TextEditingController conBil2 = TextEditingController();
    TextEditingController conHasil = TextEditingController();

    void operasiAritmatika(String jenisOperasi){
      double bilangan1 = double.parse(conBil1.text);
      double bilangan2 = double.parse(conBil2.text);
      double Hasil = 0;

      if (jenisOperasi == "+"){
        Hasil = bilangan1 + bilangan2;
      }else if(jenisOperasi == "-"){
        Hasil = bilangan1 - bilangan2;
      }else if(jenisOperasi == "*"){
        Hasil = bilangan1 * bilangan2;
      }else if(jenisOperasi == "/"){
        Hasil = bilangan1 / bilangan2;
      }
      conHasil.text = Hasil.toString();
    }
  
  return Scaffold(
    appBar: AppBar(
      title:Text("Aritmatika"),
      ),
      body: Padding (
        padding: const EdgeInsets.all(8.0) ,
        child: Wrap(
          runSpacing: 10,
          children: [
            TextField(
              controller: conBil1,
              decoration: InputDecoration(
                label: Text("Bil  1"),
              ),
            ),
            TextField(
              controller: conBil2,
              decoration: InputDecoration(
                label: Text("Bil 2"),
                
              ),
            ),
            TextField(
              controller: conHasil,
              decoration: InputDecoration(
                label: Text("Hasil"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed:(){
                      operasiAritmatika("+");
                    
                    },
                    child: Text("Tambah")),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed:(){
                      operasiAritmatika("-");
                    
                    },
                    child: Text("Kurang")),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed:(){
                      operasiAritmatika("*");

                      
                    },
                    child: Text("Kali")),
                ),
                SizedBox(
                  width: 85,
                  child: ElevatedButton(
                    onPressed:(){
                      operasiAritmatika("/");

                    
                    },
                    child: Text("Bagi")),
                ),
              ],
            )
          ],
        ),
        ));
  }
}
