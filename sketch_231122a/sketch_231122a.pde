/* To Do List for mountain climbing
 -
 */
//
//Global Variables
int appWidth, appHeight, smallerDimension;
Boolean OS_On=false;
PFont harrington;
float ssSpaceBarX, ssSpaceBarY, ssSpaceBarWidth, ssSpaceBarHeight;
//
void setup() {
  size(600, 400);
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  //
  displayAlgorithm();
  textSetup(); //See Text
  //
  //Population
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  ssSpaceBarWidth = appWidth*1/2;
  ssSpaceBarHeight = appHeight*1/10;
  ssSpaceBarX = centerX - ssSpaceBarWidth*1/2;
  ssSpaceBarY = centerY - ssSpaceBarHeight*1/2;
  //
  //DIVs
  //Layout our text space and typographical features
  //rect( ssSpaceBarX, ssSpaceBarY, ssSpaceBarWidth, ssSpaceBarHeight );
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
//End MAIN Program
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
  //           Hint: "Bru, turn your phun."
  if ( width >= height ) { //landscape-square
    println("DISPLAY is Landscape or Square");
  } else { //portrait
    println("DISPLAY is Portrait");
    println("Bru, turn your phun.");
    exit();
    //Optional: "Are you sure" Exit Screen, YES or NO
  }
} //End Display Algorithm
void splashScreen() {
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
  splashScreenText(); //See Text
  //
} //End Splash Screen
//Global Variables
int size; //Change the number until it fits
//
color purple=#FF00FF; //Night Mode Friendly
color resetDefaultInk=#FFFFFF;
//
String spaceBar = "Press the SPACE BAR to continue";
//
void textSetup() {
  //Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  harrington = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
} //End Text Setup
//
void precodeText() { //Note: to change ink and alignments, copy line and rewrite the values
  fill(purple); //Ink for Entire Program
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
} //End Pre Code Text
//
void splashScreenText() {
  precodeText();
  size = 18; //Change the number until it fits
  textFont(harrington, size); 
  text( spaceBar, ssSpaceBarX, ssSpaceBarY, ssSpaceBarWidth, ssSpaceBarHeight );
  //noFill();
  fill(resetDefaultInk);
} //End Splash Screen Text
//
// End Text
