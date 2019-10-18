Bacteria [] colony;
Bacteria bob;
void setup()   
 {      
 	size(300,300);
 	background(0);
 	colony = new Bacteria[100];
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {  
 	background(0); 
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
 		myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
 	} 
 	void move()
 	{
 		int speedX = (int)(Math.random()*5)-2;
 		int speedY = (int)(Math.random()*5)-2;
 		if (mouseX>200 && mouseY>200 && speedY>0 && speedX>0) {
 			myX = myX + speedX*2;
 			myY = myY + speedY*2;
 		}
 		else if (mouseX>200 && mouseY<100 && speedY>0 && speedX>0) {
 			myX = myX + speedX*2;
 			myY = myY - speedY*2;
 		}
 		else if (mouseX<100 && mouseY<100 && speedY>0 && speedX>0) {
 			myX = myX - speedX*2;
 			myY = myY - speedY*2;
 		}
 		else if (mouseX<100 && mouseY>200 && speedY>0 && speedX>0) {
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
 		fill(myColor);
 		ellipse(myX, myY, 7, 7);
 	}
 }    