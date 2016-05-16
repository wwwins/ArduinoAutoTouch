int PIN = 2;
//int PIN = 9;

int DELAY_TIME = 500;
int WAITING_TIME = 15*1000;
bool WAITING = true;

void setup() {
  // put your setup code here, to run once:
  pinMode(PIN,OUTPUT);
  digitalWrite(PIN,LOW);
  //digitalWrite(PIN,OUTPUT);
}

void loop() {
  loopForRelay();
  //loopForTransistor();
}

// for Transistor
void loopForTransistor() {
  digitalWrite(PIN, HIGH);
  delay(DELAY_TIME);

  digitalWrite(PIN, LOW);
  delay(DELAY_TIME);
}

// for Relay
void loopForRelay() {
  // 需要等個10-20秒才會生效
  if (WAITING) {
    digitalWrite(PIN, HIGH);
    delay(WAITING_TIME);
    WAITING = false;
  }

  pinMode(PIN, HIGH);
  delay(DELAY_TIME);

  pinMode(PIN, LOW);
  delay(DELAY_TIME);
}
