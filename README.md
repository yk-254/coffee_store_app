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



## **Project Structure**

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


## **Packages & Technologies**
Flutter – Cross-platform UI framework
GetX – State management, routing, dependency injection
SharedPreferences – Local persistence for session and cart
Flutter ScreenUtil – Responsive UI
Dart – Core programming language


## **Future Improvements**
Connect with a real backend API for products and authentication
Add payment gateway integration
Implement user profile editing
Add animations and improved UI transitions
Push notifications for promotions




## **Screen Shots**
<img width="222" height="693" alt="Screenshot 2025-12-11 160012" src="https://github.com/user-attachments/assets/4af99e60-4f74-40ea-a0a3-af049483f1de" />
<img width="222" height="693" alt="Screenshot 2025-12-11 160030" src="https://github.com/user-attachments/assets/30d9767a-21da-491f-9e8f-fa4359396730" />
<img width="222" height="693" alt="Screenshot 2025-12-11 160047" src="https://github.com/user-attachments/assets/41f2f928-9efe-402e-8772-a58917c6875d" />
<img width="222" height="693" alt="Screenshot 2025-12-11 160102" src="https://github.com/user-attachments/assets/1e4d0a5d-eafb-4b75-8882-0445e744b0f5" />
<img width="222" height="693" alt="Screenshot 2025-12-11 160115" src="https://github.com/user-attachments/assets/90799c22-c83c-4a66-af45-1c5d00889de7" />
<img width="222" height="693" alt="Screenshot 2025-12-11 160137" src="https://github.com/user-attachments/assets/fbe0eb62-9b58-4eef-bc96-ac12966879b9" />





