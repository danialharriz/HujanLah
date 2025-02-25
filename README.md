# 🌧 HujanLah - Simple Weather App (Progress 40%)

HujanLah is a lightweight weather app built using **Flutter**. It provides real-time weather updates based on your current location, fetching data from a weather API.

## 🚀 Features
- 🌍 Get real-time weather updates based on location
- 📍 Automatic location detection
- 🌡 Temperature in Celsius
- ☁️ Weather conditions (e.g., cloudy, sunny, rainy)
- 🔄 Refresh button to update the weather
- 🎨 Beautiful UI with **Inter** font

## 🛠 Tech Stack
- **Flutter** (Dart)
- **OpenWeatherMap API** (or any weather API)
- **Geolocator** (for location services)

## 📦 Installation
1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/HujanLah.git
   cd HujanLah
   ```
2. **Install dependencies:**
   ```sh
   flutter pub get
   ```
3. **Run the app:**
   ```sh
   flutter run
   ```

## 🔑 API Setup
1. Get a free API key from [OpenWeatherMap](https://openweathermap.org/).
2. Add your API key in `lib/services/weather_service.dart`:
   ```dart
   final String apiKey = "YOUR_API_KEY";
   ```

## 🖼 Screenshots
| Home Screen |
|------------|
| ![HujanLah Screenshot](assets/screenshots/home.png) |

## 📜 License
This project is open-source and licensed under the **MIT License**.

---

💡 **Feel free to contribute, suggest improvements, or report issues!**

