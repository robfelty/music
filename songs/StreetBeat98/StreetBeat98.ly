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
	instrumentation = \markup { \with-url #'"scheme:(d-BookInstrumentation)" "Full Score"}
	title = "Streetbeat 98"
	composer = "Robert Felty"
	tagline = \markup {Copyright 1998  }
}

\layout{
	\context {
			\Score
			\override StaffGrouper.staff-staff-spacing.padding = #2
    \override StaffGrouper.staff-staff-spacing.basic-distance = #1
	}
	\context {
		\DrumStaff
		\accepts Unison
	}
}

\include "../../lib/drumscore.ly"

\score { %Start of Movement
 \new StaffGroup <<
	 % this makes it so that adding flams doesn't adjust the spacing between notes
	\override Score.SpacingSpanner.strict-note-spacing = ##t

	\new DrumStaff = "Snare" <<
		\new DrumVoice {
		\tempo 4 = 110-120
		\set Staff.instrumentName = "Snare"
		\set Staff.shortInstrumentName = "Snare"
		% tremolo settings are to get nice diddle notation
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
	>>
	\new DrumStaff = "Tenors" <<
		\tempo 4 = 110-120
		\set Staff.instrumentName = "Tenors"
		\set Staff.shortInstrumentName = "Tenors"
		\override StemTremolo.slope = #0.25
		\override StemTremolo.beam-width = #1.5
		\override Beam.positions = #'(5 . 5)
		\set DrumStaff.drumStyleTable = #(alist->hash-table tenorConfig)
		\global 
		\include "tenors.ly"
	>>
	\new DrumStaff = "Bass" <<
		\tempo 4 = 110-120
		\set Staff.instrumentName = "Bass"
		\set Staff.shortInstrumentName = "Bass"
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
		\global 
		>>
		\new DrumStaff = "Cymbals" <<
			\tempo 4 = 110-120
			\set Staff.instrumentName = "Cymbals"
			\set Staff.shortInstrumentName = "Cymbals"
			\global 
			\new DrumVoice {
					\include "cymbals.ly"
				}
			\new DrumVoice {
				\include "marks-bottom.ly"
			}
		>>
>>
}
