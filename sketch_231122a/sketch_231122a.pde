/* To Do List for mountain climbing
 -
 */
//
//Global Variables
int appWidth, appHeight, smallerDimension;
Boolean OS_On=false;
//
void setup() {
 fullScreen();
  appWidth = displayWidth; //displayWidth
  appHeight = displayHeight; //displayHeight
  //
  displayAlgorithm();
  //
} //End setup
//
void draw() {
  if ( OS_On == true ) splashScreen();
} //End draw
//
void mousePressed() {
  if ( OS_On == false ) OS_On = true;
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
void displayAlgorithm() {
  smallerDimension = ( appWidth >= appHeight ) ? appHeight : appWidth; //Ternary Operator
  //Purpose: CANVAS fits in monitor & dimension size is known
  //Output #1: Console confirms CANVAS will fit in the monitor
  //Output #4: Console confirms dimension sizes (smaller and larger)
  if ( width <= displayWidth && height <= displayHeight ) {
    /*If useing fullScreen, use
     - displayWidth & displayHeight
     - instead of width & height
     */
    println("CANVAS fits in DISPLAY GEOMETRY");
    println("Display Dimension:", "width:"+width, "height:"+height, "Display Width:"+displayWidth, "Display Height:"+displayHeight );
  } else {
    println("CANVAS is too BIG, make it smaller");
    exit();
  }
  //Output #2: Console confirms display orientation
  //Output #3: if error with any of above, program will exit or be broken
  //           Hint: "going up the mountain."
  if ( width >= height ) { //landscape-square
    println("DISPLAY is Landscape or Square");
  } else { //portrait
    println("DISPLAY is Portrait");
    println("going up the mountain");
    exit();
    //Optional: "Are you sure" Exit Screen, YES or NO
  }
} void splashScreen() {
  /* Note: any visually-based code running in SetUp() controlled by MouseClick
   - background image
   */
  //
  /* Any other code for Splash Screen goes below
   - Start Button
   - Any other instructions
   - Splash Screen Details
   */
   background(255); //Testing only, not night mode friendly, full BLUE
   //
} //End Splash Screen
