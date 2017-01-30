public void setup()
{
	size(700,700);
	background(0,75,150);
}
public void draw()
{
	sierpinski(100, 100, 500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	fill(0,255,255);
	if(len<=60) {
		triangle(x, y, x+len/2, y+len, x+len, y);
	}
	else {
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y+len/2, len/2);
	}
}