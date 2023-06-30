import std.stdio;

import cengiz.graphics;

void main()
{
	auto window = new Window(800, 600, "Hello");
	
	while (window.is_open())
	{
		window.clear();
		window.display();
	}
}
