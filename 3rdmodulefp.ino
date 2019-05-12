#include <GSM.h>
#include <Wire.h>
#include <Adafruit_BMP085.h>
Adafruit_BMP085 bmp;
// Include the GSM library
#define PINNUMBER ""
char senderNumber[12];
String stringOne;
int motorStatus=0;
char d[12];
int i=0;
char c;
int relay = 8;
char remoteNum[12]= "9841736719";  
GSM gsmAccess;
GSM_SMS sms;

void setup() {
  // initialize serial communications and wait for port to open:
  Serial.begin(9600);
  //pinMode(motorPin, OUTPUT);
  pinMode(relay, OUTPUT);
       if (!bmp.begin()) {
  Serial.println("Could not find a valid BMP085 sensor, check wiring!");
      }
  Serial.println("SMS Messages Sender");

  // connection state
  boolean notConnected = true;

  // Start GSM shield
  // If your SIM has PIN, pass it as a parameter of begin() in quotes
  while (notConnected) {
    if (gsmAccess.begin(PINNUMBER) == GSM_READY) {
      notConnected = false;
    } else {
      Serial.println("Not connected");
      delay(1000);
    }
  }

  Serial.println("GSM initialized");
}

void loop() {
char c;
char txtMsg[10]="SWITCH ON";
char txtMsg1[10]="SWITCH OFF";
char txtMsg2[5]="OFF";
char txtMsg3[5]="ON";
 int r = analogRead(A0);
  Serial.println(r);
  delay(30000);
  // If there are any SMSs available()
  if (sms.available()) {
    Serial.println("Message received from:");

    // Get remote number
    sms.remoteNumber(senderNumber, 20);
    Serial.println(senderNumber);

    // An example of message disposal
    // Any messages starting with # should be discarded
    if (sms.peek() == '#') {
      Serial.println("Discarded SMS");
      sms.flush();
    }
 i=0;
    // Read message bytes and print them
    while (c = sms.read()) {
      Serial.print(c);
      d[i]=c;
      i++;
    }
    Serial.println(d);
    stringOne="";
  stringOne = String(d);
memset(d, 0, sizeof d);
  //stringTwo = String(txtMsg);
    if((stringOne == "SWITCH ON")&&(motorStatus==0))
    {
digitalWrite(relay, HIGH);
motorStatus=1;
stringOne="";
      Serial.println("hi raghav SMS");
      
    Serial.println("\nEND OF MESSAGE");

    // Delete message from modem memory
    sms.flush();
    Serial.println("MESSAGE DELETED");
   motor();
    }
    else if((stringOne == "SWITCH OFF")&&(motorStatus==1))
    {
digitalWrite(relay, LOW);
motorStatus=0;
stringOne="";
      Serial.println("hi raghav SMS low");
      
    Serial.println("\nEND OF MESSAGE");

    // Delete message from modem memory
    sms.flush();
    Serial.println("MESSAGE DELETED");
   motor();
    }
   stringOne="";
    Serial.println("\nEND OF MESSAGE");

    // Delete message from modem memory
    sms.flush();
    Serial.println("MESSAGE DELETED");
  }
  else if((r<200)&&(r>100)&&(motorStatus==1))
  {
  //remoteNum="+919841203442";
  Serial.println(remoteNum);
  Serial.println("SENDING");
  Serial.println();
  Serial.println("Message:");
  //txtMsg="switch on the motor";
  Serial.println(txtMsg1);

  // send the message
  sms.beginSMS(remoteNum);
  sms.print(txtMsg1);
  sms.endSMS();
  Serial.println("\nCOMPLETE!\n");
}
  else if((r<50 )&& (motorStatus==1))
  {
  //Serial.print("Enter a mobile number: ");
  //char remoteNum[20];  // telephone number to send sms
  //readSerial(remoteNum);
  //remoteNum="+919841203442";
  Serial.println(remoteNum);
digitalWrite(relay, LOW);
  Serial.println("SENDING");
  Serial.println();
  Serial.println("Message:");
  //txtMsg="switch on the motor";
  Serial.println(txtMsg2);

  // send the message
  sms.beginSMS(remoteNum);
  sms.print(txtMsg2);
  sms.endSMS();
  Serial.println("\nCOMPLETE!\n");
}
else if((r>10 )&&(r<500)&& (motorStatus==0))
  {
  Serial.println(remoteNum);
  Serial.println("SENDING");
  Serial.println();
  Serial.println("Message:");
  //txtMsg="switch on the motor";
  Serial.println(txtMsg);

  // send the message
  sms.beginSMS(remoteNum);
  sms.print(txtMsg);
  sms.endSMS();
  Serial.println("\nCOMPLETE!\n");
}
else if((r>550 )&& (motorStatus==0))
  {
  //Serial.print("Enter a mobile number: ");
  //char remoteNum[20];  // telephone number to send sms
  //readSerial(remoteNum);
  //remoteNum="+919841203442";
  Serial.println(remoteNum);
digitalWrite(relay, HIGH);
motorStatus=0;
  // sms text
  //Serial.print("Now, enter SMS content: ");
  //char txtMsg[200];
 // readSerial(txtMsg);
  Serial.println("SENDING");
  Serial.println();
  Serial.println("Message:");
  //txtMsg="switch on the motor";
  Serial.println(txtMsg3);

  // send the message
  sms.beginSMS(remoteNum);
  sms.print(txtMsg3);
  sms.endSMS();
  Serial.println("\nCOMPLETE!\n");
}
Serial.print("Pressure at sealevel (calculated) = ");
    float b=0;
    b=bmp.readSealevelPressure();
    b=b/100;
    Serial.print(b);
    Serial.println(" mb");
  delay(5000);  // Pause for 5 seconds.
  if(b<1000 && b>900)
  {
  //remoteNum="+919841203442";
  Serial.println(remoteNum);
  Serial.println("SENDING");
  Serial.println();
  Serial.println("Message:");
  //txtMsg="switch on the motor";
  Serial.println("cyclone alert");

  // send the message
  sms.beginSMS(remoteNum);
  sms.print("cyclone alert");
  sms.endSMS();
  Serial.println("\nCOMPLETE!\n");
}
  else if(b<900)
  {
  //remoteNum="+919841203442";
  Serial.println(remoteNum);
  Serial.println("SENDING");
  Serial.println();
  Serial.println("Message:");
  //txtMsg="switch on the motor";
  Serial.println("typhoon alert");

  // send the message
  sms.beginSMS(remoteNum);
  sms.print("typhoon alert");
  sms.endSMS();
  Serial.println("\nCOMPLETE!\n");
}
}
void motor()
{
  delay(10000);
  if (sms.available()) {
    Serial.println("Message received from:");

    // Get remote number
    sms.remoteNumber(senderNumber, 20);
    Serial.println(senderNumber);

    // An example of message disposal
    // Any messages starting with # should be discarded
    if (sms.peek() == '#') {
      Serial.println("Discarded SMS");
      sms.flush();
    }
 i=0;
    // Read message bytes and print them
    while (c = sms.read()) {
      Serial.print(c);
      d[i]=c;
      i++;
    }
    Serial.println(d);
    
  stringOne = String(d);
   
   memset(d, 0, sizeof d);
  //stringTwo = String(txtMsg);
    if((stringOne == "SWITCH OFF") && (motorStatus==1))
    {
digitalWrite(relay, LOW);
stringOne="";
      Serial.println("hi raghav SMS low");
       Serial.println("\nEND OF MESSAGE");
motorStatus=0;
    // Delete message from modem memory
    sms.flush();
    Serial.println("MESSAGE DELETED");
      loop();
    }
   else if((stringOne == "SWITCH ON") && (motorStatus==0))
    {
digitalWrite(relay, HIGH);
stringOne="";
      Serial.println("hi raghav SMS");
       Serial.println("\nEND OF MESSAGE");
motorStatus=1;
    // Delete message from modem memory
    sms.flush();
    Serial.println("MESSAGE DELETED");
      loop();
    }
  else
  {stringOne="";
     Serial.println("\nEND OF MESSAGE");

    // Delete message from modem memory
    sms.flush();
    Serial.println("MESSAGE DELETED");
    motor();
    }
  }
     Serial.println("\nEND OF MESSAGE");

    // Delete message from modem memory
    sms.flush();
    Serial.println("MESSAGE DELETED");
  }
