import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:vruddhashram_admin/navigation_drawer/navigation_drawer.dart';
import '../text_styles/app_large_text.dart';
import '../text_styles/app_text.dart';

class Trustees extends StatelessWidget {
  const Trustees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime pre_backpress = DateTime.now();

    return WillPopScope(
      onWillPop: () async {
        final timegap = DateTime.now().difference(pre_backpress);
        final cantExit = timegap >= Duration(seconds: 1);
        pre_backpress = DateTime.now();
        if (cantExit) {
          final message = 'Press back again to exit';
          Fluttertoast.showToast(msg: message, fontSize: 18);

          return false;
        } else {
          Fluttertoast.cancel();
          exit(0);
        }
      },
      child: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: const Text('Trustees'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                width: double.maxFinite,
                child: AppLargeText(
                  text: '\n Trustees',
                  color: Colors.red,
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Container(
                width: double.maxFinite,
                child: AppText(
                  text:
                      '\n The Board of Trustees are working at present. \n\n ભાવનગર વૃધ્ધાશ્રમ ટ્રસ્ટ,ભાવનગર ટ્રસ્ટીશ્રીઓની માહિતી દર્શાવતુ પત્રક',
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(
                    color: Colors.black,
                  ),
                  children: [
                    TableRow(children: [
                      Column(
                        children: [
                          Text('ક્રમ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('નામ', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('હોદ્દો', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                      Column(
                        children: [
                          Text('ફોન નં.', style: TextStyle(fontSize: 20.0))
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('1')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી પ્રતાપરાય તારાચંદ શાહ \n Shree Pratapray Tarachand Shah')
                        ],
                      ),
                      Column(
                        children: [Text(' પેટ્રન શ્રી \n Patron Shree')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' (R) 0278-2560700 \n (O) 2426500 \n (M) 9824020899')
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('2')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' ડો.શ્રીમતી નિલાબેન ભરતભાઈ ઓઝા \n Dr. Smt. Nilaben Bharatbhai Oza')
                        ],
                      ),
                      Column(
                        children: [Text(' પ્રમુખ શ્રી \n President Shree')],
                      ),
                      Column(
                        children: [Text(' (O) 078-2562281 \n (M) 9427759481')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('3')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી જયંતભાઈ નાનાલાલ  વાનાણી  (બુધા પટેલ) \n Shree Jayantbhai Nanalal Vanani (Budha Patel)')
                        ],
                      ),
                      Column(
                        children: [
                          Text(' માનદ્દ મંત્રી શ્રી \n Honorary Secretary')
                        ],
                      ),
                      Column(
                        children: [
                          Text(' (O) 0278-2560804 \n (M) 9825205627 ')
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('4')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી દેવેન્દ્રભાઈ રસીકલાલ શેઠ \n Shree Devendrabhai Rasiklal Sheth')
                        ],
                      ),
                      Column(
                        children: [Text(' સહમંત્રી શ્રી \n Joint Secretary')],
                      ),
                      Column(
                        children: [Text(' (O) 0278-2428137 \n (M) 9879511350')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('5')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી અચ્યુતભાઈ  જગમોહનદાસ મહેતા \n Shree Achyutbhai Jagmohandas Mehta')
                        ],
                      ),
                      Column(
                        children: [Text(' ખજાનચી શ્રી \n Treasurer Shree')],
                      ),
                      Column(
                        children: [Text(' (M) 9825205763 \n (M) 9375310012')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('6')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી હર્ષદરાય બાલકૃષ્ણ શેઠ \n Shree Harshadray Balkrushna Sheth')
                        ],
                      ),
                      Column(
                        children: [Text(' ટ્રસ્ટી શ્રી \n Trustee Shree')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' (R) 0278-2205360 \n (O) 0278-2446406 \n (M) 9428052329')
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('7')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી પ્રવિણભાઈ છગનલાલ મહેતા \n Shree Praveenbhai Chhaganlaal Mehta')
                        ],
                      ),
                      Column(
                        children: [Text(' ટ્રસ્ટી શ્રી \n Trustee Shree')],
                      ),
                      Column(
                        children: [Text(' (O) 0285-2650294 \n (M) 9824202628')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('8')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' સુ.શ્રી લત્તાબેન રમણીકલાલ શાહ \n Su. Shree. Lataben Ramniklal Shah')
                        ],
                      ),
                      Column(
                        children: [Text(' ટ્રસ્ટી શ્રી \n Trustee Shree')],
                      ),
                      Column(
                        children: [Text(' (R) 0278-2510151 \n (M) 9428641730')],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('9')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી સુનીલભાઈ ગુણવંતભાઈ વડોદરીયા \n Shree Sunilbhai Gunvantbhai Vadodaria')
                        ],
                      ),
                      Column(
                        children: [Text(' ટ્રસ્ટી શ્રી \n Trustee Shree')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' (R) 0278-2568888 \n (O) 0278-2225893 \n (M) 9426916929')
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('10')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી કિર્તિભાઈ પી. સખપરા \n Shree Kirtibhai P. Sakhpara')
                        ],
                      ),
                      Column(
                        children: [Text(' ટ્રસ્ટી શ્રી \n Trustee Shree')],
                      ),
                      Column(
                        children: [
                          Text(' (O) 0278-2563570 \n (M) 09825207272')
                        ],
                      ),
                    ]),
                    TableRow(children: [
                      Column(
                        children: [Text('11')],
                      ),
                      Column(
                        children: [
                          Text(
                              ' શ્રી સંજયભાઈ મનસુખલાલ શાહ \n Shree Sanjaybhai Mansukhlal Shah')
                        ],
                      ),
                      Column(
                        children: [Text(' ટ્રસ્ટી શ્રી \n Trustee Shree')],
                      ),
                      Column(
                        children: [Text(' (M) 9825205048')],
                      ),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
