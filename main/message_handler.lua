require("main.gui.top_menu_consts")
require("main.gui.utils_actions_consts")
require("main.gui.product_actions_consts")
require("main.gui.purchase_actions_consts")
require("main.gui.slider_consts")

local slider = require "main.slider"

local M = {}

function M.process_message(self, message_id, message, sender)
	-- 
	-- Top menu
	-- 
	if message_id == hash(TOP_MENU_BUTTON_PRESSED) then
		if message.button == TOP_MENU_UTILS then
			_update_utils_screen()

		elseif message.button == TOP_MENU_PRODUCTS then
			_update_products_screen()

		elseif message.button == TOP_MENU_PURCHASES then
			_update_purchases_screen()
		end
	end

	-- 
	-- Slider
	-- 
	if message_id == hash(SLIDER_BUTTON_PRESSED) then
		if message.button == SLIDER_BUTTON_LEFT then
			slider.move_left()
		end

		if message.button == SLIDER_BUTTON_RIGHT then
			slider.move_right()
		end

		if message.button == SLIDER_BUTTON_INFO then
			local data = slider.get_displayed_pair().data
			local message = json.encode(data)
			rustorecore.log_warning(LOG_TAG, message)
		end
	end

	-- 
	-- Utils
	-- 
	if message_id == hash(UTILS_ACTIONS_BUTTON_PRESSED) then
		if message.button == UTILS_ACTIONS_GET_USER_AUTHORIZATION_STATUS then
			rustorepay.get_user_authorization_status()

		elseif message.button == UTILS_ACTIONS_GET_PURCHASE_AVAILABILITY then
			rustorepay.get_purchase_availability()

		elseif message.button == UTILS_ACTIONS_IS_RUSTORE_INSTALLED then
			_is_rustore_installed()

		elseif message.button == UTILS_ACTIONS_OPEN_RUSTORE_DOWNLOAD_INSTRUCTION then
			rustorecore.open_rustore_download_instruction()

		elseif message.button == UTILS_ACTIONS_OPEN_RUSTORE then
			rustorecore.open_rustore()

		elseif message.button == UTILS_ACTIONS_OPEN_RUSTORE_AUTHORIZATION then
			rustorecore.open_rustore_authorization()
		end
	end

	-- 
	-- Product actions
	-- 
	if message_id == hash(PRODUCT_ACTIONS_BUTTON_PRESSED) then
		local data = slider.get_displayed_pair().data

		if message.button == PRODUCT_ACTIONS_PREFERRED_ONE_STEP then
			_purchase(data.productId, RuStorePayEnums.PreferredPurchaseType.ONE_STEP, message.payload)

		elseif message.button == PRODUCT_ACTIONS_PREFERRED_TWO_STEP then
			_purchase(data.productId, RuStorePayEnums.PreferredPurchaseType.TWO_STEP, message.payload)

		elseif message.button == PRODUCT_ACTIONS_PURCHASE_TWO_STEP then
			_purchase_two_step(data.productId, message.payload)
		end
	end

	-- 
	-- Purchase actions
	-- 
	if message_id == hash(PURCHASE_ACTIONS_BUTTON_PRESSED) then
		local data = slider.get_displayed_pair().data

		if message.button == PURCHASE_ACTIONS_CONFIRM_TWO_STEP_PURCHASE then
			rustorepay.confirm_two_step_purchase(data.purchaseId, data.developerPayload)

		elseif message.button == PURCHASE_ACTIONS_CANCEL_TWO_STEP_PURCHASE then
			rustorepay.cancel_two_step_purchase(data.purchaseId)

		elseif message.button == PURCHASE_ACTIONS_GET_PURCHASE then
			rustorepay.get_purchase(data.purchaseId)

		elseif message.button == PURCHASE_ACTIONS_PAID_ONLY then
			local filter = {
				-- productType = RuStorePayEnums.ProductType.CONSUMABLE_PRODUCT,
				purchaseStatus = RuStorePayEnums.ProductPurchaseStatus.PAID -- ProductPurchaseStatus.PAID/CONFIRMED, SubscriptionPurchaseStatus.ACTIVE/PAUSED
			}
			_update_purchases_screen(filter)
		end
	end
end

return M
