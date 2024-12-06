#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClientSecureBearSSL.h>

// Configurações de rede
const char* ssid = "LHAR";
const char* password = "27021971";

// URL e cabeçalhos da API Supabase
const char* apiUrl = "https://moadhexswymltqnffoer.supabase.co/rest/v1/dadosColetados";
const char* apikey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1vYWRoZXhzd3ltbHRxbmZmb2VyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc0NDQyNjUsImV4cCI6MjA0MzAyMDI2NX0.oHKVOkSK2MQi0iPzHJHvbD9HxcH6_LiTGcOkJhymwhM";
const char* bearerToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1vYWRoZXhzd3ltbHRxbmZmb2VyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjc0NDQyNjUsImV4cCI6MjA0MzAyMDI2NX0.oHKVOkSK2MQi0iPzHJHvbD9HxcH6_LiTGcOkJhymwhM";

// Variável para armazenar o valor de voltagem e amperagem fixa
int voltagem = 0;
int amperagem = 15; // Amperagem fixa

// Timer para controle de envio
unsigned long previousMillis = 0;
const long interval = 5000; // Intervalo de 5 segundos para envio dos dados


void setup() {
  Serial.begin(115200);
  WiFi.begin(ssid, password);
  
  // Conectando ao Wi-Fi
  Serial.print("Conectando ao Wi-Fi...");
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(".");
  }
  Serial.println("Conectado!");

  // Inicializar a comunicação Serial com o Arduino
  Serial.println("Monitorando dados...");
}

void loop() {
  // Verificar se já passou o tempo suficiente para o próximo envio
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis;

    // Simular a leitura da voltagem (substitua esta parte pela leitura real)
    voltagem = analogRead(A0);  // Exemplo de leitura de voltagem do pino A0

    // Configuração da conexão HTTPS
    std::unique_ptr<BearSSL::WiFiClientSecure> client(new BearSSL::WiFiClientSecure);
    client->setInsecure(); // Ignorar verificação de certificado

    // Inicializar HTTPClient para fazer a requisição POST
    HTTPClient https;
    https.begin(*client, apiUrl);
    
    // Definir os cabeçalhos
    https.addHeader("Content-Type", "application/json");
    https.addHeader("apikey", apikey);
    https.addHeader("Authorization", String("Bearer ") + bearerToken);
    https.addHeader("Prefer", "return=minimal");

    // Criar o corpo da requisição com os dados recebidos
    String payload = "{\"voltagem\": " + String(voltagem) + ", \"amperagem\": " + String(amperagem) + "}";

    // Enviar a requisição POST
    int httpResponseCode = https.POST(payload);

    // Verificar a resposta
    if (httpResponseCode > 0) {
      String response = https.getString();
      Serial.println("Dados enviados com sucesso!");
      Serial.println(response);
    } else {
      Serial.print("Erro ao enviar: ");
      Serial.println(httpResponseCode);
    }

    // Finalizar a conexão
    https.end();
  }
}
