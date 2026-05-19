
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    // LIST FOTO POST
    final List<String> posts = [
      "assets/images/post.jpeg",
      "assets/images/pemuda.jpeg",
      "assets/images/profile.jpeg",
      "assets/images/story1.jpeg",
      "assets/images/story2.jpeg",
      "assets/images/story3fluflu.jpeg",
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // APP BAR
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: const [
                        Text(
                          "a_s_y_h_",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ],
                    ),

                    Row(
                      children: const [
                        Icon(
                          Icons.add_box_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // PROFILE SECTION
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [

                    // FOTO PROFILE
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage:
                          AssetImage("assets/images/profile.jpeg"),
                    ),

                    const SizedBox(width: 25),

                    // FOLLOW INFO
                    Expanded(
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                        children: const [

                          Column(
                            children: [
                              Text(
                                "6",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Postingan",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Text(
                                "436",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Pengikut",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Text(
                                "257",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Mengikuti",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // BIO
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "a_s_y_h",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // BUTTON
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [

                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[900],
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Edit Profil",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[900],
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Bagikan Profil",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.person_add_alt,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // TAB
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                children: const [

                  Icon(
                    Icons.grid_on,
                    color: Colors.white,
                    size: 30,
                  ),

                  Icon(
                    Icons.person_pin_outlined,
                    color: Colors.white54,
                    size: 30,
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // GRID POST
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Image.asset(
                    posts[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

