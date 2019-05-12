#include <GSM.h>
// Include the GSM library
#define PINNUMBER ""
char senderNumber[20];
String stringOne;
int motorStatus=0;
char d[20];
int i=0;
char c;
//int motorPin = 13;
int relay = 8;
char remoteNum[20]= "9841736719";  
char txtMsg[20]="SWITCH ON";
char txtMsg1[20]="SWITCH OFF";
char txtMsg2[20]="OFF";
char txtMsg3[20]="ON";
// initialize the library instance
GSM gsmAccess;
GSM_SMS sms;

void setup() {
  // initialize serial communications and wait for port to open:
  Serial.begin(9600);
 // pinMode(motorPin, OUTPUT);
  pinMode(relay, OUTPUT);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
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
  else if((r>950 )&& (motorStatus==0))
  {
  //Serial.print("Enter a mobile number: ");
  //char remoteNum[20];  // telephone number to send sms
  //readSerial(remoteNum);
  //remoteNum="+919841203442";
  Serial.println(remoteNum);

  // sms text
  //Serial.print("Now, enter SMS content: ");
  //char txtMsg[200];
 // readSerial(txtMsg);
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
  else if((r>1000 )&& (motorStatus==0))
  {
  //Serial.print("Enter a mobile number: ");
  //char remoteNum[20];  // telephone number to send sms
  //readSerial(remoteNum);
  //remoteNum="+919841203442";
  Serial.println(remoteNum);
digitalWrite(relay, HIGH);
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
else if((r<900 )&& (motorStatus==1))
  {
  //Serial.print("Enter a mobile number: ");
  //char remoteNum[20];  // telephone number to send sms
  //readSerial(remoteNum);
  //remoteNum="+919841203442";
  Serial.println(remoteNum);

  // sms text
  //Serial.print("Now, enter SMS content: ");
  //char txtMsg[200];
 // readSerial(txtMsg);
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
else if((r<500 )&& (motorStatus==1))
  {
  //Serial.print("Enter a mobile number: ");
  //char remoteNum[20];  // telephone number to send sms
  //readSerial(remoteNum);
  //remoteNum="+919841203442";
  Serial.println(remoteNum);
digitalWrite(relay, LOW);
motorStatus=0;
  // sms text
  //Serial.print("Now, enter SMS content: ");
  //char txtMsg[200];
 // readSerial(txtMsg);
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
}
void motor()
{
  delay(30000);
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
