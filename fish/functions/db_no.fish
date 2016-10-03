function db_no
    #commands defined in alias-file
    set -l items "db1a.no" "db2a.no" "db3a.no"
    
    set -l menu_hover_item_style -o black -b yellow
    set -l menu_cursor_glyph ▶
    set -l menu_cursor_glyph_style -o

    menu $items

    eval $items[$menu_selected_index]
end
