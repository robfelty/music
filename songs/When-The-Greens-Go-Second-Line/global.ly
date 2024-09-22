
global = {
		\set Score.skipBars = ##t
		\set Score.rehearsalMarkFormatter = #format-mark-box-barnumbers
\overrideTimeSignatureSettings
        4/4        % timeSignatureFraction
        1/4        % baseMomentFraction
        #'(1 1 1 1)    % beatStructure
        #'()       % beamExceptions
  \numericTimeSignature
}
\header{
	instrumentation = \markup { \with-url #'"scheme:(d-BookInstrumentation)" "Full Score"}
	title = "When The Greens Go Second Line "
	composer = "Traditional "
	arranger = "arr. Robert Felty"
	tagline = \markup {Copyright 2024  }
}

\layout{
	\context {
		\DrumStaff
		\accepts Unison
	}
}
