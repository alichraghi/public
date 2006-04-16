function fish_prompt
    set_color -o normal
    echo (set_color cyan)  (prompt_pwd)(set_color red) (set_color green)(set_color yellow) (set_color normal) 
end

function fish_right_prompt
    set_color yellow
    date '+%M'
    set_color red
    echo ':'
    set_color cyan
    date '+%S'
    set_color normal
end
