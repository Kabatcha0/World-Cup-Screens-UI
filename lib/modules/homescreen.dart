import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldcup/cubit/cubit.dart';
import 'package:worldcup/cubit/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorldCubit, WorldStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = WorldCubit.get(context);
        return Scaffold(
          body: SafeArea(
              child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (o) {
              o.disallowIndicator();
              return true;
            },
            child: PageView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hello Kabatcha",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "Welcome Back!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xff86113D),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.8,
                                spreadRadius: 1,
                                color: Colors.black.withOpacity(0.6),
                              )
                            ]),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 25,
                            ),
                            Text(
                              "Search for a Leagues , Teams , Players etc. ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Center(
                        child: Container(
                          width: 200,
                          height: 215,
                          child: Image.network(
                            "https://digitalhub.fifa.com/transform/cc484be3-24c2-4315-a331-71f252d70349/Brand_Protection_fwc2022_oe_4ct_3D_ps_l",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff86113D),
                                borderRadius: BorderRadius.circular(12)),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "FIFA World Cup 2022 Stage. Group C",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            width: 80,
                                            height: 60,
                                            child: Image.network(
                                              "https://cdn.britannica.com/69/5869-004-7D75CD05/Flag-Argentina.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Text(
                                            "Argentina",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: Column(
                                          children: const [
                                            Text(
                                              "3 - 3",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            // SizedBox(
                                            //   height: 1,
                                            // ),
                                            Text(
                                              "4 - 2",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "Full Time",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            width: 80,
                                            height: 60,
                                            child: Image.network(
                                              "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/1200px-Flag_of_France.svg.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          const Text(
                                            "France",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          "https://img.uefa.com/imgml/TP/players/2014/2023/324x324/250076574.jpg",
                                        ),
                                        radius: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Kylian Mbappé",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Best Player In The Match",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    )),
                                    const Padding(
                                      padding:
                                          EdgeInsetsDirectional.only(end: 10),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.green,
                                        child: Text(
                                          "9.3",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          "https://b.fssta.com/uploads/application/soccer/headshots/711.png",
                                        ),
                                        radius: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Leo Messi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Best Player In World Cup",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    )),
                                    const Padding(
                                      padding:
                                          EdgeInsetsDirectional.only(end: 10),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.green,
                                        child: Text(
                                          "8.7",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        "See All Results",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    child: Image.network(
                      "https://www.si.com/.image/t_share/MTk0NTM3OTg0OTQ1NTYzMjQ2/messi-world-cup-trophy-argentina-celebration.jpg",
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "15",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "GOALS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "7",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Messi",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "6",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "WINS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff86113D),
                            borderRadius: BorderRadius.circular(12)),
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                "World Cup scorers",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://img.uefa.com/imgml/TP/players/2014/2023/324x324/250076574.jpg",
                                    ),
                                    radius: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "1.Kylian Mbappé",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                                const Padding(
                                  padding: EdgeInsetsDirectional.only(end: 10),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.green,
                                    child: Text(
                                      "8",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 3),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://b.fssta.com/uploads/application/soccer/headshots/711.png",
                                    ),
                                    radius: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Leo Messi",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                                const Padding(
                                  padding: EdgeInsetsDirectional.only(end: 10),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.green,
                                    child: Text(
                                      "7",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 3),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://sortitoutsi.net/uploads/media/dIQSVuWBOQn5jVVyIFbkOvSKLUQjVC8zzQCLr3u8.png",
                                    ),
                                    radius: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Julián Álvarez",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                                const Padding(
                                  padding: EdgeInsetsDirectional.only(end: 10),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.green,
                                    child: Text(
                                      "4",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 3),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://sortitoutsi.net/uploads/megapacks/cutoutfaces/originals/10.09/34000647.png",
                                    ),
                                    radius: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Olivier Giroud",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                                const Padding(
                                  padding: EdgeInsetsDirectional.only(end: 10),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.green,
                                    child: Text(
                                      "4",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 15),
                              child: Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey[300],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: const Text(
                                      "See All",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          )),
        );
      },
    );
  }
}
