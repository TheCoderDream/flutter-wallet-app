import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/logo.png')
                    )
                  ),
                ),
                const SizedBox(width: 5,),
                const Text('TheCoderDream', style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ubuntu',
                  fontSize: 25
                ))
              ],
            ),
            const SizedBox(height: 20,),
            const Text(
                'Account Overview',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w800,
                fontFamily: 'avenir'
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(30),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xff315d9e)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('20,500', style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(height: 5,),
                      Text(
                        'Current Balance',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffac30)
                    ),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Send money',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir'
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/scanqr.png')
                    )
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffffac30)
                    ),
                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                  ),
                  _avatarWidget('avatar1', 'Mike'),
                  _avatarWidget('avatar2', 'Joseph'),
                  _avatarWidget('avatar3', 'Ashley'),
                  _avatarWidget('avatar1', 'Emre'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text(
                    'Services',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'avenir'
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  child: Icon(Icons.dialpad),
                )
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                children: [
                  _serviceWidget('sendMoney', 'Send\nMoney'),
                  _serviceWidget("receiveMoney", "Receive\nMoney"),
                  _serviceWidget("phone", "Mobile\nRecharge"),
                  _serviceWidget("electricity", "Electricity\nBill"),
                  _serviceWidget("tag", "Cashback\nOffer"),
                  _serviceWidget("movie", "Movie\nTicket"),
                  _serviceWidget("flight", "Flight\nTicket"),
                  _serviceWidget("more", "More\n"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _avatarWidget(String img, String name) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 150,
      width: 120,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color(0xfff1f3f6)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('asset/images/$img.png'),
                fit: BoxFit.contain
              ),
              border: Border.all(
                color: Colors.black,
                width: 2
              )
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'avenir',
              fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
  
  Widget _serviceWidget(String img, String name) {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xfff1f3f6)
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asset/images/$img.png')
                    )
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5,),
        Text(name, style: TextStyle(
          fontFamily: 'avenir',
          fontSize: 14,
        ), textAlign: TextAlign.center,)
      ],
    );
  }
}
