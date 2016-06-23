// A headline
String Atilla = "There, where I have passed, the grass will never grow again. There, where I have passed, the grass will never grow again. There, where I have passed, the grass will never grow again. There, where I have passed, the grass will never grow again. There, where I have passed, the grass will never grow again. There, where I have passed, the grass will never grow again. There, where I have passed, the grass will never grow again. There, where I have passed, the grass will never grow again. There, where I have passed, the grass will never grow again.";
String Bonepart = "In a fortnight you have won six victories, taken twenty-one standards, fifty-five rich provinces, and conquered the richest part of Piedmont. You have won battles without cannon, crossed rivers without bridges, made forced marches without shoes, camped without brandy and often without bread. Undoubtedly the greatest obstacles have been overcome; but you still have battles to fight, cities to capture, rivers to cross. Is there one among you whose courage is abating?";
String Columbus = "That in the said island there shall be founded three or four towns, situated in the most convenient places, and that the settlers who are there be assigned to the aforesaid places and towns. That for the better and more speedy colonization of the said island, no one shall have liberty to collect gold in it except those who have taken out colonists' papers, and have built houses for their abode, in the town in which they are, that they may live united and in greater safety.";
String Pizarro = "“In the space of seven years I have succeeded in accomplishing a great work and uniting the whole world in one Empire. With Heaven's aid I have conquered for you a huge empire. But my life was too short to achieve the conquest of the world. That task is left for you. ";
PFont f, f2, f3, f4;  // Global font variable
int i;
int numlines = 9;
String[] lines = new String[numlines];
PVector[] rP1 = new PVector[numlines];
PVector[] rP2 = new PVector[numlines];
PVector[] rdP = new PVector[numlines];
float[] AngleInRadians = new float [numlines];
String[] test = new String[numlines];

String[] blueLines = new String[numlines];
PVector[] bP1 = new PVector[numlines];
PVector[] bP2 = new PVector[numlines];
PVector[] bdP = new PVector[numlines];
float[] bAngleInRadians = new float [numlines];
String[] btest = new String[numlines];

String[] greenLines = new String[numlines];
PVector[] gP1 = new PVector[numlines];
PVector[] gP2 = new PVector[numlines];
PVector[] gdP = new PVector[numlines];
float[] gAngleInRadians = new float [numlines];
String[] gtest = new String[numlines];

String[] yellowLines = new String[numlines];
PVector[] yP1 = new PVector[numlines];
PVector[] yP2 = new PVector[numlines];
PVector[] ydP = new PVector[numlines];
float[] yAngleInRadians = new float [numlines];
String[] ytest = new String[numlines];

void setup() {
  //size(1900,1080);
  fullScreen();
  f = createFont("Mistral", 44, true);  // Loading font
  f2 = createFont("MaturaMTScriptCapitals", 32, true);
  f3 = createFont("LucidaBlackletter", 32, true);
  f4 = createFont("LucidaHandwriting-Italic", 32, true);
  i = 0;
  //The following happens six times
  for (int x = 0; x < lines.length; x++) {
    rP1[x] = new PVector(0-random(210, 850), random(height));
    rP2[x] = new PVector(width, random(height));
    rdP[x] = rP2[x].copy().sub(rP1[x]);
    AngleInRadians[x] = atan2(rdP[x].y, rdP[x].x);
    test[x] = "";
    lines[x] = Atilla;

    bP1[x] = new PVector(random(width), 0-random(300, 850));
    bP2[x] = new PVector(random(width), height);
    bdP[x] = bP2[x].copy().sub(bP1[x]);
    bAngleInRadians[x] = atan2(bdP[x].y, bdP[x].x);
    btest[x] = "";
    blueLines[x] = Bonepart;

    gP1[x] = new PVector(width+random(210, 850), random(height));
    gP2[x] = new PVector(0, random(height));
    gdP[x] = gP2[x].copy().sub(gP1[x]);
    gAngleInRadians[x] = atan2(gdP[x].y, gdP[x].x);
    gtest[x] = "";
    greenLines[x] = Columbus;

    yP1[x] = new PVector(random(width), height+random(300, 850));
    yP2[x] = new PVector(random(width), 0);
    ydP[x] = yP2[x].copy().sub(yP1[x]);
    yAngleInRadians[x] = atan2(ydP[x].y, ydP[x].x);
    ytest[x] = "";
    yellowLines[x] = Pizarro;
  }
}

void draw() {
  background(0,0);
  fill(0);
  for (int j = 0; j < lines.length; j++) {

    textFont(f, 44);   
    pushMatrix();
    translate(rP1[j].x, rP1[j].y);
    rotate(AngleInRadians[j]);
    textAlign(LEFT);
    //fill(187,10,30); // Blood Red
    fill(255);
    if (i < lines[j].length()) {
      test[j] = test[j] + lines[j].charAt(i);
      text(test[j], 0, 0);
    } else {
      text(test[j], 0, 0);
    }
    popMatrix();

    textFont(f2, 32); 
    pushMatrix();
    translate(bP1[j].x, bP1[j].y);
    rotate(bAngleInRadians[j]);
    textAlign(LEFT);
    //fill(200, 0, 0); // Red
    fill(255);
    if (i < blueLines[j].length()) {
      btest[j] = btest[j] + blueLines[j].charAt(i);
      text(btest[j], 0, 0);
    } else {
      text(btest[j], 0, 0);
    }
    popMatrix();

    textFont(f3, 32); 
    pushMatrix();
    translate(gP1[j].x, gP1[j].y);
    rotate(gAngleInRadians[j]);
    textAlign(LEFT);
    //fill(255, 64, 0); 
    fill(255);
    if (i < greenLines[j].length()) {
      gtest[j] = gtest[j] + greenLines[j].charAt(i);
      text(gtest[j], 0, 0);
    } else {
      text(gtest[j], 0, 0);
    }
    popMatrix();

    textFont(f4, 32); 
    pushMatrix();
    translate(yP1[j].x, yP1[j].y);
    rotate(yAngleInRadians[j]);
    textAlign(LEFT);
    //fill(255, 51, 51); 
    fill(255);
    if (i < yellowLines[j].length()) {
      ytest[j] = ytest[j] + yellowLines[j].charAt(i);
      text(ytest[j], 0, 0);
    } else {
      text(ytest[j], 0, 0);
    }
    popMatrix();
  }
  i++;
  delay(900);
}