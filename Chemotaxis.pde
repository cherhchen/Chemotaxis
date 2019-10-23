Bacteria [] colony;
Bacteria bob;
void setup()   
 {      
 	size(310,310);
 	colony = new Bacteria[100];
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {  
 	background(168); 
 	fill(255);
 	ellipse(155,155,300,300);

 	fill(168, 242, 82,100);
 	ellipse(100,100,80,40);
 	fill(173, 168, 95,100);
 	ellipse(100,100,50,30);
 	ellipse(200,200,50,60);
 	rect(140,100,30,3,5);
 	fill(105, 50, 168, 140);
 	ellipse(200,200,10,10);
 	squiggly();

 	for (int i =0; i < colony.length; i++) {
 		colony[i].move();
 		colony[i].show();
	}

 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 150;
 		myY = 150;
 		myColor = color(168, 168, 168,180);
 	} 
 	void move()
 	{
 		int speedX = (int)(Math.random()*5)-2;
 		int speedY = (int)(Math.random()*5)-2;
 		if (mouseX>150 && mouseY>150 && speedY>0 && speedX>0) {
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
 		ellipse(myX, myY, 9, 5);
 	}
 }

 void squiggly() {
 	fill(45, 59, 29,230);
 	ellipse(100,200,30,7);
 	ellipse(102,202,10,15);
 }    