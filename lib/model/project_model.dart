class Project {
  final String name;
  final String description;
  final String image;
  final String link;

  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'MensaPay',
    'MensaPay Digital Wallet App for Mensa issued Prepaid Cardholders. This version provides basic functions like enrollment, inquiry, transactions list, PIN reset/change, and a variety of self-service problems reporting. Next release will contain more payment related features.',
    'assets/images/mensaPay.png',
    'https://play.google.com/store/apps/details?id=com.mensaTechnology.mensapay&hl=en&gl=US',
  ),
  Project(
      'Paish Qadam',
      'An internal communication tool for all internal stakeholders to share information about Company vision, initiatives, events and activities.To cascade real time information and build a community of engaged subscribers.',
      'assets/images/PQ.png',
      'https://play.google.com/store/apps/details?id=com.ke.paish_qadam&pcampaignid=web_share/'),
  Project(
    'Unilever Smart Helmet Activo',
    'An IoT App to ensure the safety of riders by tracking their location, speed, Helmet Wear status , Helmet Battery percentage from provided Unilever Smart Helmet and also the app the save offline data if internet connectivity is not available, auto syncs when internet available.  For More: click on Read More',
    'assets/images/helmet.png',
    'https://www.linkedin.com/in/awais-qazi-76469723a/',
  ),
  Project(
    'Pokemon App',
    'A practice project for Infinite Scrolling functionality',
    'assets/images/image.png',
    'https://github.com/AwaisQazii/pokemon_app',
  ),
  Project(
      'Flutter Echo',
      'A new Flutter Package for both IOS and Android to add Echo widget for Audio Player.',
      'assets/icons/flutter.png',
      'https://pub.dev/packages/flutter_echo'),
  Project(
      'OCR APP',
      'An OCR app which is designed to read the receipt and calculate time duration of defined time slop. For More: click on Read More',
      'assets/icons/flutter.png',
      'https://www.linkedin.com/in/awais-qazi-76469723a/'),

  Project(
      'Express Link',
      'An HealthCare and E-Commerce app made to manage the Pharmaceutical Business. For More: click on Read More ',
      'assets/icons/flutter.png',
      'https://www.linkedin.com/in/awais-qazi-76469723a/'),

  // Project(
  //     'Food Recipe App',
  //     'This repository contains a Flutter implementation of a Food Recipe app with a captivating introduction section and impressive animations. It also features a signup and signin page with animations, elegantly presented on a bottom sheet.',
  //     'assets/images/recipe.png',
  //     'https://github.com/Hamad-Anwar/Food-Recipe-App-Flutter'),
  // Project(
  //     'Task Sync Pro',
  //     'Welcome to the Beautiful Task Scheduler App repository! This Flutter-based task management application combines elegant design with a robust backend, ensuring a seamless and organized task management experience. From stunning UI to real-time synchronization, this app has you covered.',
  //     'assets/images/task.png',
  //     'https://github.com/Hamad-Anwar/Task-Sync-Pro-Flutter'),
  // Project(
  //     'Flutter Chat Application with Firebase',
  //     'Welcome to our innovative Flutter chat application! This feature-rich messaging platform allows users to connect and communicate seamlessly through text and images. The app is built using Flutter for the frontend and integrates with Firebase for backend services, including authentication, real-time database, and storage.',
  //     'assets/images/chat.png',
  //     'https://github.com/Hamad-Anwar/Messenger-App-Backend-Firebase'),
  // Project(
  // 'Doctor Appointment Application',
  // 'Introducing the extraordinary "Doctor Appointment System" - a state-of-the-art Flutter UI application that redefines healthcare accessibility and efficiency. Seamlessly crafted, this app empowers users to effortlessly select doctors based on categories, engage in smooth messaging, and access detailed profiles.',
  // 'assets/images/doctor.png',
  // 'https://github.com/Hamad-Anwar/Doctor-Appointment-Application-UI'),
];
