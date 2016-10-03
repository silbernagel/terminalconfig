function db_sg
    #commands defined in alias-file
    set -l items "db1a.sg" "db2a.sg" "db3a.sg"
    
    set -l menu_hover_item_style -o black -b yellow
    set -l menu_cursor_glyph ▶
    set -l menu_cursor_glyph_style -o

    menu $items

    echo $menu_selected_index
    eval $items[3]
end
