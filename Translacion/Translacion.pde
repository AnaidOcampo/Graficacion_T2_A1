float angle = 0.0;

void setup() {
size (1000, 1000);
background (50);
}

void draw() {
translate (mouseX, mouseY);
float scalar = sin(angle) + 3;
scale(scalar);
rotate (angle);

println(scalar);

float colorR = map(scalar, 1, 3, 0, 220);
float colorG = map(scalar, 1, 3, 10, 120);
float colorB = map(scalar, 1, 3, 220, 120);

fill(colorR, colorG, colorB);
strokeWeight(1.0 / scalar);
rect (-30, -30, 60, 60);
angle += 0.2;
}
