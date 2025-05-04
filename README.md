# 🍽️ Recipe Swipe Cards

A modern and elegant Flutter app that displays recipe cards with swipe gestures like Tinder. 
Each card features an image, title, and description. Perfect for practicing layout, gesture detection, and asset handling in Flutter.

---

## ✨ Features

- 👈 Swipe to dismiss (left/right)
- 🖼️ Local image support via `Image.asset`
- 🧱 Layout using `Stack`, `Card`, `Column`
- 📱 Responsive one-screen UI
- ⚡ Smooth animations and transitions

---

## 📦 Project Structure

```
lib/
 └── main.dart
assets/
 └── images/
     ├── image1.jpg
     ├── image2.jpg
     ├── image3.jpg
     ├── image4.jpg
     └── image5.jpg
```

---

## 🚀 Getting Started

1. **Clone the repo**
   ```bash
   git clone https://github.com/bektas-sari/recipe_swipe_cards.git
   cd recipe_swipe_cards
   ```

2. **Add 5 food images**
    - Place them in `assets/images/` as `image1.jpg` to `image5.jpg`

3. **Update `pubspec.yaml`**
   ```yaml
   flutter:
     assets:
       - assets/images/image1.jpg
       - assets/images/image2.jpg
       - assets/images/image3.jpg
       - assets/images/image4.jpg
       - assets/images/image5.jpg
   ```

4. **Run the app**
   ```bash
   flutter pub get
   flutter run
   ```

---

## 📸 Screenshots

_Add screenshots here after testing on device._

---

## 🛠 Built With

- Flutter (Dart)
- Material 3
- `Dismissible`, `Stack`, `Card`, `Image.asset`

---

## 📬 Contact

**Developer:** Bektas Sari  
📧 [bektas.sari@gmail.com](mailto:bektas.sari@gmail.com)  
🔗 [github.com/bektas-sari](https://github.com/bektas-sari)

---

## 📄 License

MIT License © 2024 Bektas Sari  
Use, modify, and distribute freely.


A modern Flutter app that showcases recipe cards with swipe-to-dismiss interactions. Uses local assets for images and features clean, responsive UI design. Great for practicing gestures, layouts, and state management in Flutter.
