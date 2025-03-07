// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See the LICENSE.txt file in the project root
// for the license information.

using System;
using System.Interop;

namespace flexBeef;

public static class flex
{
	public struct flex_item { };

	public enum flex_align
	{
		FLEX_ALIGN_AUTO = 0,
		FLEX_ALIGN_STRETCH,
		FLEX_ALIGN_CENTER,
		FLEX_ALIGN_START,
		FLEX_ALIGN_END,
		FLEX_ALIGN_SPACE_BETWEEN,
		FLEX_ALIGN_SPACE_AROUND,
		FLEX_ALIGN_SPACE_EVENLY
	}

	public enum flex_position
	{
		FLEX_POSITION_RELATIVE = 0,
		FLEX_POSITION_ABSOLUTE
	}

	public enum flex_direction
	{
		FLEX_DIRECTION_ROW = 0,
		FLEX_DIRECTION_ROW_REVERSE,
		FLEX_DIRECTION_COLUMN,
		FLEX_DIRECTION_COLUMN_REVERSE
	}

	public enum flex_wrap
	{
		FLEX_WRAP_NO_WRAP = 0,
		FLEX_WRAP_WRAP,
		FLEX_WRAP_WRAP_REVERSE
	}

	// size[0] == width, size[1] == height
	public function void* flex_self_sizing(flex_item* item, float[2] size);

	// Create a new flex item.
	[CLink] public static extern  flex_item* flex_item_new();

	// Free memory associated with a flex item and its children.
	// This function can only be called on a root item.
	[CLink] public static extern void flex_item_free(flex_item* item);

	// Manage items.
	[CLink] public static extern void flex_item_add(flex_item* item,  flex_item* child);

	[CLink] public static extern void flex_item_insert(flex_item* item, c_uint index, flex_item* child);

	[CLink] public static extern  flex_item* flex_item_delete(flex_item* item, c_uint index);

	[CLink] public static extern c_uint flex_item_count(flex_item* item);

	[CLink] public static extern  flex_item* flex_item_child(flex_item* item, c_uint index);

	[CLink] public static extern  flex_item* flex_item_parent(flex_item* item);

	[CLink] public static extern  flex_item* flex_item_root(flex_item* item);

	// Layout the items associated with this item, as well as their children.
	// This function can only be called on a root item whose `width' and `height'
	// properties have been set.
	[CLink] public static extern void flex_layout(flex_item* item);

	// Retrieve the layout frame associated with an item. These functions should
	// be called *after* the layout is done.
	[CLink] public static extern float flex_item_get_frame_x(flex_item* item);

	[CLink] public static extern float flex_item_get_frame_y(flex_item* item);

	[CLink] public static extern float flex_item_get_frame_width(flex_item* item);

	[CLink] public static extern float flex_item_get_frame_height(flex_item* item);

	[CLink] public static extern float flex_item_get_width(flex_item* item);
	[CLink] public static extern void flex_item_set_width(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_height(flex_item* item);
	[CLink] public static extern void flex_item_set_height(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_left(flex_item* item);
	[CLink] public static extern void flex_item_set_left(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_right(flex_item* item);
	[CLink] public static extern void flex_item_set_right(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_top(flex_item* item);
	[CLink] public static extern void flex_item_set_top(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_bottom(flex_item* item);
	[CLink] public static extern void flex_item_set_bottom(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_padding_left(flex_item* item);
	[CLink] public static extern void flex_item_set_padding_left(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_padding_right(flex_item* item);
	[CLink] public static extern void flex_item_set_padding_right(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_padding_top(flex_item* item);
	[CLink] public static extern void flex_item_set_padding_top(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_padding_bottom(flex_item* item);
	[CLink] public static extern void flex_item_set_padding_bottom(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_margin_left(flex_item* item);
	[CLink] public static extern void flex_item_set_margin_left(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_margin_right(flex_item* item);
	[CLink] public static extern void flex_item_set_margin_right(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_margin_top(flex_item* item);
	[CLink] public static extern void flex_item_set_margin_top(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_margin_bottom(flex_item* item);
	[CLink] public static extern void flex_item_set_margin_bottom(flex_item* item, float value);

	[CLink] public static extern flex_align flex_item_get_justify_content(flex_item* item);
	[CLink] public static extern void flex_item_set_justify_content(flex_item* item, flex_align value);

	[CLink] public static extern flex_align flex_item_get_align_content(flex_item* item);
	[CLink] public static extern void flex_item_set_align_content(flex_item* item, flex_align value);

	[CLink] public static extern flex_align flex_item_get_align_items(flex_item* item);
	[CLink] public static extern void flex_item_set_align_items(flex_item* item, flex_align value);

	[CLink] public static extern flex_align flex_item_get_align_self(flex_item* item);
	[CLink] public static extern void flex_item_set_align_self(flex_item* item, flex_align value);

	[CLink] public static extern flex_position flex_item_get_position(flex_item* item);
	[CLink] public static extern void flex_item_set_position(flex_item* item, flex_position value);

	[CLink] public static extern flex_direction flex_item_get_direction(flex_item* item);
	[CLink] public static extern void flex_item_set_direction(flex_item* item, flex_direction value);

	[CLink] public static extern flex_wrap flex_item_get_wrap(flex_item* item);
	[CLink] public static extern void flex_item_set_wrap(flex_item* item, flex_wrap value);

	[CLink] public static extern float flex_item_get_grow(flex_item* item);
	[CLink] public static extern void flex_item_set_grow(flex_item* item, float value);

	[CLink] public static extern float flex_item_get_shrink(flex_item* item);
	[CLink] public static extern void flex_item_set_shrink(flex_item* item, float value);

	[CLink] public static extern c_int flex_item_get_basis(flex_item* item);
	[CLink] public static extern void flex_item_set_basis(flex_item* item, c_int value);

	[CLink] public static extern float flex_item_get_origin(flex_item* item);
	[CLink] public static extern void flex_item_set_origin(flex_item* item, float value);

	// An item can store an arbitrary pointer, which can be used by bindings as
	// the address of a managed object.
	[CLink] public static extern void* flex_item_get_managed_ptr(flex_item* item);
	[CLink] public static extern void flex_item_set_managed_ptr(flex_item* item, void* value);

	// An item can provide a self_sizing callback function that will be called
	// during layout and which can customize the dimensions (width and height)
	// of the item.
	[CLink] public static extern flex_self_sizing flex_item_get_self_sizing(flex_item* item);
	[CLink] public static extern void flex_item_set_self_sizing(flex_item* item, flex_self_sizing value);
}
