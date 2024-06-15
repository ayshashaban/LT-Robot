// Define pins for motor driver 
int enA = 9; 
int in1 = 4; 
int in2 = 5; 
int enB = 10; 
int in3 = 2; 
int in4 = 3; 
 
// Define pins for Ir sensor 
int mostleft = 6;
int leftsensor =  7;
int middle = 8;
int rightsensor = 11; 
int mostright = 12;

void setup() { 
  pinMode(enA, OUTPUT); 
  pinMode(in1, OUTPUT); 
  pinMode(in2, OUTPUT); 
  pinMode(enB, OUTPUT); 
  pinMode(in3, OUTPUT); 
  pinMode(in4, OUTPUT); 
  pinMode(mostleft, INPUT); 
  pinMode(leftsensor, INPUT); 
  pinMode(middle, INPUT); // Corrected the variable name here
  pinMode(rightsensor, INPUT); 
  pinMode(mostright, INPUT); 

 
  Serial.begin(9600); // Initialize serial communication 
} 
 
void loop() { 
  int mostleftReading = digitalRead(mostleft);
  int leftReading = digitalRead(leftsensor); 
  int middleReading = digitalRead(middle);
  int rightReading = digitalRead(rightsensor); 
  int mostrightReading = digitalRead(mostright);
  
 
  if (mostleftReading == 0 && leftReading == 0 && middleReading == 1 && rightReading == 0 && mostrightReading == 0 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, HIGH); 
    digitalWrite(in2, LOW); 
    digitalWrite(in3, HIGH); 
    digitalWrite(in4, LOW); 
    delay(1.7); 
      Serial.print("Move Forward: "); 
 
  } else if (mostleftReading == 0 && leftReading == 1 && middleReading == 0 && rightReading == 0 && mostrightReading == 0 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, HIGH); 
    digitalWrite(in2, LOW); 
    digitalWrite(in3, LOW); 
    digitalWrite(in4, HIGH); 
    delay(10); 
      Serial.print("Left Sensor: "); 
 
 } else if (mostleftReading == 0 && leftReading == 0 && middleReading == 0 && rightReading == 1 && mostrightReading == 0 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, LOW); 
    digitalWrite(in2, HIGH); 
    digitalWrite(in3, HIGH); 
    digitalWrite(in4, LOW); 
    delay(10); 
      Serial.print(", Right Sensor: "); 
  
  } else if (mostleftReading == 1 && leftReading == 0 && middleReading == 0 && rightReading == 0 && mostrightReading == 0 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, HIGH); 
    digitalWrite(in2, LOW); 
    digitalWrite(in3, LOW); 
    digitalWrite(in4, HIGH); 
    delay(10); 
      Serial.print("most Left Sensor: "); 
  
  } else if (mostleftReading == 0 && leftReading == 0 && middleReading == 0 && rightReading == 0 && mostrightReading == 1 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, LOW); 
    digitalWrite(in2, HIGH); 
    digitalWrite(in3, HIGH); 
    digitalWrite(in4, LOW); 
    delay(10); 
      Serial.print("most Right Sensor: "); 

} else if (mostleftReading == 1 && leftReading == 1 && middleReading == 0 && rightReading == 0 && mostrightReading == 0 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, HIGH); 
    digitalWrite(in2, LOW); 
    digitalWrite(in3, LOW); 
    digitalWrite(in4, HIGH); 
    delay(10); 
      Serial.print("most Left & left Sensor: ");

} else if (mostleftReading == 0 && leftReading == 0 && middleReading == 0 && rightReading == 1 && mostrightReading == 1 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, LOW); 
    digitalWrite(in2, HIGH); 
    digitalWrite(in3, HIGH); 
    digitalWrite(in4, LOW); 
    delay(10); 
      Serial.print("most Right & right Sensor: "); 

} else if (mostleftReading == 1 && leftReading == 1 && middleReading == 1 && rightReading == 0 && mostrightReading == 0 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, HIGH); 
    digitalWrite(in2, LOW); 
    digitalWrite(in3, LOW); 
    digitalWrite(in4, HIGH); 
    delay(10); 
      Serial.print("most Left & left & mid Sensor: "); 

} else if (mostleftReading == 0 && leftReading == 0 && middleReading == 1 && rightReading == 1 && mostrightReading == 1 ) { 
    analogWrite(enA, 90); 
    analogWrite(enB, 90); 
    digitalWrite(in1, LOW); 
    digitalWrite(in2, HIGH); 
    digitalWrite(in3, HIGH); 
    digitalWrite(in4, LOW); 
    delay(10); 
      Serial.print("most Right & right & mid Sensor: "); 

  analogWrite(enA, 0); 
  analogWrite(enB, 0); 
  digitalWrite(in1, LOW); 
  digitalWrite(in2, LOW); 
  digitalWrite(in3, LOW); 
  digitalWrite(in4, LOW); 
  delay(2.7); 
} 
}
