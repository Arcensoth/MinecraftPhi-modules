# Get the first slot number in preparation:
execute store result score $ensconcer.modifyinv.slot temp run data get block -30000000 0 1600 RecordItem.tag.ensconcer.whole_inventory[0].Slot

# Check all the sections in turn, sorting them (slots always appear in order):
function ensconcer:modifyinv/setup/whole_inventory/check_hotbar
function ensconcer:modifyinv/setup/whole_inventory/check_inventory
function ensconcer:modifyinv/setup/whole_inventory/check_armor
function ensconcer:modifyinv/setup/whole_inventory/check_offhand