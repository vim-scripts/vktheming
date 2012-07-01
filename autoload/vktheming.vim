if exists("g:loaded_vktheming_auto")
	finish
endif
let g:loaded_vktheming_auto = 1

function! vktheming#Load_VKtheming()
	command! -nargs=0 VKtheming :call s:VKtheming()
endfunction

if !has("gui_running")
	if &t_Co == 8
		let s:cterm_color = {0: "#808080", 1: "#ff6060", 2: "#00ff00", 3: "#ffff00", 4: "#8080ff", 5: "#ff40ff", 6: "#00ffff", 7: "#ffffff"}
	else
		let s:cterm_color = {0: "#000000", 1: "#c00000", 2: "#008000", 3: "#804000", 4: "#0000c0", 5: "#c000c0", 6: "#008080", 7: "#c0c0c0", 8: "#808080", 9: "#ff6060", 10: "#00ff00", 11: "#ffff00", 12: "#8080ff", 13: "#ff40ff", 14: "#00ffff", 15: "#ffffff"}
	endif

	if &t_Co == 88
		call extend(s:cterm_color, {16: "#000000", 17: "#00008b", 18: "#0000cd", 19: "#0000ff", 20: "#008b00", 21: "#008b8b", 22: "#008bcd", 23: "#008bff", 24: "#00cd00", 25: "#00cd8b", 26: "#00cdcd", 27: "#00cdff", 28: "#00ff00", 29: "#00ff8b", 30: "#00ffcd", 31: "#00ffff", 32: "#8b0000", 33: "#8b008b", 34: "#8b00cd", 35: "#8b00ff", 36: "#8b8b00", 37: "#8b8b8b", 38: "#8b8bcd", 39: "#8b8bff", 40: "#8bcd00", 41: "#8bcd8b", 42: "#8bcdcd", 43: "#8bcdff", 44: "#8bff00", 45: "#8bff8b", 46: "#8bffcd", 47: "#8bffff", 48: "#cd0000", 49: "#cd008b", 50: "#cd00cd", 51: "#cd00ff", 52: "#cd8b00", 53: "#cd8b8b", 54: "#cd8bcd", 55: "#cd8bff", 56: "#cdcd00", 57: "#cdcd8b", 58: "#cdcdcd", 59: "#cdcdff", 60: "#cdff00", 61: "#cdff8b", 62: "#cdffcd", 63: "#cdffff", 64: "#ff0000"})
		call extend(s:cterm_color, {65: "#ff008b", 66: "#ff00cd", 67: "#ff00ff", 68: "#ff8b00", 69: "#ff8b8b", 70: "#ff8bcd", 71: "#ff8bff", 72: "#ffcd00", 73: "#ffcd8b", 74: "#ffcdcd", 75: "#ffcdff", 76: "#ffff00", 77: "#ffff8b", 78: "#ffffcd", 79: "#ffffff", 80: "#2e2e2e", 81: "#5c5c5c", 82: "#737373", 83: "#8b8b8b", 84: "#a2a2a2", 85: "#b9b9b9", 86: "#d0d0d0", 87: "#e7e7e7"})
	elseif &t_Co == 256
		call extend(s:cterm_color, {16: "#000000", 17: "#00005f", 18: "#000087", 19: "#0000af", 20: "#0000d7", 21: "#0000ff", 22: "#005f00", 23: "#005f5f", 24: "#005f87", 25: "#005faf", 26: "#005fd7", 27: "#005fff", 28: "#008700", 29: "#00875f", 30: "#008787", 31: "#0087af", 32: "#0087d7", 33: "#0087ff", 34: "#00af00", 35: "#00af5f", 36: "#00af87", 37: "#00afaf", 38: "#00afd7", 39: "#00afff", 40: "#00d700", 41: "#00d75f", 42: "#00d787", 43: "#00d7af", 44: "#00d7d7", 45: "#00d7ff", 46: "#00ff00", 47: "#00ff5f", 48: "#00ff87", 49: "#00ffaf", 50: "#00ffd7", 51: "#00ffff", 52: "#5f0000", 53: "#5f005f", 54: "#5f0087", 55: "#5f00af", 56: "#5f00d7", 57: "#5f00ff", 58: "#5f5f00", 59: "#5f5f5f", 60: "#5f5f87", 61: "#5f5faf", 62: "#5f5fd7", 63: "#5f5fff", 64: "#5f8700"})
		call extend(s:cterm_color, {65: "#5f875f", 66: "#5f8787", 67: "#5f87af", 68: "#5f87d7", 69: "#5f87ff", 70: "#5faf00", 71: "#5faf5f", 72: "#5faf87", 73: "#5fafaf", 74: "#5fafd7", 75: "#5fafff", 76: "#5fd700", 77: "#5fd75f", 78: "#5fd787", 79: "#5fd7af", 80: "#5fd7d7", 81: "#5fd7ff", 82: "#5fff00", 83: "#5fff5f", 84: "#5fff87", 85: "#5fffaf", 86: "#5fffd7", 87: "#5fffff", 88: "#870000", 89: "#87005f", 90: "#870087", 91: "#8700af", 92: "#8700d7", 93: "#8700ff", 94: "#875f00", 95: "#875f5f", 96: "#875f87", 97: "#875faf", 98: "#875fd7", 99: "#875fff", 100: "#878700", 101: "#87875f", 102: "#878787", 103: "#8787af", 104: "#8787d7", 105: "#8787ff", 106: "#87af00", 107: "#87af5f", 108: "#87af87", 109: "#87afaf", 110: "#87afd7", 111: "#87afff", 112: "#87d700"})
		call extend(s:cterm_color, {113: "#87d75f", 114: "#87d787", 115: "#87d7af", 116: "#87d7d7", 117: "#87d7ff", 118: "#87ff00", 119: "#87ff5f", 120: "#87ff87", 121: "#87ffaf", 122: "#87ffd7", 123: "#87ffff", 124: "#af0000", 125: "#af005f", 126: "#af0087", 127: "#af00af", 128: "#af00d7", 129: "#af00ff", 130: "#af5f00", 131: "#af5f5f", 132: "#af5f87", 133: "#af5faf", 134: "#af5fd7", 135: "#af5fff", 136: "#af8700", 137: "#af875f", 138: "#af8787", 139: "#af87af", 140: "#af87d7", 141: "#af87ff", 142: "#afaf00", 143: "#afaf5f", 144: "#afaf87", 145: "#afafaf", 146: "#afafd7", 147: "#afafff", 148: "#afd700", 149: "#afd75f", 150: "#afd787", 151: "#afd7af", 152: "#afd7d7", 153: "#afd7ff", 154: "#afff00", 155: "#afff5f", 156: "#afff87", 157: "#afffaf", 158: "#afffd7"})
		call extend(s:cterm_color, {159: "#afffff", 160: "#d70000", 161: "#d7005f", 162: "#d70087", 163: "#d700af", 164: "#d700d7", 165: "#d700ff", 166: "#d75f00", 167: "#d75f5f", 168: "#d75f87", 169: "#d75faf", 170: "#d75fd7", 171: "#d75fff", 172: "#d78700", 173: "#d7875f", 174: "#d78787", 175: "#d787af", 176: "#d787d7", 177: "#d787ff", 178: "#d7af00", 179: "#d7af5f", 180: "#d7af87", 181: "#d7afaf", 182: "#d7afd7", 183: "#d7afff", 184: "#d7d700", 185: "#d7d75f", 186: "#d7d787", 187: "#d7d7af", 188: "#d7d7d7", 189: "#d7d7ff", 190: "#d7ff00", 191: "#d7ff5f", 192: "#d7ff87", 193: "#d7ffaf", 194: "#d7ffd7", 195: "#d7ffff", 196: "#ff0000", 197: "#ff005f", 198: "#ff0087", 199: "#ff00af", 200: "#ff00d7", 201: "#ff00ff", 202: "#ff5f00", 203: "#ff5f5f", 204: "#ff5f87"})
		call extend(s:cterm_color, {205: "#ff5faf", 206: "#ff5fd7", 207: "#ff5fff", 208: "#ff8700", 209: "#ff875f", 210: "#ff8787", 211: "#ff87af", 212: "#ff87d7", 213: "#ff87ff", 214: "#ffaf00", 215: "#ffaf5f", 216: "#ffaf87", 217: "#ffafaf", 218: "#ffafd7", 219: "#ffafff", 220: "#ffd700", 221: "#ffd75f", 222: "#ffd787", 223: "#ffd7af", 224: "#ffd7d7", 225: "#ffd7ff", 226: "#ffff00", 227: "#ffff5f", 228: "#ffff87", 229: "#ffffaf", 230: "#ffffd7", 231: "#ffffff", 232: "#080808", 233: "#121212", 234: "#1c1c1c", 235: "#262626", 236: "#303030", 237: "#3a3a3a", 238: "#444444", 239: "#4e4e4e", 240: "#585858", 241: "#626262", 242: "#6c6c6c", 243: "#767676", 244: "#808080", 245: "#8a8a8a", 246: "#949494", 247: "#9e9e9e", 248: "#a8a8a8", 249: "#b2b2b2", 250: "#bcbcbc", 251: "#c6c6c6", 252: "#d0d0d0", 253: "#dadada", 254: "#e4e4e4", 255: "#eeeeee"})
	endif
endif

if has("gui_running")
	function! s:HtmlColor(color)
		return a:color
	endfunction

	function! s:ColorNumbers()
		return "gui"
	endfunction
else
	function! s:HtmlColor(color)
		if has_key(s:cterm_color, a:color)
			return s:cterm_color[a:color]
		else
			return ""
		endif
	endfunction

	function! s:ColorNumbers()
		return &t_Co
	endfunction
endif

function! s:VKtheming()
	let css_full_name = VimwikiGet('path_html').VimwikiGet('css_name')
	call vimwiki#base#mkdir(fnamemodify(css_full_name, ':p:h'))
	let lines = []
	let color_fg = s:HtmlColor(synIDattr(synIDtrans(hlID("Normal")), "fg#"))
	let color_bg = s:HtmlColor(synIDattr(synIDtrans(hlID("Normal")), "bg#"))
	let color_h1 = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiHeader1")), "fg#"))
	let color_h2 = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiHeader2")), "fg#"))
	let color_h3 = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiHeader3")), "fg#"))
	let color_h4 = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiHeader4")), "fg#"))
	let color_h5 = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiHeader5")), "fg#"))
	let color_h6 = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiHeader6")), "fg#"))
	let color_a  = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiLink")), "fg#"))
	let color_s  = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiCellSeparator")), "fg#"))
	let color_c  = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiCode")), "fg#"))
	let color_p  = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiPre")), "fg#"))
	let color_d  = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiCheckBoxDone")), "fg#"))
	let color_t  = s:HtmlColor(synIDattr(synIDtrans(hlID("VimwikiTodo")), "bg#"))

	call add(lines, '/* Get colors from vim theme "'.g:colors_name.'", number of colors is "'.s:ColorNumbers().'" */')
	call add(lines, 'body {font-family: Tahoma, Geneva, sans-serif; margin: 1em 2em 1em 2em; font-size: 100%; line-height: 130%;}')
	call add(lines, 'h1, h2, h3, h4, h5, h6 {font-family: Trebuchet MS, Helvetica, sans-serif; font-weight: bold; line-height:100%; margin-top: 1.5em; margin-bottom: 0.5em;}')
	call add(lines, 'body {color: '.color_fg.'; background-color: '.color_bg.';}')
	call add(lines, 'h1 {font-size: 2.6em; color: '.color_h1.';}')
	call add(lines, 'h2 {font-size: 2.2em; color: '.color_h2.';}')
	call add(lines, 'h3 {font-size: 1.8em; color: '.color_h3.';}')
	call add(lines, 'h4 {font-size: 1.4em; color: '.color_h4.';}')
	call add(lines, 'h5 {font-size: 1.3em; color: '.color_h5.';}')
	call add(lines, 'h6 {font-size: 1.2em; color: '.color_h6.';}')
	call add(lines, 'a {color: '.color_a.';}')
	call add(lines, 'pre {color: '.color_p.';}')
	call add(lines, 'p, pre, blockquote, table, ul, ol, dl {margin-top: 1em; margin-bottom: 1em;}')
	call add(lines, 'ul ul, ul ol, ol ol, ol ul {margin-top: 0.5em; margin-bottom: 0.5em;}')
	call add(lines, 'li {margin: 0.3em auto;}')
	call add(lines, 'ul {margin-left: 2em; padding-left: 0.5em;}')
	call add(lines, 'dt {font-weight: bold;}')
	call add(lines, 'img {border: none;}')
	call add(lines, 'pre {border-left: 1px solid #ccc; margin-left: 2em; padding-left: 0.5em;}')
	call add(lines, 'blockquote {padding: 0.4em; color: '.color_bg.'; background-color: '.color_fg.';}')
	call add(lines, 'th, td {border: 1px solid #ccc; padding: 0.3em;}')
	call add(lines, 'table {background-color: '.color_s.';}')
	call add(lines, 'th {color: '.color_fg.'; background-color: '.color_bg.';}')
	call add(lines, 'td {color: '.color_fg.'; background-color: '.color_bg.';}')
	call add(lines, 'hr {border: none; border-top: 1px solid #ccc; width: 100%;}')
	call add(lines, 'del {text-decoration: line-through; color: '.color_d.';}')
	call add(lines, '.toc li {list-style-type: none;}')
	call add(lines, '.todo {font-weight: bold; background-color: '.color_t.'; color: '.color_bg.';}')
	call add(lines, '.justleft {text-align: left;}')
	call add(lines, '.justright {text-align: right;}')
	call add(lines, '.justcenter {text-align: center;}')
	call add(lines, '.center {margin-left: auto; margin-right: auto;}')
	call add(lines, '')
	call add(lines, '/* classes for items of todo lists */')

	call add(lines, '.done0 {')
	call add(lines, '    /* list-style: none; */')
	call add(lines, '    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAxQAAAMUBHc26qAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAA7SURBVCiR7dMxEgAgCANBI3yVRzF5KxNbW6wsuH7LQ2YKQK1mkswBVERYF5Os3UV3gwd/jF2SkXy66gAZkxS6BniubAAAAABJRU5ErkJggg==);')
	call add(lines, '    background-repeat: no-repeat;')
	call add(lines, '    background-position: 0 .2em;')
	call add(lines, '    margin-left: -2em;')
	call add(lines, '    padding-left: 1.5em;')
	call add(lines, '}')
	call add(lines, '.done1 {')
	call add(lines, '    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAxQAAAMUBHc26qAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAABtSURBVCiR1ZO7DYAwDER9BDmTeZQMFXmUbGYpOjrEryA0wOvO8itOslFrJYAug5BMM4BeSkmjsrv3aVTa8p48Xw1JSkSsWVUFwD05IqS1tmYzk5zzae9jnVVVzGyXb8sALjse+euRkEzu/uirFomVIdDGOLjuAAAAAElFTkSuQmCC);')
	call add(lines, '    background-repeat: no-repeat;')
	call add(lines, '    background-position: 0 .15em;')
	call add(lines, '    margin-left: -2em;')
	call add(lines, '    padding-left: 1.5em;')
	call add(lines, '}')
	call add(lines, '.done2 {')
	call add(lines, '    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAxQAAAMUBHc26qAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAB1SURBVCiRzdO5DcAgDAVQGxjAYgTvxlDIu1FTIRYAp8qlFISkSH7l5kk+ZIwxKiI2mIyqWoeILYRgZ7GINDOLjnmF3VqklKCUMgTee2DmM661Qs55iI3Zm/1u5h9sm4ig9z4ERHTFzLyd4G4+nFlVrYg8+qoF/c0kdpeMsmcAAAAASUVORK5CYII=);')
	call add(lines, '    background-repeat: no-repeat;')
	call add(lines, '    background-position: 0 .15em;')
	call add(lines, '    margin-left: -2em;')
	call add(lines, '    padding-left: 1.5em;')
	call add(lines, '}')
	call add(lines, '.done3 {')
	call add(lines, '    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAPCAYAAAA71pVKAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAxQAAAMUBHc26qAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAABoSURBVCiR7dOxDcAgDATA/0DtUdiKoZC3YhLkHjkVKF3idJHiztKfvrHZWnOSE8Fx95RJzlprimJVnXktvXeY2S0SEZRSAAAbmxnGGKH2I5T+8VfxPhIReQSuuY3XyYWa3T2p6quvOgGrvSFGlewuUAAAAABJRU5ErkJggg==);')
	call add(lines, '    background-repeat: no-repeat;')
	call add(lines, '    background-position: 0 .15em;')
	call add(lines, '    margin-left: -2em;')
	call add(lines, '    padding-left: 1.5em;')
	call add(lines, '}')
	call add(lines, '.done4 {')
	call add(lines, '    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAQCAYAAAAbBi9cAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAAzgAAAM4BlP6ToAAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAIISURBVDiNnZQ9SFtRFMd/773kpTaGJoQk1im4VDpWQcTNODhkFBcVTCNCF0NWyeDiIIiCm82QoIMIUkHUxcFBg1SEQoZszSat6cdTn1qNue92CMbEr9Sey+XC/Z/zu+f8h6ukUil3sVg0+M+4cFxk42/jH2wAqqqKSCSiPQdwcHHAnDHH9s/tN1h8V28ETdP+eU8fT9Nt62ancYdIPvJNtsu87bmjrJlrTDVM4RROJs1JrHPrD4Bar7A6cpc54iKOaTdJXCUI2UMVrQZ0Js7YPN18ECKkYNQcJe/OE/4dZsw7VqNXQMvHy3QZXQypQ6ycrtwDjf8aJ+PNEDSCzLpn7+m2pD8ZKHlKarYhy6XjEoCYGcN95qansQeA3fNdki+SaJZGTMQIOoL3W/Z89rxv+tokubNajlvk/vm+LFpF2XnUKZHI0I+QrI7Dw0OZTqdzUkpsM7mZTyfy5OPGyw1tK7AFSvmB/Ks8w8YwbUYbe6/3QEKv0vugfxWPnMLJun+d/kI/WLdizpNjMbAIKrhMF4OuwadBALqqs+RfInwUvuNi+fBd+wjogfogAFVRmffO02q01mZZ0HHdgXIzdz0QQLPezIQygX6llxNKKgOFARYCC49CqhoHIUTlss/Vx2phlYwjw8j1CAlfAiwQiJpiy7o1VHnsG5FISkoJu7Q/2YmmaV+i0ei7v38L2CBguSi5AAAAAElFTkSuQmCC);')
	call add(lines, '    background-repeat: no-repeat;')
	call add(lines, '    background-position: 0 .15em;')
	call add(lines, '    margin-left: -2em;')
	call add(lines, '    padding-left: 1.5em;')
	call add(lines, '}')
	call add(lines, '')
	call add(lines, 'code {')
	call add(lines, '    font-family: Monaco,"Courier New","DejaVu Sans Mono","Bitstream Vera Sans Mono",monospace;')
	call add(lines, '    -webkit-border-radius: 1px;')
	call add(lines, '    -moz-border-radius: 1px;')
	call add(lines, '    border-radius: 1px;')
	call add(lines, '    -moz-background-clip: padding;')
	call add(lines, '    -webkit-background-clip: padding-box;')
	call add(lines, '    background-clip: padding-box;')
	call add(lines, '    padding: 0px 3px;')
	call add(lines, '    display: inline-block;')
	call add(lines, '    color: '.color_c.';')
	call add(lines, '    border: 1px solid #ccc;')
	call add(lines, '    background-color: '.color_bg.';')
	call add(lines, '}')
	call writefile(lines, css_full_name)
	echomsg "vktheming style.css is created."
	if !has("gui_running")
		echomsg "Recommend you excute this command in 'vim-gui'."
	endif
endfunction
