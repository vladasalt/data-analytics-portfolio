# 🌤 Weather App — Front-End Project

A lightweight weather interface built with **HTML, CSS and JavaScript**. The project demonstrates the fundamentals of front-end development: semantic HTML structure, responsive viewport setup, custom styling, DOM manipulation and user interaction.

> **Project note:** this version is a front-end practice project rather than a live weather-data application. The displayed forecast is static, while the **Change city** interaction updates the displayed city and temperature from user input.

## 🎯 Project Overview

The goal of the project was to create a simple, clean weather interface that presents:

- current weather conditions for a selected city;
- minimum and maximum temperatures;
- a short multi-day forecast;
- a simple interactive city/temperature input;
- a clear, minimal visual hierarchy.

The original implementation is contained in a single `index.html` file, keeping the project intentionally simple and easy to understand.

## 🛠️ Technologies

| Technology | Use |
|---|---|
| **HTML5** | Page structure and content |
| **CSS3** | Layout, typography, buttons, hover states and styling |
| **JavaScript** | User interaction and DOM updates |
| **GitHub** | Version control and project hosting |

## ✨ Features

### Current weather display

The interface presents a city, current temperature and a minimum/maximum temperature range.

### Forecast section

A compact three-day forecast is displayed using weather emojis, temperature ranges and simple list-based cards.

### Interactive city change

Clicking **Change city** opens prompts for the city and temperature. JavaScript then updates the main heading dynamically.

The implementation also changes the weather emoji depending on whether the entered temperature is above or below zero.

### Visual interaction

The interface includes subtle hover effects on forecast items and the main button, with rounded elements and a simple blue-and-white visual style.

## 🧠 Key Learning Outcomes

This project demonstrates practical understanding of:

- HTML document structure;
- CSS selectors and component styling;
- typography and spacing;
- button and hover interactions;
- JavaScript variables and conditional logic;
- `querySelector()` and DOM manipulation;
- event listeners;
- template literals;
- collecting user input with `prompt()`.

## 🔍 How It Works

The application follows a simple interaction flow:

```text
User opens the page
        ↓
Weather interface is displayed
        ↓
User clicks "Change city"
        ↓
JavaScript requests city + temperature
        ↓
Temperature is evaluated
        ↓
Main heading is updated dynamically
```

## 📌 Current Limitations

The current version does **not** connect to a live weather API. Weather values shown in the forecast are therefore example/static values rather than live observations.

The interaction also uses browser prompts rather than a dedicated search form.

These limitations reflect the project's role as a front-end practice exercise rather than a production weather service.

## 🚀 Potential Improvements

A future version could extend the project by:

1. connecting to a real weather API;
2. adding city search with a proper input field;
3. displaying live temperature, humidity and wind speed;
4. adding a multi-day forecast from API data;
5. adding loading and error states;
6. separating HTML, CSS and JavaScript into dedicated files;
7. improving mobile responsiveness and accessibility;
8. adding a deployed live demo.

## 📁 Original Project

The original implementation is available in the separate [`weather-app-1`](https://github.com/vladasalt/weather-app-1) repository.

The portfolio version documents the project in a consistent format alongside the other projects in this portfolio.

## 💼 Portfolio Value

Although small in scope, this project demonstrates the ability to turn a simple product idea into a working interactive web interface. It provides evidence of foundational **HTML, CSS and JavaScript** skills and can serve as an early front-end project alongside the more data-focused projects in this portfolio.

---

**Project:** Weather App  
**Focus:** Front-End Development  
**Stack:** HTML · CSS · JavaScript
