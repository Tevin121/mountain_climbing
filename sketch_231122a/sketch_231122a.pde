/* To Do List for mountain climbing
- 
*/
//
//Global Variables
int appWidth, appHeight, smallerDimension;
//
void setup() {
  size(600, 400);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  //Display Algorithm
  smallerDimension = ( appWidth >= appHeight ) ? appHeight : appWidth; //Ternary Operator
  //Purpose: CANVAS fits in monitor & dimension size is known
  //Output #1: Console confirms CANVAS will fit in the monitor
  //Output #2: Console confirms display orientation (landscape-square or portrait)
  //Output #3: Console confirms dimension sizes (smaller and larger)
  //Output #4: if error with any of above, program will exit or be broken
  //           Hint: "Bru, turn your phun."
  //End Display Orientation
  //
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End MAIN Program
