function _purchase(product_id, preferred_purchase_type, sdk_theme)
	local params = {
		-- appUserEmail = "user@example.com", -- (optional)
		-- appUserId = "user123", -- (optional)
		-- developerPayload = "payload_data", -- (optional)
		-- orderId = "order_456", -- (optional)
		-- quantity = 1, -- (optional)
		productId = product_id
	}
	local json_params = json.encode(params)

	rustorepay.purchase(json_params, preferred_purchase_type, sdk_theme)
end

function _purchase_two_step(product_id, sdk_theme)
	local params = {
		-- appUserEmail = "user@example.com", -- (optional)
		-- appUserId = "user123", -- (optional)
		-- developerPayload = "payload_data", -- (optional)
		-- orderId = "order_456", -- (optional)
		-- quantity = 1, -- (optional)
		productId = product_id
	}
	local json_params = json.encode(params)

	rustorepay.purchase_two_step(json_params, sdk_theme)
end

function _on_purchase_success(self, channel, value)
	-- ProductPurchaseResult
	-- json fields:
	-- invoiceId - string
	-- orderId - string (optional)
	-- productId - string
	-- productType - string
	-- -- NON_CONSUMABLE_PRODUCT
	-- -- CONSUMABLE_PRODUCT
	-- -- SUBSCRIPTION
	-- purchaseId - string
	-- purchaseType - string
	-- -- ONE_STEP
	-- -- TWO_STEP
	-- -- UNDEFINED
	-- quantity - number
	-- sandbox - boolean
	rustorecore.log_warning(LOG_TAG, value)

	local _product_purchase_result = json.decode(value)
	local message = "Success productId: ".._product_purchase_result.productId
	rustorecore.log_warning(LOG_TAG, message)

	rustorecore.show_toast(message)
end
