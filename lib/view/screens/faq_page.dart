import 'package:flutter/material.dart';

class FAQsPage extends StatefulWidget {
  const FAQsPage({super.key});

  @override
  State<FAQsPage> createState() => _FAQsPageState();
}

class _FAQsPageState extends State<FAQsPage> {
  final bool _costumIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQs'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              ExpansionTile(
                title: Text(
                  "What happens if i return car late?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "is there a km limit how much can i drive?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "How to book car? ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Can i message DJ?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "How can I edit my profile?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "How to change pick-up location?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Do I have to return the car to the same location wher i picked it up  ?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "What happens if i return car late?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  "What happens if i return car late?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title:  Text(
                  "What happens if i return car late?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
              ExpansionTile(
                title:  Text(
                  "What happens if i return car late?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla elementum felis et urna ultrices, sit amet gravida purus ultricies. Ut tristique mi vitae urna pharetra gravida. Vestibulum nec porttitor ex. Curabitur rutrum ante dui, non dignissim est consectetur non. Maecenas id massa condimentum, suscipit metus ut, imperdiet nisi. Vivamus suscipit non arcu nec dictum. Integer quis lacinia ipsum, a elementum nisi. Maecenas tincidunt eu dui sit amet scelerisque. Mauris leo mauris, malesuada in ex a, placerat luctus massa. Sed scelerisque nibh ut odio auctor, laoreet sodales quam efficitur."),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
