
%% LilyPond-Datei erzeugt durch Denemo Version 2.2.0

%%http://www.gnu.org/software/denemo/

\version "2.18.0"

global = {
  \time 4/4
  \key c \minor
  %\partial 4
  \numericTimeSignature
	\override MultiMeasureRest.expand-limit = #3
}

CompactChordSymbols = {}
#(define DenemoTransposeStep 0)
#(define DenemoTransposeAccidental 0)
DenemoGlobalTranspose = #(define-music-function (parser location arg)(ly:music?) #{\transpose c c#arg #})
titledPiece = {}
AutoBarline = {}
AutoEndMovementBarline = \bar "|."

% The music follows

intro = {
\global
\tempo 4 = 100
         r8 bes' c'' bes' bes' c'' r bes'~ |
         bes'2. r8 g'|
         a'2 a'8 bes' a' c''|
         r a'~  a'2.|
\break
%5
         r8 bes' c'' bes' bes' c'' r bes'~ |
         bes'2 r4 a'8 a'|
         a' a' a' a' a' bes' a' c''|
         r a'~  a'2.|
\break
%9
         r8 a' a' a' a' bes' r a'~ |
         a'2. r8 g'|
         a' a'~  a'4 a'8 a' bes' a'~ |
         a'2. r4|
\break
%13
         r8 bes' c'' bes' bes' bes' r c''|
         r bes'~  bes'2 g'8 a'|
         a' a' a' a' a' bes' r a'~ |
         a'2. r4|
\break
\set Score.skipBars = ##t
    R1*7 |
r2
}
chorus = {
          r8 %{/Users/robfelty/Music/GarageBand/Ich-bin-gefallen-gesang.pdf:548:340:0%} e'8 f' e'16 ees'~|
\break
         ees'8 c'~  c'2 d'16 e' f'8|
         g' e' r c'~  c' e' f' e'16 ees'~|
         ees'8 c'~  c'2 d'16 e' f'8|
         gis' e' r c'~  c' e' f' e'16 ees'~|
\break
         ees'8 c'~  c'4 r8 e' f' e'16 ees'~ |
%30
         ees'8 g'~  g'4 r8 e' f' ees'16 a'~ |
         a'1  |
         g'2 
         }

bridge = {
r8 c'16 c'16 c'4 cis'16 d' ees' e' r4 |
r8 e'16 e'16 e'16 e'16 r16 f'16 r16 fis'16 r16 g'16 r4 | 
\break
r8 aes'16 aes'16 aes'16 aes'16 r16 a'16 r16 bes'16 r 16 b'16 r4 |
r8 b'16 b'16 b'8 c''16 cis''16 r16 d''16 r16 ees''16 r4 |
\pageBreak
r8 c'16 c'16 c'16 c'16 r16 cis'16 r16 d'16 r16 e'16 r4 |
r8 e'16 e'16 e'16 e'16 r16 e'16 r16 fis'16 r16 fis'16 r8 f'16 fis'16 | 
\break
g'8 f'8 aes'16 g'8 bes'16 r16 a'16~ a'8 r4 |
c''16 c''16 r16 c''16 r16 b'16 r16 c''16   
}
chorus_rest = {
r2 |
\break
}
giveup = {
r8 b16 c'16 d'16 c'16 b8 |
\break
\time 2/4
c'4 r4 |
}

solo = {
\time 4/4
\set Score.skipBars = ##t
s1*0^"Solo  - gleiche Akkorde"
    R1*15 %^\markup{ Solo }
r2
} 

chorus_lyrics = \lyricmode { 
Ich bin ge -- fal -- len 
a -- ber ich le -- be noch 
ich bin ge -- fal -- len 
a -- ber ich stre -- be noch 
ich bin ge -- fal -- len 
ich bin ge -- fal -- len 
ich bin ge -- fal -- len 
}

giveup_lyrics = \lyricmode {
und ich ge -- be nicht auf
}
standup_lyrics = \lyricmode {
und ich ste -- he jetzt auf
}

intro_lyrics = \lyricmode { 
In ein -- em frem -- den Land 
be -- ginnt die se Ge -- schich -- te 
Seit die -- sem  schwer -- en Tag 
hat das gan -- ze Le -- ben an -- dre Ge -- wich -- te 
Ich lei -- de im -- mer noch 
beim Ko -- chen oh -- ne Ge -- schmack 
hab a -- ber neu -- e Freun -- de 
und es nur des -- we -- gen da -- ran lag 
}



bridge_lyrics = \lyricmode {
Die -- ser Tag an der Ter -- rass
Ich er -- in -- ner mich mit Hass
auf dem Bo -- den da ich lag
wuss -- te nicht mit wem ich sprach
In den Mo -- na -- ten da -- nach
herrscht in mei -- nem Kopf ein Krach
Der Ge -- dan -- ke im -- mer wie -- der
dass ich wär nie wach

}

the_lyrics = {
\intro_lyrics
\chorus_lyrics
\bridge_lyrics
\chorus_lyrics
\standup_lyrics
\chorus_lyrics
\giveup_lyrics
}





%Default Score Layout
\header{DenemoLayoutName = "Default Score Layout"
        instrumentation = \markup { \with-url #'"scheme:(d-BookInstrumentation)" "Full Score"}
title = "Ich bin gefallen"
composer = "Robert Felty"
        }
\layout{
\context
{
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
    \override NonMusicalPaperColumn.page-break-permission = ##f
}
}

\header {
tagline = \markup {Copyright \simple #(strftime "%Y" (localtime (current-time)))}

        }
#(set-default-paper-size "a4")
#(set-global-staff-size 20 )
\paper {

indent = 0.0
top-margin = 2\cm
bottom-margin = 2\cm
       }


intro_harmonies = \chordmode {
  c1:m7 | f | c:m7 | f  | % 1-4
  c1:m7 | f | c:m7 | f  | % 5-8
  c1:m7 | f | c:m7 | f  | % 9-12
  c1:m7 | f | c:m7 | f  | % 13-16
}

chorus_chords = \chordmode {
  c1:m7 | f | bes:m | g2 f2  | % 1-4
  c1:m7 | f | bes:m | g2 f2  | % 1-4
}

bridge_chords = \chordmode {
  c1 | d:m | e:m | f  | % 1-4
  c1 | d:m | e:m | f  | % 1-4
}
solo_chords = \chordmode {
  s2 | s1*16
}

harmonies = {
  \global
	\intro_harmonies
	\chorus_chords
	\chorus_chords
	\bridge_chords
	\chorus_chords
	\solo_chords
	\chorus_chords
}

\score { %Start of Movement
          <<

%Start of Staff
 \new ChordNames { \harmonies }
    %\new FretBoards { \harmonies }
\new Staff = "Part 1"  {
 \context Voice = "intro"  { 
\global
\intro
\chorus
\chorus_rest
\bridge
\chorus
\giveup
\solo
\chorus
\giveup
                        } %End of voice

                       } %End of Staff

        \new Lyrics \lyricsto "intro" \the_lyrics
        %\chorus_lyrics

          >>

       } %End of Movement



