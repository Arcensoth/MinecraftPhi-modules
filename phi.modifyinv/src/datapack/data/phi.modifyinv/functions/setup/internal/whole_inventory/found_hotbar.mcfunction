# Move item into the hotbar section:
data modify block -30000000 0 1600 RecordItem.tag.phi.modifyinv.hotbar append from block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory[0]
data remove block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory[0]

# Get the slot number for the next item and repeat:
execute store result score $phi.modifyinv.slot temp run data get block -30000000 0 1600 RecordItem.tag.phi.modifyinv.whole_inventory[0].Slot
function phi.modifyinv:setup/internal/whole_inventory/check_hotbar