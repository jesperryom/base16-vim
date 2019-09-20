let g:airline#themes#base16_vim#palette = {}

function! airline#themes#base16_vim#refresh()
  let s:base00 = g:base16_cterm00  " black
  let s:base01 = g:base16_cterm01
  let s:base02 = g:base16_cterm02
  let s:base03 = g:base16_cterm03  " brblack
  let s:base04 = g:base16_cterm04
  let s:base05 = g:base16_cterm05  " white
  let s:base06 = g:base16_cterm06
  let s:base07 = g:base16_cterm07
  let s:base08 = g:base16_cterm08  " red
  let s:base09 = g:base16_cterm09
  let s:base0A = g:base16_cterm0A  " yellow
  let s:base0B = g:base16_cterm0B  " green
  let s:base0C = g:base16_cterm0C  " cyan
  let s:base0D = g:base16_cterm0D  " blue
  let s:base0E = g:base16_cterm0E  " magenta
  let s:base0F = g:base16_cterm0F

  " Gui color palette
  let s:gui00 = "#" . g:base16_gui00
  let s:gui01 = "#" . g:base16_gui01
  let s:gui02 = "#" . g:base16_gui02
  let s:gui03 = "#" . g:base16_gui03
  let s:gui04 = "#" . g:base16_gui04
  let s:gui05 = "#" . g:base16_gui05
  let s:gui06 = "#" . g:base16_gui06
  let s:gui07 = "#" . g:base16_gui07
  let s:gui08 = "#" . g:base16_gui08
  let s:gui09 = "#" . g:base16_gui09
  let s:gui0A = "#" . g:base16_gui0A
  let s:gui0B = "#" . g:base16_gui0B
  let s:gui0C = "#" . g:base16_gui0C
  let s:gui0D = "#" . g:base16_gui0D
  let s:gui0E = "#" . g:base16_gui0E
  let s:gui0F = "#" . g:base16_gui0F

  " Normal mode
  let s:N1 = [s:gui01, s:gui04, s:base01, s:base04]
  let s:N2 = [s:gui01, s:gui03, s:base01, s:base03]
  let s:N3 = [s:gui04, s:gui01, s:base04, s:base01]

  let g:airline#themes#base16_vim#palette.normal
        \ = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#base16_vim#palette.normal_modified = {
        \ 'airline_c': [s:gui09, s:gui01, s:base09, s:base01, ''],
        \ }

  " Insert mode
  let s:I1 = [s:gui01, s:gui0A, s:base01, s:base0A]
  let s:I3 = [s:gui0D, s:gui01, s:base0D, s:base01]
  let g:airline#themes#base16_vim#palette.insert
        \ = airline#themes#generate_color_map(s:I1, s:N2, s:N3)

  let g:airline#themes#base16_vim#palette.insert_modified
        \ = copy(g:airline#themes#base16_vim#palette.normal_modified)

  " Replace mode
  let s:R1 = [s:gui01, s:gui09, s:base01, s:base09]
  let s:R3 = [s:gui08, s:gui01, s:base08, s:base01]
  let g:airline#themes#base16_vim#palette.replace
        \ = airline#themes#generate_color_map(s:R1, s:N2, s:N3)

  let g:airline#themes#base16_vim#palette.replace_modified
        \ = copy(g:airline#themes#base16_vim#palette.normal_modified)

  " Visual mode
  let s:V1 = [s:gui01, s:gui0F, s:base01, s:base0F]
  let s:V3 = [s:gui0E, s:gui01, s:base0E, s:base01]

  let g:airline#themes#base16_vim#palette.visual
        \ = airline#themes#generate_color_map(s:V1, s:N2, s:N3)

  " Inactive window
  let s:IA = [s:gui03, s:gui01, s:base03, s:base01, '']
  let g:airline#themes#base16_vim#palette.inactive
        \ = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#base16_vim#palette.inactive_modified = {
        \ 'airline_c': [s:gui09, '', s:base09, '', ''],
        \ }
endfunction

call airline#themes#base16_vim#refresh()
