class Place {
  final String name;
  final String location;
  final String country;
  final String imageUrl;
  final double? rate;
  final int? temperature;
  final int? day;
  final String? description;

  Place({
    required this.name,
    required this.location,
    required this.country,
    required this.imageUrl,
    this.rate,
    this.temperature,
    this.day,
    this.description,
  });
}

final List<Place> placeList = [
  Place(
      name: 'Nusa Penida',
      location: 'Bali',
      country: 'Indonesia',
      imageUrl:
          'https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1450&q=80',
      description:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.'),
  Place(
    name: 'Patnem Beach',
    location: 'Goa',
    country: 'India',
    imageUrl:
        'https://images.unsplash.com/photo-1505142468610-359e7d316be0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1526&q=80',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.',
  ),
  Place(
    name: 'Haathim Beach',
    location: 'Kinbidhoo',
    country: 'Maldives',
    imageUrl:
        'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.',
  ),
  Place(
    name: 'Turquoise Bay',
    location: 'Cape Range',
    country: 'Australia',
    imageUrl:
        'https://images.unsplash.com/photo-1582769983477-6a5e90f2e717?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
    description:
        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.',
  ),
];

final List<Place> popularPlaceList = [
  Place(
    name: 'Nusa Penida',
    location: 'Bali',
    country: 'Indonesia',
    imageUrl:
        'https://images.unsplash.com/photo-1573790387438-4da905039392?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1450&q=80',
  ),
  Place(
    name: 'Patnem Beach',
    location: 'Goa',
    country: 'India',
    imageUrl:
        'https://images.unsplash.com/photo-1505142468610-359e7d316be0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1526&q=80',
  ),
  Place(
    name: 'Haathim Beach',
    location: 'Kinbidhoo',
    country: 'Maldives',
    imageUrl:
        'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
  ),
  Place(
    name: 'Turquoise Bay',
    location: 'Cape Range',
    country: 'Australia',
    imageUrl:
        'https://images.unsplash.com/photo-1582769983477-6a5e90f2e717?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
  ),
];
