# ReAMP: Athlete Recovery

ReAMP is a research-driven recovery app designed to help young athletes understand their recovery habits, identify patterns, and improve their recovery through personalized, research-driven recommendations.

## Why I Built ReAMP

I built ReAMP because I wanted to put my research into practice.

Before developing the app, I surveyed **303 adolescent athletes across 12 U.S. states, Washington, D.C., and Canada** to investigate factors associated with athlete readiness. I conducted statistical analysis in **jamovi** and developed a **Performance Readiness Index (PRI)** to examine how recovery behaviors and environmental support relate to athletes' perceived readiness.

This research led to a **proximal-distal framework for understanding athlete readiness**, which is currently undergoing the publication review process.

Rather than leaving this research on a page, I wanted to build something that could help athletes understand their own recovery patterns and apply research-informed insights to their everyday lives.

## How ReAMP Works

### Daily Check-In

Athletes record self-reported recovery measures including:

- Sleep
- Mood
- Energy
- Focus
- Fatigue
- Soreness

These responses form the foundation of the day's recovery analysis.

### Recovery Scores

ReAMP generates four mini recovery scores:

- **Sleep Score**
- **Mood Score**
- **Energy Score**
- **Body Soreness Score**

It also generates an **Overall Recovery Score** that combines the daily recovery measures into a single value.

### Weekly Trends

Athletes can view their recovery data over time to identify changes in their habits and responses.

Rather than focusing on a single day, ReAMP helps athletes recognize longer-term patterns in their recovery.

### Pattern Analysis

Recovery factors do not exist independently.

ReAMP analyzes relationships between different recovery measures to identify patterns and potential disconnects.

For example, an athlete may report getting sufficient sleep while continuing to experience low energy. ReAMP can identify this relationship and surface it as a pattern for the athlete to pay attention to.

### Personalized Recommendations

Based on these patterns, ReAMP generates **personalized, research-driven recommendations**.

These recommendations are designed to help athletes:

- Understand relationships between their recovery responses
- Identify areas they may want to pay closer attention to
- Recognize patterns that may otherwise be easy to overlook
- Connect their own experiences with findings from recovery research

ReAMP is designed as a **self-reflection and educational tool**, not as a medical diagnostic or treatment tool.

## Research Foundation

ReAMP grew directly out of my research on adolescent athlete readiness.

### Athlete Readiness Study

- **Participants:** 303 adolescent athletes
- **Geographic coverage:** 12 U.S. states, Washington, D.C., and Canada
- **Analysis software:** jamovi

I analyzed relationships between recovery behaviors, environmental support, and perceived athlete readiness.

The analysis used **principal component analysis (PCA)** to develop the Performance Readiness Index, followed by regression analysis to examine factors associated with readiness.

The resulting work contributed to a **proximal-distal framework** for understanding athlete readiness and the factors that may influence it.

The research is currently undergoing the publication review process.

## Technology

ReAMP was built using:

- **FlutterFlow** — application interface and development
- **Firebase** — backend infrastructure and data storage
- **Dart** — custom functions and widgets
- **iOS** — mobile application

I chose FlutterFlow primarily because of its easy Firebase integration and the ability to move efficiently between the application's interface and backend.

Although FlutterFlow provided the core development environment, I also implemented **custom Dart functions and widgets** where additional functionality was needed.

## Development

ReAMP was developed independently from concept to implementation.

I designed the application's structure, user experience, recovery scoring system, recommendation logic, and research-to-product translation myself.

When I encountered technical challenges outside my existing experience, I consulted students in the **University of Virginia Department of Computer Science** for guidance.

The goal was not simply to build an app that records data, but to translate a research framework into an interface that a young athlete could actually understand and use.

## Key Features

| Feature | Purpose |
| --- | --- |
| Daily Check-In | Record self-reported recovery measures |
| Recovery Scores | Summarize individual aspects of recovery |
| Overall Recovery Score | Provide a daily snapshot of recovery |
| Weekly Trends | Track changes across multiple check-ins |
| Pattern Analysis | Identify relationships between recovery measures |
| Personalized Recommendations | Translate identified patterns into research-driven suggestions |
| Firebase Backend | Store and retrieve athlete check-in data |

## Project Structure

This repository contains the development files and custom code used to build ReAMP.

> **Note:** The application was developed primarily in FlutterFlow, so not every component of the application is represented as conventional handwritten Flutter code.

## Future Development

Potential future directions for ReAMP include:

- Expanding the research base underlying recommendations
- Improving longitudinal pattern detection
- Refining personalized recommendations
- Expanding visualization of recovery trends
- Further validating the relationship between app-derived patterns and athlete readiness
- Continuing to translate research findings into accessible tools for young athletes

## Disclaimer

ReAMP is intended for **educational and self-reflection purposes**. Recovery scores and recommendations are based on self-reported information and should not be interpreted as medical diagnoses or medical advice.

Athletes with concerns about pain, injury, illness, or other health conditions should consult an appropriate qualified healthcare professional.

## About the Developer

**Annabelle Kim** is a student researcher, athlete, and founder of **Amplify My Potential (A.M.P.)**, a nonprofit focused on expanding access to research-informed athletic development for young athletes.

ReAMP grew from the intersection of my interests in **athlete development, recovery research, neuroscience, and technology**.

The project reflects a simple idea:

> **Research should not just sit on a page. It should become something people can use.**
