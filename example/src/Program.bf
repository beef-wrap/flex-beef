using System;
using System.Diagnostics;
using static flexBeef.flex;

namespace example;

class Program
{
	public static int Main(String[] args)
	{
		let root = flex_item_new();
		flex_item_set_width(root, 1024);
		flex_item_set_height(root, 768);
		/*flex_item_set_justify_content(root, .FLEX_ALIGN_STRETCH);*/
		//flex_item_set_align_content(root, .FLEX_ALIGN_STRETCH);
		flex_item_set_direction(root, .FLEX_DIRECTION_COLUMN);

		let header = flex_item_new();
		flex_item_set_height(header, 100);
		flex_item_set_shrink(header, 0);

		let body = flex_item_new();
		flex_item_set_grow(body, 1);

		let footer = flex_item_new();
		flex_item_set_height(footer, 50);
		flex_item_set_shrink(footer, 0);

		flex_item_add(root, header);
		flex_item_add(root, body);
		flex_item_add(root, footer);

		flex_layout(root);

		Debug.WriteLine($"""

			header width:  {flex_item_get_frame_width(header)}
			header height:  {flex_item_get_frame_height(header)}

			body width:  {flex_item_get_frame_width(body)}
			body height:  {flex_item_get_frame_height(body)}

			footer width:  {flex_item_get_frame_width(footer)}
			footer height:  {flex_item_get_frame_height(footer)}

		""");

		return 0;
	}
}