Bacteria [] colony;
Bacteria bob;
void setup()   
 {      
 	size(300,300);
 	colony = new Bacteria[100];
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {  
 	background(255); 
 	for (int i =0; i < colony.length; i++) {
 		colony[i].move();
 		colony[i].show();
	}
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 150;
 		myY = 150;
 		myColor = color(21, 232, 71);
 	} 
 	void move()
 	{
 		int speedX = (int)(Math.random()*5)-2;
 		int speedY = (int)(Math.random()*5)-2;
 		if (mouseX>180 && mouseY>180 && speedY>0 && speedX>0) {
 			myX = myX + speedX*2;
 			myY = myY + speedY*2;
 		}
 		else if (mouseX>180 && mouseY<120 && speedY>0 && speedX>0) {
 			myX = myX + speedX*2;
 			myY = myY - speedY*2;
 		}
 		else if (mouseX<120 && mouseY<120 && speedY>0 && speedX>0) {
 			myX = myX - speedX*2;
 			myY = myY - speedY*2;
 		}
 		else if (mouseX<120 && mouseY>180 && speedY>0 && speedX>0) {
 			myX = myX - speedX*2;
 			myY = myY + speedY*2;
 		}
 		else {
 			myX = myX + speedX;
 			myY = myY + speedY;
 		}
 	}
 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, 7, 7);
 	}
 }    