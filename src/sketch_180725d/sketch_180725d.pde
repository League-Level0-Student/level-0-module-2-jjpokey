
 // 4. create three integer variables to  
    //    represent the x, y, and the size of the ellipse
    static int x = 250;
    static int y = 250;
    int e = 50;
    int ea = 50;
    
    
    void setup() {
      size(500,500);
      //1. set the size of your sketch
    
    }
    
    void draw() {
      background(255,0,0);
      //2. set the background color of your sketch
      fill(0,0,0);
      ellipse(x,y,e,ea);
      //3. draw an ellipse. Make sure it fits in the window.
      //5. use the variables created in step 4 to in place of the numbers
      //   in your ellipse
    
    }
    
    void mousePressed() {
      int distance = getDistance(mouseX,mouseY,x,y);
      
      //6a. create an integer variable called distance
      //6b. use the getDistance method to initialize your varible
      //    use the mouse's x and y and the x and y of your ellipse 
    print(" " + distance);
      //7. print the distance variable
    
      if(distance > (-1/2 * e) && distance < (1/2 * ea)) {
        x = (int) random(500);
        y = (int) random(500);
      }
      //8a. make an if statement to check if the distance variable
      //   is greater than negative half the size of the ellipse,
      //   and less than positive half the size of the ellipse.
      
        //8b.  set the x and y of the ellipse to a random location on the window
       
      
    }
    
    int getDistance(int x1, int y1, int x2, int y2) {
      return (int)Math.sqrt(x2 * x2 + y2 * y2) - (int)Math.sqrt(x1 * x1 + y1 * y1);
    }