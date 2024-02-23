import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: YouTubeHomePage(),
    ),
  );
}

class YouTubeHomePage extends StatefulWidget {
  const YouTubeHomePage({Key? key}) : super(key: key);

  @override
  _YouTubeHomePageState createState() => _YouTubeHomePageState();
}

class _YouTubeHomePageState extends State<YouTubeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.network(
          'https://cdn.mos.cms.futurecdn.net/8gzcr6RpGStvZFA2qRt4v6-1200-80.jpg', // Replace with your YouTube logo URL
          width: 120,
          height: 100,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildVideoItem('Video 1', 'https://marketplace.canva.com/EAFW7JwIojo/2/0/1600w/canva-red-colorful-tips-youtube-thumbnail-FxVVsqyawqY.jpg'),
            _buildVideoItem('Video 2', 'https://www.adobe.com/express/create/thumbnail/media_184a3a28ded5926b56142bf7f41b1c6972df38f0c.png?width=750&format=png&optimize=medium'),
            _buildVideoItem('Video 3', 'https://i.ytimg.com/vi/j5imlp_c87s/maxresdefault.jpg'),
            _buildVideoItem('Video 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0jpEpa-xIozF-Ve_JDr8nah81Iv8Ebg2fcHsIS5_wHmPN6tyQhTN-NzEZ9qagLKNKQ9M&usqp=CAU'),
            _buildVideoItem('Video 5', 'https://www.fotor.com/blog/wp-content/uploads/2019/10/Untitled-design-18.jpg'),
            _buildVideoItem('Video 6', 'https://mir-s3-cdn-cf.behance.net/projects/404/4744f0175474311.Y3JvcCw4MDgsNjMyLDAsMA.png'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Library',
          ),
        ],
      ),
    );
  }

  Widget _buildVideoItem(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'Cong TV • 2.2M views • 6 days ago',
            style: TextStyle(color: Colors.grey),
          ),
          Divider(
            color: Colors.grey[300],
            height: 30,
          ),
        ],
      ),
    );
  }
}
