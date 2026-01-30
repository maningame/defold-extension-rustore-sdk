require("main.gui.slider_consts")

local M = {}

local state = {
	data_collection = {},
	slider_collection = {},
	slider_position = 0
}

function M.set_collections(data_collection, slider_collection)
	state.data_collection = data_collection
	state.slider_collection = slider_collection
end

function M.get_displayed_pair()
	return {
		data = state.data_collection[state.slider_position],
		slide = state.slider_collection[state.slider_position]
	}
end

function M.set_slider_page(num)
	if num > 0 and num <= #state.slider_collection then
		msg.post(SLIDER_RECEIVER, SLIDER_SET_TITLE_MESSAGE_ID, { title = tostring(num).." / "..#state.slider_collection })
		msg.post(SLIDER_RECEIVER, SLIDER_SET_INFO_MESSAGE_ID, { info = state.slider_collection[num] })

		return num
	else
		msg.post(SLIDER_RECEIVER, SLIDER_SET_TITLE_MESSAGE_ID, { title = "" })
		msg.post(SLIDER_RECEIVER, SLIDER_SET_INFO_MESSAGE_ID, { info = "" })

		return 0
	end
end

function M.set_on_first()
	state.slider_position = M.set_slider_page(1)
end

function M.move_left()
	local pos = state.slider_position - 1
	if pos <= 0 then
		pos = #state.slider_collection
	end
	state.slider_position = M.set_slider_page(pos)
end

function M.move_right()
	local pos = state.slider_position + 1
	if pos > #state.slider_collection then
		pos = 1
	end
	state.slider_position = M.set_slider_page(pos)
end

return M
