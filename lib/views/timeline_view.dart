import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class TimeLineView extends StatelessWidget {
  const TimeLineView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(centerTitle: false, title: const Text('TimeLine'), actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(UniconsLine.plus_square),
        )
      ]),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://picsum.photos/200/300?random=${index + 200}"),
                        )),
                      );
                    });
              },
              child: Card(
                elevation: 10,
                shadowColor: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://picsum.photos/200/300?random=${index + 100}"),
                        ),
                        title: const Text("Esther Smith"),
                        subtitle: const Text("1 minute ago"),
                        trailing: const Icon(Icons.more_horiz),
                      ),
                      const Text(
                          "That was the first time i flew out of Singapore in three years"),
                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1588392382834-a891154bca4d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(UniconsLine.thumbs_up),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(UniconsLine.comment_message)
                            ],
                          ),
                          const Icon(UniconsLine.telegram_alt),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: 20),
    );
  }
}
