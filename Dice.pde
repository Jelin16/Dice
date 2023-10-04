int total = 0;

void setup() {
  noLoop();
  size(500, 500);
}

void draw() {
  background(0);
  total = 0;
  for (int x = 100; x <= 400; x = x + 50) {
    for (int y = 50; y <= 400; y = y + 50) {
      Die die = new Die(x, y); 
      die.roll(); 
      die.show();
      total += die.value;
    }
  }
  fill(255);
  textSize(24);
  text("Total: " + total, width / 2, 480);
}

  void mousePressed() {
    redraw();
  }

  class Die {
    int x, y; 
    int value; 

    Die(int x, int y) {
      this.x = x;
      this.y = y;
    }

    void roll() {
      value = (int)(Math.random() * 6) + 1;
    }

    void show() {
      rectMode(CENTER);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      rect(x, y, 50, 50);
      fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));

      float dotSize = 10; // Size of the dots
      switch (value) {
      case 1:
        ellipse(x, y, dotSize, dotSize);
        break;
      case 2:
        ellipse(x - 15, y - 15, dotSize, dotSize);
        ellipse(x + 15, y + 15, dotSize, dotSize);
        break;
      case 3:
        ellipse(x - 15, y - 15, dotSize, dotSize);
        ellipse(x, y, dotSize, dotSize);
        ellipse(x + 15, y + 15, dotSize, dotSize);
        break;
      case 4:
        ellipse(x - 15, y - 15, dotSize, dotSize);
        ellipse(x + 15, y - 15, dotSize, dotSize);
        ellipse(x - 15, y + 15, dotSize, dotSize);
        ellipse(x + 15, y + 15, dotSize, dotSize);
        break;
      case 5:
        ellipse(x - 15, y - 15, dotSize, dotSize);
        ellipse(x + 15, y - 15, dotSize, dotSize);
        ellipse(x, y, dotSize, dotSize);
        ellipse(x - 15, y + 15, dotSize, dotSize);
        ellipse(x + 15, y + 15, dotSize, dotSize);
        break;
      case 6:
        ellipse(x - 15, y - 15, dotSize, dotSize);
        ellipse(x + 15, y - 15, dotSize, dotSize);
        ellipse(x - 15, y, dotSize, dotSize);
        ellipse(x + 15, y, dotSize, dotSize);
        ellipse(x - 15, y + 15, dotSize, dotSize);
        ellipse(x + 15, y + 15, dotSize, dotSize);
        break;
      }
    }
  }
