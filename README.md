# Transition Effect Application

## Overview
The **Transition Effect Application** is an interactive ball simulation built with Lua and Solar2D. It allows users to create and manipulate various types of balls on the screen by tapping anywhere. Each generated ball has unique behaviors and interactions, such as moving upwards, downwards, or staying stationary. The balls also have unique properties: "Up" balls can shrink, "Down" balls can rotate, and "Stay" balls will fade out automatically. A real-time heads-up display (HUD) tracks and shows the count of each type of active ball. The balls dynamically update and disappear when they go out of bounds, shrink fully, or complete their fade-out animations.

This project is designed to showcase interactive animations and user-triggered events in a 2D environment using Solar2D.

---

## 📂 Project File
- [Transition Effect Program](https://github.com/EricDelgado993/Transition-Effect-Application/blob/main/Transition%20Effect%20Application/main.lua)

---

## Features

### 1. Ball Creation on Tap
- Tap anywhere on the screen to create a ball with a random size, color, and behavior (Up, Down, or Stay).

### 2. Ball Types and Behaviors
- **Up**: Moves upwards and can be tapped to shrink over time.
- **Down**: Moves downwards and can be tapped to start or stop rotating.
- **Stay**: Remains stationary and fades out after a short delay.

### 3. Dynamic HUD
- A real-time HUD displays the number of active "Up", "Down", and "Stay" balls on the screen, updating automatically as balls are created or removed.

### 4. Interactive Ball Actions
- Tap interactions allow you to:
  - **Shrink** Up balls.
  - **Toggle rotation** for Down balls.

### 5. Random Ball Properties
- Balls are created with randomized attributes such as radius and color, making the visuals dynamic and varied.

### 6. Continuous Updates
- The scene continuously updates at short intervals, moving the balls based on their type and removing them when necessary.

### 7. Automatic Cleanup
- Balls are automatically deleted once they go out of bounds or after specific animations (shrink, fade) are completed.

---

## Application Screenshot
![Screenshot](https://github.com/user-attachments/assets/0a5a88d2-07eb-42a3-b11f-6ff6b0ad2f9c)
