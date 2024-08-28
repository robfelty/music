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

% The individual instrument parts for this piece
\include "bass.ly"

%Default Score Layout
\header{
	title = "Streetbeat 98 - bass"
	composer = "Robert Felty"
	tagline = \markup {Copyright 1998  }
}

\layout{
	\context {
		\DrumStaff
		\accepts Unison
	}
}

\score { %Start of Movement
	\new DrumStaff = "Bass" <<
		\tempo 4 = 110-120
		\set DrumStaff.drumStyleTable = #(alist->hash-table bassConfig)
		\new DrumVoice {
			\voiceOne
			% we use this silent voice just to force line breaks every 4 bars
			\repeat unfold 10 {
				s1 \noBreak s1 \noBreak
				s1 \noBreak s1 \break
			}
		}
		\new DrumVoice { 
			\override Staff.Rest.Y-offset = 0
			\override Beam.positions = #'(5 . 5) 
			\voiceOne \topbass 
		}
		\new DrumVoice { \override Beam.positions = #'(5 . 5) \voiceOne \secondbass }
		\new DrumVoice { \override Beam.positions = #'(5 . 5) \voiceOne \thirdbass }
		\new DrumVoice { \override Beam.positions = #'(5 . 5) \voiceOne \bottombass }
		\new DrumVoice {
			\include "marks-top.ly"
		}
		\new DrumVoice {
			\include "marks-bottom.ly"
		}
		\global 
>>
}
