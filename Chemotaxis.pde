Bacteria bob;
void setup()   
 {     
 	size(300,300);
 	background(0);
 	bob = new Bacteria();
 }   
 void draw()   
 {  
 	background(0);  
 	bob.move();
 	bob.show();
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria()
 	{
 		myX = 150;
 		myY = 150;
 	} 
 	void move()
 	{
 		int speedX = (int)(Math.random()*5)-2;
 		int speedY = (int)(Math.random()*5)-2;
 		if (mouseX > 150 && speedX > 0) {
 			myX = myX + speedX*2;
 			myY = myY + speedY;
 		}
 		else {
 			myX = myX + speedX;
 			myY = myY + speedY;
 		}
 	}
 	void show()
 	{
 		fill(255);
 		ellipse(myX, myY, 25,25);
 	}
 }    