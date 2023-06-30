import std.stdio;

import cengiz.graphics;

void main()
{
	auto window = new Window(800, 600, "Hello");
	window.set_resizable(true);
	Color a = Color(0, 255, 0);
	
	while (window.is_open())
	{
		window.clear(a);
		window.display();
	}
}
