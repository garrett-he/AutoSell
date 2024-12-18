local frame = CreateFrame("Frame")
frame:RegisterEvent("MERCHANT_SHOW")

frame:SetScript("OnEvent", function()
    local total = 0

    for container = 0, 4 do

        local slotNum = C_Container.GetContainerNumSlots(container)

        for slot = 1, slotNum do
            local link = C_Container.GetContainerItemLink(container, slot)

            if link then
                -- vendor price per each * stack number
                local itemInfo = C_Container.GetContainerItemInfo(container, slot)
                local price = select(11, GetItemInfo(link)) * itemInfo["stackCount"]

                -- item quality == 0 (poor)

                if itemInfo["quality"] == 0 and price > 0 then
                    C_Container.UseContainerItem(container, slot)
                    PickupMerchantItem()

                    total = total + price

                    print(string.format("Sold %s for %.1fg", link, price * 0.0001))
                end
            end
        end
    end

    if total > 0 then
        print(string.format("Total %.1fg", total * 0.0001))
    end
end)
