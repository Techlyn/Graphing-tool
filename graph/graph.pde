
PVector numOfCells, boarderSize;


void setup()
{
  size(720, 720);
  numOfCells = new PVector(30, 30);
  boarderSize = new PVector(0.6*width, 0.6*width);
}


void draw()
{

  background(10);



  pushMatrix();
  translate(0.2*width, 0.8*height);
  scale(1,-1);

  createGridVisual();

  gridBoarder();
  
  drawArrow(0, 0, boarderSize.x, 0);
  drawArrow(0, 0, 0, boarderSize.y);
  
  //loop is just for example 
  for(float i = 0; i < sqrt(numOfCells.y) ; i += 0.001){
    
    float y = sq(i);
    plotLine(i, y);
  
  }

  popMatrix();
}



void gridBoarder()
{

  pushMatrix();
  noFill();
  strokeWeight(3);
  stroke(255, 165, 0);
  rect(0, 0, width*0.6, height*0.6);
  popMatrix();
}

void createGridVisual()
{
  pushMatrix();
  for (int i = 0; i < numOfCells.x; i++) {
    for (int j = 0; j < numOfCells.y; j++) {
      stroke(220);
      strokeWeight(1);
      rect(i * (boarderSize.x / numOfCells.x), j * (boarderSize.y / numOfCells.y), boarderSize.x / numOfCells.x, boarderSize.y / numOfCells.y);
    }
  }
  popMatrix();
}

void drawArrow(float sXin, float sYin, float eXin, float eYin)
{
  PVector startPos, endPos;
  startPos = new PVector(sXin, sYin);
  endPos = new PVector(eXin, eYin);

  pushMatrix();
  stroke(0, 255, 0);
  noFill();
  strokeWeight(3);
  line(startPos.x, startPos.y, endPos.x, endPos.y);
  rotate(endPos.heading());
  int arrowSize = 7;
  translate(endPos.mag() - arrowSize, 0);
  triangle(0, arrowSize / 2, 0, -arrowSize / 2, arrowSize, 0);
  popMatrix();
}

void plotLine(float x, float y)
{
  pushMatrix();
  stroke(255, 0, 0);
  strokeWeight(2);
  point(x*(boarderSize.x/numOfCells.x), y*(boarderSize.y/numOfCells.y));
  popMatrix();
}
