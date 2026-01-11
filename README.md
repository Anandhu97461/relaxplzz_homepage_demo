# K-Store – Flutter UI Demo

This repository contains a Flutter-based implementation of the **K-Store homepage**, developed as part of a UI/UX assessment task based on the provided Figma design.

---

## 📌 Project Overview

- **Design Reference:**  
  https://www.figma.com/design/peDCxGsaeSpnGgLEIfTshx/K-Store

- **Scope:**  
  Develop the **homepage** according to the Figma design within the given timeframe.

- **Platform:**  
  Flutter (Android)

- **Build Type:**  
  Release APK

---

## ✅ Implemented Features

### UI Sections
- Gradient header with:
  - Location selector
  - Cart and notification icons
  - Search bar
- Category grid section with optimized spacing and proportions
- Promotional banner carousel
- Flash Sale and Best Selling product sections (horizontal carousels)
- Special Offer carousel with partial next-card visibility
- Bottom navigation bar

### Functional Behavior
- **Add to Cart interaction**
  - Tapping the **Add** button converts it into a **quantity selector (+ / −)**
  - Quantity updates dynamically per product
- Conditional rendering for discounted products:
  - Old price shown with strike-through when discount is available
  - Clean layout for non-discounted products
- Data-driven UI (units, prices, discounts handled via model)

---

## 🏗️ Project Structure (Simplified)

```
lib/
├── models/
│   └── product.dart
├── screens/
│   └── home_screen.dart
├── widgets/
│   ├── category_item.dart
│   ├── product_card.dart
│   ├── promo_carousel.dart
│   ├── special_offer_card.dart
│   ├── special_offer_carousel.dart
│   └── section_header.dart
└── main.dart
```

---

## 🚀 Build Instructions

To generate the release APK:

```bash
flutter pub get
flutter build apk --release
```

The generated APK will be available at:

```
build/app/outputs/flutter-apk/app-release.apk
```

---

## 📝 Notes

- This project focuses on **UI accuracy, layout structure, and interaction behavior** as per the assessment scope.
- State management is kept minimal and local to widgets for simplicity.
- The codebase is structured for clarity and easy extension if additional screens are required.

---

## 📸 Screenshots

Screenshots of the implemented homepage sections are included separately as part of the submission.

---

## 👤 Author

**Your Name**  
Flutter Developer
