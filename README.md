<b>Transition Effect Application</b>
<br>This Lua Solar2D project creates an interactive ball simulation where users can generate and manipulate different types of balls on the screen. By tapping anywhere, you create a randomly sized and colored ball that exhibits one of three behaviors: moving upwards, moving downwards, or staying stationary. Each ball type has unique interactions—"Up" balls can be shrunk, "Down" balls can be rotated, and "Stay" balls fade out automatically. A real-time heads-up display (HUD) tracks and displays the number of active "Up", "Down", and "Stay" balls. The balls are continuously updated, and they disappear when they move out of bounds, shrink fully, or complete their fade-out animation, keeping the scene dynamic and engaging. This project is ideal for showcasing interactive animations and user-triggered events in a 2D environment using Solar2D.</br>
<br><b>Project File</b></br>
  - [Transition Effect Program](https://github.com/EricDelgado993/Dynamic-Movement/blob/main/Dynamic%20Movement%20Project/Dynamic%20Character%20Movement.py)

<br><b>Features</b></br>
  - <b>Ball Creation on Tap:</b> Tap anywhere on the screen to create a ball with a random size, color, and behavior (up, down, or stay).
  - <b>Ball Types and Behaviors:</b> Three types of balls, each with unique properties:
    - <b>Up:</b> Moves upwards and can be tapped to shrink over time.
    - <b>Down:</b> Moves downwards and can be tapped to start or stop rotating.
    - <b>Stay:</b> Remains stationary and fades out after a short delay.
  - <b>Dynamic HUD:</b> A real-time HUD displays the number of active "Up", "Down", and "Stay" balls on the screen, updating automatically as balls are created or removed.
  - <b>Interactive Ball Actions:</b> Tap interactions allow you to:
    - Shrink <b>Up</b> balls.
    - Toggle rotation for <b>Down</b> balls.
  - <b>Random Ball Properties:</b> Balls are created with randomized attributes like radius and color, making the visuals dynamic and varied.
  - <b>Continuous Updates:</b> The scene continuously updates at short intervals, moving the balls based on their type and removing them when necessary.
  - <b>Automatic Cleanup:</b> Balls are automatically deleted once they go out of bounds or after specific animations (shrink, fade) complete.

<br><b>Application Screenshot</b></br>
