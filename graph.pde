
PVector numOfCells, boarderSize;

void setup()
{
  size(400,400);
  numOfCells = new PVector(30,30);
  boarderSize = new PVector(0.6*width,0.6*height);
  
}


void draw()
{
  
  background(230);
  
  
  
  pushMatrix();
  translate(0.2*width,0.8*height);
  rotate(radians(270));
  
  
  gridBoarder();
  
  createGridVisual();
  
  popMatrix();
  
  
}



void gridBoarder()
{
  
  
  fill(210);
  rect(0,0,width*0.6,height*0.6);
  
  
}

void createGridVisual()
{
  for(int i = 0; i < numOfCells.x; i++){
    for(int j = 0; j < numOfCells.y; j++){
     rect(i * (boarderSize.x / numOfCells.x),j * (boarderSize.y / numOfCells.y), (i + 1) * (boarderSize.x / numOfCells.x),(j + 1) * (boarderSize.y / numOfCells.y));
    }
  }
}
