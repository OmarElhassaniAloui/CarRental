# Carental - Rent a Car Project

![Carental Logo](https://example.com/carental_logo.png)

## Introduction

Carental is a Flutter-based mobile application that allows users to rent cars online. Whether you're planning a trip, need a temporary replacement vehicle, or simply want to experience driving a different car, Carental has you covered. With a wide selection of cars from various categories, users can easily browse, book, and manage their car rentals through this app.

## UI screens
[UI Screenshot ](https://github.com/OmarElhassaniAloui/CarRental/tree/7b61c361da599423323bf14460596411b388f3ac/assets/ui)
## Features

### User Registration and Authentication

- Users can create an account by providing their email and password.
- Account verification through email confirmation.
- Users can log in with their credentials or via social media (e.g., Google, Facebook).

### Car Browsing

- Users can browse available cars based on location, category, or preferences.
- Detailed car information, including make, model, year, features, and images, is displayed for each car.
- Filtering and sorting options to help users find their desired car easily.

### Booking Management

- Users can select a car and specify the rental duration.
- Automatic calculation of the rental cost based on the selected car and rental period.
- Option to add additional services (e.g., GPS, child seat) to the booking.
- Users can review their booking details before finalizing the reservation.

### Car Availability and Calendar

- An interactive calendar displays car availability for different dates.
- Users can view booked dates and choose from available dates for their rental.

### Pricing and Payment

- Transparent pricing with breakdowns of rental costs and additional services.
- Secure payment options to handle transactions (e.g., credit/debit cards, PayPal).
- Users receive in-app notifications and booking confirmations.

### User Profile

- Users can view and edit their profile information.
- Booking history and status are available in the user profile.
- Password reset and notification preferences management.

### State Management (GetX)

- The project utilizes the GetX package for state management to efficiently manage app state and update UI components.

### REST API Integration

- The app interacts with a RESTful API to fetch car data, manage user bookings, and process payments.
- API endpoints are used for user authentication, car retrieval, and booking management.

## Installation

1. Clone the repository from [GitHub Repo URL](https://github.com/yourusername/carental_flutter.git).
2. Install Flutter and the required dependencies using `flutter pub get`.
3. Configure the API base URL in the project to connect with the backend.
4. Build and run the app on your desired platform (Android, iOS, or web).

## Contributing

We welcome contributions to improve Carental. Feel free to submit bug reports, feature requests, or pull requests. For major changes, please open an issue first to discuss the proposed changes.

## License

The Carental project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

---

Note: The above README assumes that you already have a Flutter project with GetX set up and a REST API to handle the backend functionality. Please make sure to customize the content accordingly, especially the installation instructions and API integration details, based on your specific project setup.
