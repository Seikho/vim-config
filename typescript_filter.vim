" Hide .js and .map files when .ts is present
if exists("g:loaded_nerdtree_js_filter")
	    finish
endif
let g:loaded_nerdtree_js_filter = 1

let s:extMatch = '\.\(js\|js\.map\)$'

call NERDTree.AddPathFilter("FilterTypescript")

"for each '.js' or '.js.map' file, check for the corresponding .ts
"file.
""If found, ignore this file
function! FilterTypescript(params)
	let path = a:params['path']

	if path.isDirectory
		return
	endif

	if path.getLastPathComponent(0) !~ s:extMatch
		return
	endif

	let tsFilesInDir = split(globpath(path.getParent().str({'format': 'Glob'}), '*.ts'))
	let srcTypescriptFile = substitute(path.str(), s:extMatch, '.ts', '')

	return index(tsFilesInDir, srcTypescriptFile) != -1
endfunction

