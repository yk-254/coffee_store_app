# Coffee Store App (Flutter + GetX)

A modern, clean, and fully functional **Coffee Store mobile application** built with **Flutter** and **GetX** state management. This app demonstrates a complete e-commerce workflow with authentication, product listing, filtering, product details, cart management, and persistent local storage.

---

## **Table of Contents**
- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Packages & Technologies](#packages--technologies)
- [Screenshots](#screenshots)
- [Future Improvements](#future-improvements)
- [License](#license)

---

## **Overview**
Coffee Store App is a sample mobile application for browsing and purchasing coffee and beverages. The app is fully responsive and supports dynamic filtering and searching of products. It includes authentication (Login/Register), product details, cart functionality, and local persistence using SharedPreferences.

---

## **Features**
- **Authentication**
  - Login & Register with simple validation
  - SharedPreferences-based session management

- **Home Screen**
  - Product listing with **categories**
  - Horizontal scrolling list of products
  - Search bar to filter products in real-time
  - Tap on product to view detailed information

- **Product Details**
  - Product image, name, size, price, and description
  - Increment/Decrement product quantity
  - Add product to cart with live updates

- **Cart**
  - Display all added products
  - Update quantity or remove items
  - Total price calculation
  - Persistent cart using **SharedPreferences**

- **Profile**
  - Display logged-in user information
  - Logout functionality with session clearing

---

## **Architecture**
The project follows **Clean Architecture** principles combined with **GetX** for state management and routing.  
Key layers include:
- **Modules:** Separate folders for `home`, `product`, `cart`, `auth` (login/register)
- **Controllers:** Manage all business logic
- **Views:** UI components
- **Models:** Data structures like `ProductModel` and `CartModel`
- **Data:** Static or dynamic data sources

---

## **Getting Started**

### **Prerequisites**
- Flutter SDK >= 3.0
- Dart >= 3.0
- Android Studio or VSCode

### **Installation**
1. Clone the repository:

cd coffee_store_app

Install dependencies:


flutter pub get


Run the app:

flutter run



Project Structure

lib/
├─ app/
│  ├─ data/
│  │  ├─ models/           # ProductModel, CartItem, etc.
│  │  └─ static/           # Static product data
│  ├─ modules/
│  │  ├─ home/
│  │  │  ├─ controllers/   # HomeController
│  │  │  └─ views/         # HomeView
│  │  ├─ product_details/
│  │  │  ├─ controllers/   # ProductDetailsController
│  │  │  └─ views/         # ProductDetailsView
│  │  ├─ cart/
│  │  │  ├─ controllers/   # CartController
│  │  │  └─ views/         # CartView
│  │  ├─ auth/
│  │  │  ├─ controllers/   # LoginController, RegisterController
│  │  │  └─ views/         # LoginView, RegisterView
│  ├─ routes/
│  │  └─ app_pages.dart
│  ├─ theme/
│  │  └─ app_theme.dart
│  └─ widgets/             # Reusable UI widgets (e.g., FormTile)
└─ main.dart


Packages & Technologies
Flutter – Cross-platform UI framework

GetX – State management, routing, dependency injection

SharedPreferences – Local persistence for session and cart

Flutter ScreenUtil – Responsive UI

Dart – Core programming language


Future Improvements
Connect with a real backend API for products and authentication

Add payment gateway integration

Implement user profile editing

Add animations and improved UI transitions

Push notifications for promotions