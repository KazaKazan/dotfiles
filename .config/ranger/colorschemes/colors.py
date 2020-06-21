# Ranger theme
# Mod of Spacecolors

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
	def use(self, context):
		fg, bg, attr = default_colors

		if context.reset:
			return default_colors

		if context.border:
			fg = cyan

		elif context.in_browser:
			if context.selected:
				attr = reverse
			else:
				attr = normal
			if context.empty or context.error:
				bg = red
			if context.border:
				attr |= bold
				fg = black
			if context.media:
				if context.image:
					fg = white
				else:
					fg = white
			if context.container:
				attr |= bold
				fg = white
			if context.directory:
				attr |= bold
				fg = white
			elif context.executable and not \
					any((context.media, context.container,
						context.fifo, context.socket)):
				attr |= bold
				fg = white
			if context.socket:
				fg = white
			if context.fifo or context.device:
				fg = white
				if context.device:
					attr |= bold
			if context.link:
				fg = context.good and white or white
			if context.tag_marker and not context.selected:
				attr |= bold
				if fg in (red, magenta):
					fg = white
				else:
					fg = red
			if not context.selected and (context.cut or context.copied):
				fg = cyan
				attr |= bold
			if context.main_column:
				if context.selected:
					attr |= normal
				if context.marked:
					attr |= bold
					fg = white
			if context.badinfo:
				if attr & reverse:
					bg = red
				else:
					fg = red

		elif context.in_titlebar:
			attr |= bold
			if context.hostname:
				attr |= bold
				fg = context.bad and cyan or cyan
			elif context.directory:
				fg = cyan
			elif context.tab:
				if context.good:
					bg = white
			elif context.link:
				fg = cyan

		elif context.in_statusbar:
			if context.permissions:
				if context.good:
					fg = white
				elif context.bad:
					fg = red
			if context.marked:
				attr |= bold | reverse
				fg = white
			if context.message:
				if context.bad:
					attr |= bold
					fg = red

		if context.text:
			if context.highlight:
				attr |= reverse

		if context.in_taskview:
			if context.title:
				fg = cyan

			if context.selected:
				attr |= reverse

		return fg, bg, attr
