import 'package:flutter/material.dart'; 
import '../styles/AppTheme.dart';
import '../widgets/search.dart';
import '../widgets/slide.dart';

class HomePageOne extends StatelessWidget {

  const HomePageOne({Key? key}) : super(key: key);
  
  get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       // padding: const EdgeInsets.all(8),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Search(), 
            FutureBuilder<List<Slide>>(
            future: loadSlides(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SlideCarousel(slides: snapshot.data!);
              } else if (snapshot.hasError) {
                return Text('Error loading slides');
              }
              return CircularProgressIndicator();
            },
          ),
          const SizedBox(height: 5),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Latest Book',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ), 
                ), 
              ],
            ), 
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                       color: Colors.blue,
                    ),
                    padding: const EdgeInsets.all(8.0), 
                    height: 100,
                    child: const Center(
                      child: Text('Hello World'),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                       color: Colors.blue,
                    ),
                    padding: const EdgeInsets.only(left:5),
                    height: 100, 
                    //color: const Color.fromARGB(221, 103, 45, 45),
                    child: const Text('Sharifur' , style: AppTheme.titleText,
                    ),
                  ),
                ),
                 const SizedBox(width: 5),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      showAlertDialog(context, 'Are you sure for delete?');
                    },
                    // child: Container(
                    //   padding: EdgeInsets.all(16.0),
                    //   child: Text('Tap Me'),
                    // ),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                         color: Colors.blue,
                      ),
                      padding: const EdgeInsets.only(left:5),
                      height: 100, 
                      //color: Color.fromARGB(221, 45, 103, 45),
                      child: const Text('Sharifur' , style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Text('Shop now', style: AppTheme.amtHintText,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container( 
                    padding: const EdgeInsets.all(5.00),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                       color: Color.fromARGB(255, 255, 57, 2),
                    ),
                    child: const Text('Order now', style: AppTheme.tTrxTextGreen,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        
      ),
    );
  }
}



// class SlideImage extends StatelessWidget {
//   const SlideImage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       'assets/images/scrum.png',
//       height: 200,
//       width: 200,
//       fit: BoxFit.cover,
//     );
//   }
// }


// class HomePageOne extends StatelessWidget {
//   const HomePageOne({Key? key}) : super(key: key);
 
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//           child: Text('Hello World'),
//         ),
//     );
//   }
// } 

 
// class HomePageOne extends StatelessWidget {
//   const HomePageOne({Key? key}) : super(key: key);
 
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: Container(
//                 color: Colors.red,
//                 height: 100,
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.green,
//                 height: 100,
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.blue,
//                 height: 100,
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.yellow,
//                 height: 100,
//               ),
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: Container(
//                 color: Colors.orange,
//                 height: 100,
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.purple,
//                 height: 100,
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
/* 
class HomePageOne extends StatelessWidget {
  const HomePageOne({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
              Expanded(
                
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: const Text(
                    "Text Button",
                  ), 
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                  height: 100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

 */
/* 
class HomePageOne extends StatelessWidget {
  const HomePageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'First Row - 4 Columns',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 4',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Second Row - 2 Columns',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 */

/* class HomePageOne extends StatelessWidget {

  const HomePageOne({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              height: 100,
              child: const Text(
                "Text Button",
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              height: 100,
              child: const Text(
                "Text Button",
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              height: 100,
              child: const Text(
                "Text Button",
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              height: 100,
              child: const Text(
                "Text Button",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
 */
/* 
class HomePageOne extends StatelessWidget {

  const HomePageOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  color: Colors.red,
                  height: 100,
                  width: 500,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.orange,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.purple,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
 */

/* import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.green,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.yellow,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.orange,
                  height: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.purple,
                  height: 100,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
 */
/*
class HomePageOne extends StatelessWidget {

  const HomePageOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'First Row - 4 Columns',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 4',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Second Row - 2 Columns',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 1',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Column 2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

*/
 

 void showAlertDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert',
          style: TextStyle(
                color: Color.fromARGB(255, 0, 255, 68),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
