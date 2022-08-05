" vim syntax highlight customizations
if exists("did_load_filetypes")
 finish
endif

augroup filetypedetect
 au BufRead,BufNewFile *.lmp	setfiletype	lammps
 au BufRead,BufNewFile *.in	setfiletype	lammps
 au BufRead,BufNewFile in_*	setfiletype	lammps
 au BufRead,BufNewFile in.*	setfiletype	lammps
augroup END
