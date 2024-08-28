\version "2.24.0"
global = {
\overrideTimeSignatureSettings
        4/4        % timeSignatureFraction
        1/4        % baseMomentFraction
        #'(1 1 1 1)    % beatStructure
        #'()       % beamExceptions
  \time 4/4
  \numericTimeSignature
	\override MultiMeasureRest.expand-limit = #3
}

% general definitions and settings I like for my drumline notation
\include "../../lib/drumline.ly"

%Default Score Layout
\header{
	title = "Streetbeat 98 - Snare drum"
	composer = "Robert Felty"
	tagline = \markup {Copyright 1998  }
}
\new DrumStaff = "Snare" <<
	\new DrumVoice {
		\tempo 4 = 110-120
		\override StemTremolo.slope = #0.25
		\override StemTremolo.beam-width = #1.5
		\override Stem.length = #7
		% we set the beam positions to be fixed so that they are horizontal, and not sloped
		\override Beam.positions = #'(4 . 4)
		\set DrumStaff.drumStyleTable = #(alist->hash-table snareConfig)
		\global 
		\include "snare.ly"
	}
	\new DrumVoice {
		\include "marks-top.ly"
	}
	\new DrumVoice {
		\include "marks-bottom.ly"
	}
>>
