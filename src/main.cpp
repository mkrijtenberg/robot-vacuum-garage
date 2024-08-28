#include <Arduino.h>
#include <WiFi.h>
#include <WebServer.h>
#include <ESP32Servo.h>

Servo myservo;  // create servo object to control a servo
// twelve servo objects can be created on most boards

// GPIO the servo is attached to
static const int servoPin = 13;

// Replace with your network credentials
const char* ssid     = "xxx";
const char* password = "xxx";

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

void WiFiStationConnected(WiFiEvent_t event, WiFiEventInfo_t info){
  Serial.println("Connected to AP successfully!");
}

void WiFiGotIP(WiFiEvent_t event, WiFiEventInfo_t info){
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void WiFiStationDisconnected(WiFiEvent_t event, WiFiEventInfo_t info){
  Serial.println("Disconnected from WiFi access point");
  Serial.print("WiFi lost connection. Reason: ");
  Serial.println(info.wifi_sta_disconnected.reason);
  Serial.println("Trying to Reconnect");
  WiFi.begin(ssid, password);
}

void initWiFi() {
  WiFi.onEvent(WiFiStationConnected, WiFiEvent_t::ARDUINO_EVENT_WIFI_STA_CONNECTED);
  WiFi.onEvent(WiFiGotIP, WiFiEvent_t::ARDUINO_EVENT_WIFI_STA_GOT_IP);
  WiFi.onEvent(WiFiStationDisconnected, WiFiEvent_t::ARDUINO_EVENT_WIFI_STA_DISCONNECTED);

  // Connect to Wi-Fi network with SSID and password
  WiFi.begin(ssid, password);
}

void setup() {
  Serial.begin(921600);

  // Start WiFi connection
  initWiFi();

  // attaches the servo on the servoPin to the servo object
  myservo.attach(servoPin); 
  
  // Start REST server
  server.on("/set", HTTP_POST, handleServo);
  server.begin();
}

void loop(){
  server.handleClient();
}