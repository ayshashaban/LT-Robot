// Define pins for motor driver 
int enA = 6; 
int in1 = 3; 
int in2 = 2; 
int enB = 5; 
int in3 = 1; 
int in4 = 0; 
 
// Define pins for Ir sensor 
int mostleft = 13;
int leftsensor =  12;
int middle = 11;
int rightsensor = 10; 
int mostright = 9;

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
