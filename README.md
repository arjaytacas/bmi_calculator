# 🧮 BMI Calculator App

A sleek and interactive BMI Calculator built with Flutter. This app allows users to input personal metrics, receive their Body Mass Index (BMI), and understand their health category—based on standard clinical guidelines.

---

## 📦 Features

- 🚹🚺 Gender selector with stylish toggle cards
- 📏 Height input slider (in centimeters)
- ⚖️ Weight and age stepper buttons for dynamic control
- 📊 BMI calculation logic with feedback and interpretation
- 🖼️ Results screen showing numerical BMI and advice
- 🎨 Custom Material Design theme with pastel and plum aesthetics

---

## 🚀 Getting Started

### Requirements

- Flutter SDK 3.0 or higher
- Android/iOS simulator or physical device
- Internet not required (fully offline app)

### Run the App

```bash
git clone https://github.com/<your-username>/bmi_calculator_flutter.git
cd bmi_calculator_flutter
flutter pub get
flutter run
```

---

## 🗂️ File Structure
```bash
lib/
├── main.dart               # App entry and theme setup
├── inputpage.dart          # UI for gender, height, weight, and age inputs
├── calculatepage.dart      # BMI result screen and interpretation
└── calculatorbrain.dart    # Core logic for BMI computation
```

---

## 💡 Core Logic
The app computes BMI using:
```dart
double bmi = weight / pow(height / 100, 2);
```
This result is fed into calculatorbrain.dart to classify the user’s BMI:

•🟩 Underweight: BMI < 18.5
•🟨 Normal: 18.5 ≤ BMI < 24.9
•🟧 Overweight: 25.0 ≤ BMI < 29.9
•🟥 Obese: BMI ≥ 30.0

Each category includes tailored advice and interpretation text.

---

## ✨ Design Highlights

•Primary colors:
    ○Midnight Plum #242038
    ○Lavender Purple #9067C6
    ○Soft Ivory #F7ECE1
•Typography and icon themes ensure readability and visual balance
•Modular widgets for easy scalability and reuse

---

## 🧑‍💻 Author
Arjay Christopher J. Tacas Biological Engineer • Full-stack Developer • Data Strategist Bridging technical precision with creative presentation.

---

## 📄 License
This project is licensed under the MIT License. Feel free to fork, customize, and share with attribution!

---

## 📷 Screenshots
You can add screenshots of both input and result pages to visually showcase how users interact with the app. Let me know if you'd like captions or alt text!

---

## 🤝 Contributing
Pull requests are welcome! If you spot an issue or want to add features like BMI history tracking, theme toggling, or custom avatars, fork the repo and share your ideas.