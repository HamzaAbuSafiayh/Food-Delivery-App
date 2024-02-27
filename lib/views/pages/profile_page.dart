import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/widgets/profile_page_fields.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://www.capitalfm.co.ke/lifestyle/files/2015/01/proud.jpg'),
              ),
              TextButton(
                  onPressed: () {}, child: const Text('Change Profile Picture'))
            ],
          ),
        ),
        const Divider(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10),
              child: Text(
                'Profile Information',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 25),
              ),
            ),
            ProfilePageField(
              title: 'Name',
              value: 'Ibrahim',
              onPressed: () {},
            ),
            ProfilePageField(
              title: 'UserName',
              value: 'Ibra123',
              onPressed: () {},
            ),
            const Divider(
              indent: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 10),
              child: Text(
                'Personal Information',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 25),
              ),
            ),
            ProfilePageField(
              title: 'User ID',
              value: '201942',
              onPressed: () {},
            ),
            ProfilePageField(
              title: 'E-Mail',
              value: 'Ibrahim@gmail.com',
              onPressed: () {},
            ),
            ProfilePageField(
              title: 'Phone Number',
              value: '0596942185',
              onPressed: () {},
            ),
            ProfilePageField(
              title: 'Gender',
              value: 'Male',
              onPressed: () {},
            ),
            ProfilePageField(
              title: 'Date of Birth',
              value: '20 Sep, 2002',
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
