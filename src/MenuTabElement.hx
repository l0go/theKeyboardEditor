package;

import haxe.Constraints;
import zui.Zui;
import zui.Id;
import kha.System;
import kha.graphics2.Graphics;

class MenuTabElement {
	public var handle:Dynamic;

	public function new(x: Int = 0, y: Int = 28, title: String, options: Map<String, Function>, ui: Zui) {
		handle = Id.handle();
		
		if (ui.window(handle, x, y, Std.int(System.windowWidth()/10), System.windowHeight()-y)) {
			for (option in options.keys()) {
				if (ui.button(option, Left)) {
					options[option]();
				}
			}
		}
	}
}