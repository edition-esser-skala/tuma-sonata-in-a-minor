\version "2.24.0"

\include "../definitions.ly"
\include "score_settings/full-score.ly"

\book {
  \bookpart {
    \section "Sonata"
    % \addTocEntry
    \paper {
      % systems-per-page = #4
      indent = 2\cm
    }
    \score { %\articulate
      <<
        \new StaffGroup <<
          \new GrandStaff \with { \smallGroupDistance } <<
            \set GrandStaff.instrumentName = "Violino"
            \new Staff {
              \set Staff.instrumentName = "I"
              \SonataViolinoI
            }
            \new Staff {
              \set Staff.instrumentName = "II"
              \SonataViolinoII
            }
          >>
          \new Staff {
            \set Staff.instrumentName = \markup \center-column { "Organo" "e Bassi" }
            % \transpose c c,
            \SonataOrgano
          }
        >>
        \new FiguredBass { \SonataBassFigures }
      >>
      \layout { }
      \midi { \tempo 4 = 70 }
    }
  }
}
