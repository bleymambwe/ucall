import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to the Profile screen
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to the Language screen
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LanguageScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('City'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to the City screen
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CityScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy Policy'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to the Privacy Policy screen
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete Account', style: TextStyle(color: Colors.red)),
            onTap: () {
              // Show a confirmation dialog for account deletion
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Delete Account'),
                    content:
                        Text('Are you sure you want to delete your account?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text(
                          'Delete',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          // Perform account deletion here
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(child: Text('Profile Page')),
    );
  }
}

class LanguageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
      ),
      body: Center(child: Text('Language Page')),
    );
  }
}

class CityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City'),
      ),
      body: Center(child: Text('City Page')),
    );
  }
}

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Center(child: Text('Privacy Policy Page')),
    );
  }
}
