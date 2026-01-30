function _update_utils_screen()
	msg.post(UTILS_ACTIONS_GAMEOBJECT, "enable")
	msg.post(SLIDER_GAMEOBJECT, "disable")
	msg.post(PRODUCT_ACTIONS_GAMEOBJECT, "disable")
	msg.post(PURCHASE_ACTIONS_GAMEOBJECT, "disable")
end

function _update_products_screen()
	msg.post(UTILS_ACTIONS_GAMEOBJECT, "disable")
	msg.post(SLIDER_GAMEOBJECT, "enable")
	msg.post(PRODUCT_ACTIONS_GAMEOBJECT, "disable")
	msg.post(PURCHASE_ACTIONS_GAMEOBJECT, "disable")

	msg.post(SLIDER_RECEIVER, SLIDER_SET_TITLE_MESSAGE_ID, { title = "" })
	msg.post(SLIDER_RECEIVER, SLIDER_SET_INFO_MESSAGE_ID, { info = "Loading..." })

	rustorepay.get_products(PRODUCT_IDS)
end

function _update_purchases_screen(filter)
	msg.post(UTILS_ACTIONS_GAMEOBJECT, "disable")
	msg.post(SLIDER_GAMEOBJECT, "enable")
	msg.post(PRODUCT_ACTIONS_GAMEOBJECT, "disable")
	msg.post(PURCHASE_ACTIONS_GAMEOBJECT, "disable")

	msg.post(SLIDER_RECEIVER, SLIDER_SET_TITLE_MESSAGE_ID, { title = "" })
	msg.post(SLIDER_RECEIVER, SLIDER_SET_INFO_MESSAGE_ID, { info = "Loading..." })

	if filter ~= nil then
		rustorepay.get_purchases(filter)
	else
		rustorepay.get_purchases()
	end
end
