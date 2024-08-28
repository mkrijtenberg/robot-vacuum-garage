#include <Arduino.h>
#include <WiFi.h>
#include <WebServer.h>
#include <ESP32Servo.h>
#include <WiFiManager.h>

Servo myservo;  // create servo object to control a servo
// twelve servo objects can be created on most boards

// GPIO the servo is attached to
static const int servoPin = 13;

WebServer server(80); // Server on port 80

unsigned long previousMillis = 0;
unsigned long interval = 30000;

void handleServo() {
  if (server.hasArg("value")) {
    String valueString = server.arg("value");
    myservo.write(valueString.toInt());
    Serial.println(valueString);
  }
  server.send(200, "text/plain", "OK");
}

void handleReset() {
  server.send(200, "text/plain", "OK");
  
  WiFiManager wifiManager;
  wifiManager.disconnect();

  // Erase WiFi credentials.
  wifiManager.resetSettings();
  
  // Restart
  ESP.restart();
}

void setup() {
  Serial.begin(921600);

    // Initialize WiFiManager
  WiFiManager wifiManager;
  wifiManager.autoConnect();

  // attaches the servo on the servoPin to the servo object
  myservo.attach(servoPin);

  // Start REST server
  server.on("/set", HTTP_POST, handleServo);
  server.on("/reset", HTTP_GET, handleReset);
  server.begin();
}

void loop(){
  server.handleClient();
}