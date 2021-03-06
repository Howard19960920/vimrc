" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
"
" font size change only work for GUI-version Vim

function! PresentationModeOn()
  if has("gui_macvim")
    set guifont=Monaco:h25           " for Mac
  elseif has("gui_gtk")
    set guifont=Larabiefont\ 22 " Inconsolata
  end
endfunction

function! PresentationModeOff()
  if has("gui_macvim")
    set guifont=Monaco:h17           " for Mac
  elseif has("gui_gtk")
    set guifont=Larabiefont\ 10 " Inconsolata
  end
endfunction

function! TogglePresentationMode()
  if !exists('w:present')
    let w:present=0
  endif

  if w:present==0
    call PresentationModeOn()
    let w:present=1
  else
    call PresentationModeOff()
    let w:present=0
  endif
endfunction

map <leader>z :call TogglePresentationMode()<CR>
