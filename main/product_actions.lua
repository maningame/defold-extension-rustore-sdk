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
	local enablePurchaseEventListener = preferred_purchase_type == RuStorePayEnums.PreferredPurchaseType.TWO_STEP
	
	rustorepay.purchase(json_params, preferred_purchase_type, sdk_theme, enablePurchaseEventListener)
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
	local enablePurchaseEventListener = true

	rustorepay.purchase_two_step(json_params, sdk_theme, enablePurchaseEventListener)
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

function _on_payment_completed(self, channel, value)
	-- json fields:
	-- productId - string
	-- purchaseId - string
	-- invoiceId - string
	rustorecore.log_warning("PurchaseEventListener.onPaymentCompleted", value)
end

function _on_payment_failed(self, channel, value)
	-- json fields:
	-- productId - string
	-- purchaseId - string
	-- invoiceId - string
	rustorecore.log_warning("PurchaseEventListener.onPaymentFailed", value)
end

function _on_payment_started(self, channel, value)
	-- json fields:
	-- productId - string
	-- purchaseId - string
	-- invoiceId - string
	rustorecore.log_warning("PurchaseEventListener.onPaymentStarted", value)
end

function _on_purchase_cancelled(self, channel, value)
	-- json fields:
	-- productId - string
	-- purchaseId - string
	-- invoiceId - string
	rustorecore.log_warning("PurchaseEventListener.onPurchaseCancelled", value)
end

function _on_purchase_created(self, channel, value)
	-- json fields:
	-- productId - string
	-- purchaseId - string
	-- invoiceId - string
	rustorecore.log_warning("PurchaseEventListener.onPurchaseCreated", value)
end
