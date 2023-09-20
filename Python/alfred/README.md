# Jarvis Voice Assistant

Jarvis is a Python-based voice assistant that can perform various tasks, including answering questions, playing music, providing quotes, translating languages, and more. It uses speech recognition, text-to-speech, and several APIs to offer a range of functionalities.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [License](#license)

## Introduction

Jarvis Voice Assistant is a simple project that demonstrates how to create a voice-controlled assistant in Python. It utilizes popular libraries and APIs to enable voice interactions with the assistant. You can use it to perform tasks and interact with your computer through voice commands.

## Features

- **Voice Recognition:** Jarvis can understand and interpret voice commands from the user using the SpeechRecognition library.
- **Text-to-Speech:** It can convert text responses to speech using the pyttsx3 library, allowing it to communicate with the user.
- **Wikipedia Search:** Jarvis can search and provide summaries from Wikipedia for user queries.
- **YouTube Music Player:** You can ask Jarvis to play music on YouTube.
- **Language Translation:** It can translate text from one language to another using the Google Translate API.
- **Calculator:** Jarvis can perform simple calculations based on user input.
- **Quotes:** It can provide random quotes from various categories like series, anime, and programming.
- **Time Display:** Jarvis can tell you the current time.

## Getting Started

To run Jarvis on your machine, follow these steps:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/stranger133/alfred.git

2. Change your working directory to the project folder:

    ```bash
    cd alfred

3. Install the project dependencies:
    ```bash
      pip install -r requirements.txt

4. Run the Jarvis Voice Assistant:

    ```bash
    python alfred.py

Start giving voice commands to Jarvis.

## Prerequisites

Before using Jarvis Voice Assistant, ensure you have the following prerequisites installed on your machine:

- Python 3.x
- Required Python packages (installed via pip):
  - PyPDF2
  - pyttsx3
  - pywhatkit
  - speech_recognition
  - wikipedia
  - quoters
  - googlesearch-python
  - googletrans
  - pyMorseTranslator

## Usage

Once Jarvis is running, you can interact with it by speaking voice commands. Examples of supported commands include:

- "Hello, what's your name?"
- "Play [song name] on YouTube."
- "What is [your query]?"
- "Translate [text] to [language]."
- "Calculate [math expression]."
- "Tell me a quote from [category]."
- "What time is it?"

Jarvis will respond to your commands and perform the requested actions.

## License

This project is licensed under the MIT License.
