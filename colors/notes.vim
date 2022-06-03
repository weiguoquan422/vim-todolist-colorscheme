" notes.vim - matches gruvbox color scheme
" syntax highlighting for school notes/ todo lists

" for marking tasks (for todo lists)
syn match noteDash '^- ' nextgroup=note skipwhite
syn match noteListStar '^* ' nextgroup=note skipwhite
syn match noteListClosed '^x ' nextgroup=done skipwhite

syn match note '.*$' contained
syn match done '.*$' contained
"hi note	guifg=#a89984
"hi done	cterm=italic guifg=#665c54
hi note	guifg=#665c54
hi done	cterm=italic guifg=#a89984

hi noteDash	guifg=#665c54
hi noteListStar	guifg=#fabd2f
hi noteListClosed guifg=#fb4934

" for titles/ headers
syn match noteHeader '# ' nextgroup=header skipwhite
syn match header '.*$' contained
hi noteHeader guifg=#000000
hi header cterm=italic guifg=#83A598

syn match noteTitle '## ' nextgroup=title skipwhite
syn match title '.*$' contained
hi noteTitle guifg=#000000
hi title cterm=bold guifg=#b8bb26

" for comments
syn match comment '//.*$'
hi comment cterm=italic guifg=#a89984
