
#(set-default-paper-size "a4" 'landscape)
\paper {
	indent = 0
	top-margin = 2\cm
	bottom-margin = 2\cm
	right-margin = 2\cm
	left-margin = 2\cm
	oddHeaderMarkup = \markup {
			\fill-line
			{
				\fromproperty #'page:page-number-string                   %% left
				 \if \should-print-page-number \fromproperty #'header:title  %% center
				" "                                                       %% right
			 }
	}
	evenHeaderMarkup = \oddHeaderMarkup
}
