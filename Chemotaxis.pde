 Walker[] bob;
void setup(){
  size(500, 500);
  bob = new Walker[1000];

  for(int i = 0; i < bob.length; i ++){
    bob[i] = new Walker();
  }
}

void draw(){
  background(0);
    for(int i = 0; i < bob.length; i ++){
       bob[i].show();
       bob[i].walk();
  }
 
}

class Walker{
  int myX, myY;
  Walker(){
    myX = myY = 250;
  }
  void walk(){

    
 	if(mouseX > myX){
 			myX = myX + (int)(Math.random()*11)-2;
 	}else {
 			myX = myX + (int)(Math.random()*11)-8;
 	}

  if(mouseY > myY){
 			myY = myY + (int)(Math.random()*11)-2;
 	}else {
 			myY = myY + (int)(Math.random()*11)-8;
 	}

if(mousePressed){
     myX = myX + (int)(Math.random()*3)-1;
     myY = myY + (int)(Math.random()*3)-1;
 }



  }
  void show(){
    	if(mousePressed){ 
     fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
   }
   ellipse(myX, myY, 30, 30);
  }
}