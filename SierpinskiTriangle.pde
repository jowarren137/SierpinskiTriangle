public int num;
public void setup()
{
	size(500,500);
	num = 0;
}
public void draw()
{
	background(0);
	noStroke();
	fill(255);
	sierpinski(0,500,num);
}
public void mouseClicked()
{
	if(mouseButton == LEFT){
    	num+=20;
     	if(num > 500)
        	num=0;
  }
}
public void sierpinski(int x, int y, int len) 
{
	if(len < 10)
	{
		triangle(x, y, x+len, y, x+len/2, y - len);
	}else{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}