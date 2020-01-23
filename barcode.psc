%!PS

% Barcode Writer in Pure PostScript - Version 2019-11-08
% https://bwipp.terryburton.co.uk
%
% Copyright (c) 2004-2019 Terry Burton
%
% Permission is hereby granted, free of charge, to any
% person obtaining a copy of this software and associated
% documentation files (the "Software"), to deal in the
% Software without restriction, including without
% limitation the rights to use, copy, modify, merge,
% publish, distribute, sublicense, and/or sell copies of
% the Software, and to permit persons to whom the Software
% is furnished to do so, subject to the following
% conditions:
%
% The above copyright notice and this permission notice
% shall be included in all copies or substantial portions
% of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
% KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
% THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
% PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
% THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
% DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
% CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
% CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
% IN THE SOFTWARE.

% --BEGIN TEMPLATE--

% --BEGIN RESOURCE preamble--
%%BeginResource: Category uk.co.terryburton.bwipp 0.0 2019110800 29629 32838
%%BeginData:          6 ASCII Lines
%psc currentglobal
%psc true setglobal
%psc /Generic /Category findresource dup length 1 add dict copy dup
%psc /InstanceType /setpacking where {pop /packedarraytype} {/arraytype} ifelse put
%psc /uk.co.terryburton.bwipp exch /Category defineresource pop
%psc setglobal
%%EndData
%%EndResource
% --END RESOURCE preamble--

% --BEGIN RESOURCE raiseerror--
% --REQUIRES preamble--
%%BeginResource: uk.co.terryburton.bwipp raiseerror 0.0 2019110800 39041 38872
%%BeginData:         15 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc begin
/raiseerror {
  $error exch /errorinfo exch put
  $error exch /errorname exch put
  $error /command null put
  $error /newerror true put
  stop
}
%psc [/barcode] {null def} forall
bind def
%psc /raiseerror dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END RESOURCE raiseerror--

% --BEGIN RENDERER renlinear--
% --REQUIRES preamble raiseerror--
%%BeginResource: uk.co.terryburton.bwipp renlinear 0.0 2019110800 74728 73842
%%BeginData:        239 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc begin
%psc /renlinear {
%psc 
%psc     20 dict begin          % Confine variables to local scope
%psc 
%psc     /args exch def   % We are given some arguments
%psc 
%psc     % Default options
%psc     /sbs [] def
%psc     /bhs [] def
%psc     /bbs [] def
%psc     /txt [] def
%psc     /barcolor (unset) def
%psc     /includetext false def
%psc     /textcolor (unset) def
%psc     /textxalign (unset) def
%psc     /textyalign (unset) def
%psc     /textfont (Courier) def
%psc     /textsize 10 def
%psc     /textxoffset 0 def
%psc     /textyoffset 0 def
%psc     /textgaps 0 def
%psc     /alttext () def
%psc     /bordercolor (unset) def
%psc     /backgroundcolor (unset) def
%psc     /inkspread 0 def
%psc     /width 0 def
%psc     /barratio 1 def
%psc     /spaceratio 1 def
%psc     /showborder false def
%psc     /borderleft 10 def
%psc     /borderright 10 def
%psc     /bordertop 1 def
%psc     /borderbottom 1 def
%psc     /borderwidth 0.5 def
%psc     /guardwhitespace false def
%psc     /guardleftpos 0 def
%psc     /guardleftypos 0 def
%psc     /guardrightpos 0 def
%psc     /guardrightypos 0 def
%psc     /guardwidth 6 def
%psc     /guardheight 7 def
%psc 
%psc     % Apply the renderer options and the user options
%psc     args {def} forall
%psc     opt {def} forall
%psc 
%psc     /barcolor barcolor cvlit def
%psc     /textcolor textcolor cvlit def
%psc     /textxalign textxalign cvlit def
%psc     /textyalign textyalign cvlit def
%psc     /textfont textfont cvlit def
%psc     /textsize textsize cvr def
%psc     /textxoffset textxoffset cvr def
%psc     /textyoffset textyoffset cvr def
%psc     /textgaps textgaps cvr def
%psc     /alttext alttext cvlit def
%psc     /bordercolor bordercolor cvlit def
%psc     /backgroundcolor backgroundcolor cvlit def
%psc     /inkspread inkspread cvr def
%psc     /width width cvr def
%psc     /barratio barratio cvr def
%psc     /spaceratio spaceratio cvr def
%psc     /borderleft borderleft cvr def
%psc     /borderright borderright cvr def
%psc     /bordertop bordertop cvr def
%psc     /borderbottom borderbottom cvr def
%psc     /borderwidth borderwidth cvr def
%psc     /guardleftpos guardleftpos cvr def
%psc     /guardleftypos guardleftypos cvr def
%psc     /guardrightpos guardrightpos cvr def
%psc     /guardrightypos guardrightypos cvr def
%psc     /guardwidth guardwidth cvr def
%psc     /guardheight guardheight cvr def
%psc 
%psc     % Create bar elements and put them into the bars array
%psc     /bars sbs length 1 add 2 idiv array def
%psc     /x 0.00 def /maxh 0 def
%psc     0 1 sbs length 1 add 2 idiv 2 mul 2 sub {
%psc         /i exch def
%psc         i 2 mod 0 eq {           % i is even
%psc             /d sbs i get barratio mul barratio sub 1 add def  % d=digit*r-r+1
%psc             sbs i get 0 ne {
%psc                 /h bhs i 2 idiv get 72 mul def  % Height from bhs
%psc                 /c d 2 div x add def            % Centre of the bar = x + d/2
%psc                 /y bbs i 2 idiv get 72 mul def  % Baseline from bbs
%psc                 /w d inkspread sub def          % bar width = digit - inkspread
%psc                 bars i 2 idiv [h c y w] put     % Add the bar entry
%psc                 h y add maxh gt {/maxh h y add def} if
%psc             } {
%psc                 bars i 2 idiv -1 put            % Dummy entry
%psc             } ifelse
%psc         } {
%psc             /d sbs i get spaceratio mul spaceratio sub 1 add def  % d=digit*r-r+1
%psc         } ifelse
%psc         /x x d add def  % x+=d
%psc     } for
%psc 
%psc     gsave
%psc 
%psc     currentpoint translate
%psc 
%psc     % Force symbol to given width
%psc     width 0 ne {
%psc         width 72 mul x div 1 scale
%psc     } if
%psc 
%psc     % Set RGB or CMYK color depending on length of given hex string
%psc     /setanycolor {
%psc         /anycolor exch def
%psc         anycolor length 6 eq {
%psc             (<      >) 8 string copy dup 1 anycolor putinterval cvx exec {255 div} forall setrgbcolor
%psc         } if
%psc         anycolor length 8 eq {
%psc             (<        >) 10 string copy dup 1 anycolor putinterval cvx exec {255 div} forall setcmykcolor
%psc         } if
%psc     } bind def
%psc 
%psc     % Display the border and background
%psc     newpath
%psc     borderleft neg borderbottom neg moveto
%psc     x borderleft add borderright add 0 rlineto
%psc     0 maxh borderbottom add bordertop add rlineto
%psc     x borderleft add borderright add neg 0 rlineto
%psc     0 maxh borderbottom add bordertop add neg rlineto
%psc     closepath
%psc     backgroundcolor (unset) ne { gsave backgroundcolor setanycolor fill grestore } if
%psc     showborder {
%psc         gsave
%psc         bordercolor (unset) ne { bordercolor setanycolor } if
%psc         borderwidth setlinewidth stroke
%psc         grestore
%psc     } if
%psc 
%psc     % Display the bars for elements in the bars array
%psc     gsave
%psc     0 setlinecap
%psc     barcolor (unset) ne { barcolor setanycolor } if
%psc     bars {
%psc         dup -1 ne {
%psc             aload pop newpath setlinewidth moveto 0 exch rlineto stroke
%psc         } {
%psc             pop
%psc         } ifelse
%psc     } forall
%psc     grestore
%psc 
%psc     % Display the text for elements in the text array
%psc     textcolor (unset) ne { textcolor setanycolor } if
%psc     includetext {
%psc         textxalign (unset) eq textyalign (unset) eq and alttext () eq and {
%psc             /s 0 def /fn () def
%psc             txt {
%psc                 {} forall
%psc                 2 copy s ne exch fn ne or {
%psc                     2 copy /s exch def /fn exch def
%psc                     selectfont
%psc                 } {
%psc                     pop pop
%psc                 } ifelse
%psc                 moveto show
%psc             } forall
%psc         } {
%psc             textfont textsize selectfont
%psc             alttext () eq {
%psc                 /txt [ txt { 0 get {} forall } forall ] def
%psc                 /tstr txt length string def
%psc                 0 1 txt length 1 sub { dup txt exch get tstr 3 1 roll put } for
%psc             } {
%psc                 /tstr alttext def
%psc             } ifelse
%psc 
%psc             % Find true ascent of font
%psc             tstr length 0 eq {
%psc                 0
%psc             } {
%psc                 gsave
%psc                 newpath 0 0 moveto (0) false charpath pathbbox
%psc                 4 1 roll pop pop pop
%psc                 grestore
%psc                 currentfont /PaintType known {currentfont /PaintType get 2 eq} {false} ifelse
%psc                 currentfont /StrokeWidth known and {
%psc                     currentfont /StrokeWidth get 2 div 0 exch
%psc                     currentfont /FontMatrix get dtransform
%psc                     dup mul exch dup mul add sqrt
%psc                     add
%psc                 } if
%psc             } ifelse
%psc             /textascent exch def
%psc             /textwidth tstr stringwidth pop tstr length 1 sub textgaps mul add def
%psc 
%psc             /textxpos textxoffset x textwidth sub 2 div add def
%psc             textxalign (left) eq { /textxpos textxoffset def } if
%psc             textxalign (right) eq { /textxpos x textxoffset sub textwidth sub def } if
%psc             textxalign (offleft) eq { /textxpos textwidth textxoffset add neg def } if
%psc             textxalign (offright) eq { /textxpos x textxoffset add def } if
%psc             textxalign (justify) eq textwidth x lt and {
%psc                 /textxpos 0 def
%psc                 /textgaps x textwidth sub tstr length 1 sub div def
%psc             } if
%psc             /textypos textyoffset textascent add 1 add neg def
%psc             textyalign (above) eq { /textypos textyoffset maxh add 1 add def } if
%psc             textyalign (center) eq { /textypos textyoffset maxh textascent sub 2 div add def } if
%psc             textxpos textypos moveto textgaps 0 tstr ashow
%psc         } ifelse
%psc     } if
%psc 
%psc     % Display the guard elements
%psc     guardwhitespace {
%psc         0.75 setlinewidth
%psc         guardleftpos 0 ne {
%psc             newpath
%psc             guardleftpos neg guardwidth add guardleftypos guardwidth 2 div add moveto
%psc             guardwidth neg guardheight -2 div rlineto
%psc             guardwidth guardheight -2 div rlineto
%psc             stroke
%psc         } if
%psc         guardrightpos 0 ne {
%psc             newpath
%psc             guardrightpos x add guardwidth sub guardrightypos guardheight 2 div add moveto
%psc             guardwidth guardheight -2 div rlineto
%psc             guardwidth neg guardheight -2 div rlineto
%psc             stroke
%psc         } if
%psc     } if
%psc 
%psc     grestore
%psc 
%psc     end
%psc 
%psc }
%psc [/barcode] {null def} forall
%psc bind def
%psc /renlinear dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END RENDERER renlinear--

% --BEGIN RENDERER renmatrix--
% --REQUIRES preamble raiseerror--
%%BeginResource: uk.co.terryburton.bwipp renmatrix 0.0 2019110800 90463 89573
%%BeginData:        306 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc begin
/renmatrix {
bwipjs_dontdraw { return } if

    20 dict begin

    /args exch def

    % Default options
    /width 1 def
    /height 1 def
    /barcolor (unset) def
    /backgroundcolor (unset) def
    /colormap (unset) def
    /dotty false def
    /inkspread 0 def
    /inkspreadh 0 def
    /inkspreadv 0 def
    /includetext false def
    /txt [] def
    /textcolor (unset) def
    /textxalign (unset) def
    /textyalign (unset) def
    /textfont (Courier) def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset 0 def
    /textgaps 0 def
    /alttext () def

    % Apply the renderer options and the user options
    args {def} forall
    opt {def} forall

    /width width cvr def
    /height height cvr def
    /barcolor barcolor cvlit def
    /backgroundcolor backgroundcolor cvlit def
    /inkspread inkspread cvr def
    /inkspreadh inkspreadh cvr def
    /inkspreadv inkspreadv cvr def
    /textcolor textcolor cvlit def
    /textxalign textxalign cvlit def
    /textyalign textyalign cvlit def
    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /textgaps textgaps cvr def
    /alttext alttext cvlit def

    inkspread 0 ne {/inkspreadh inkspread def} if
    inkspread 0 ne {/inkspreadv inkspread def} if

    /xyget { pixx mul add pixs exch get} bind def
    /cget { pixx mul add cache exch get and} bind def
    /cput {  % Optimise by only storing "stem" corners
        dup 4 mod 0 eq { % dir is up or left
            3 1 roll pixx mul add cache exch 2 copy get 4 -1 roll or put
        } {
            pop pop pop
        } ifelse
    } bind def

    /abcd {
        4 string 0 [
            5 -2 roll
            pixx mul add dup
            pixs exch 2 getinterval aload pop 3 -1 roll  % A B
            pixs exch pixx add 2 getinterval aload pop   % C D
        ] {3 copy 48 add put pop 1 add} forall pop
    } bind def

    /right {dir 1 ne {x y dir cput [x y]} if  /x x 1 add def  /dir 1 def} bind def
    /down  {dir 2 ne {x y dir cput [x y]} if  /y y 1 add def  /dir 2 def} bind def
    /left  {dir 4 ne {x y dir cput [x y]} if  /x x 1 sub def  /dir 4 def} bind def
    /up    {dir 8 ne {x y dir cput [x y]} if  /y y 1 sub def  /dir 8 def} bind def

    /trace {
        % Walk the outline of a region emitting edge coordinates of the path
        /y exch def  /x exch def
        % dir 1:right 2:down 4:left 8:up
        /dir x 1 add y 1 add xyget 1 eq {8} {4} ifelse def
        /sx x def  /sy y def  /sdir dir def

        % A B
        % C D
        mark {
            x y abcd
            1 {  % Common exit
                dup dup (0001) eq exch dup (0011) eq exch (1011) eq or or {pop right exit} if
                dup dup (0010) eq exch dup (1010) eq exch (1110) eq or or {pop down  exit} if
                dup dup (1000) eq exch dup (1100) eq exch (1101) eq or or {pop left  exit} if
                dup dup (0100) eq exch dup (0101) eq exch (0111) eq or or {pop up    exit} if
                dup (1001) eq {
                    dir 2 eq {pop left exit} {pop right exit} ifelse
                } {  % 0110
                    dir 1 eq {pop down exit} {pop up exit} ifelse
                } ifelse
            } repeat
            x sx eq y sy eq and dir sdir eq and {exit} if
        } loop
        counttomark array astore exch pop

    } bind def

    % Set RGB or CMYK color depending on length of given hex string
%psc     /setanycolor {
%psc         /anycolor exch def
%psc         anycolor length 6 eq {
%psc             (<      >) 8 string copy dup 1 anycolor putinterval cvx exec {255 div} forall setrgbcolor
%psc         } if
%psc         anycolor length 8 eq {
%psc             (<        >) 10 string copy dup 1 anycolor putinterval cvx exec {255 div} forall setcmykcolor
%psc         } if
%psc     } bind def

    % Plot a layer of single colour
    /drawlayer {

        /pixsorig pixs def
        /pixs exch def

        % Pad the bitmap on all sides
        /pixs [
            pixx 2 add {0} repeat
            0 pixx pixs length 1 sub {
                0 exch
                pixs exch pixx getinterval aload pop
                0
            } for
            pixx 2 add {0} repeat
        ] def
        /pixx pixx 2 add def
        /pixy pixy 2 add def

        % Cache of visited corners for each direction
        /cache [ pixs length {0} repeat ] def

        % Construct paths by tracing regions avoiding duplication by using the cache
        /paths [
            0 1 pixy 2 sub {
                /j exch def
                0 1 pixx 2 sub {
                    /i exch def
                    /k i j abcd def
                    k (0001) eq k (1001) eq or {  % Black region stem corners
                        8 i j cget 0 eq {
                            i j trace
                        } if
                    } if
                    k (1110) eq {  % White region stem corner
                        4 i j cget 0 eq {
                            i j trace
                        } if
                    } if
                } for
            } for
        ] def

        % Revert the bitmap size
        /pixx pixx 2 sub def
        /pixy pixy 2 sub def

        % Draw the image
        newpath
        paths {
            /p exch def
            /len p length def
            p len 1 sub get aload pop
            p 0 get aload pop
            0 1 len 1 sub {                                % x1 y1 x2 y2
                /i exch def
                p i 1 add len mod get aload pop 6 -2 roll  % x3 y3 x1 y1 x2 y2
                5 index inkspreadh
                4 index 4 -1 roll lt {add} {sub} ifelse    % y3<y1 ? x2+i : x2-i
                4 1 roll
                4 index inkspreadv
                4 index 4 -1 roll gt {add} {sub} ifelse    % x3>x1 ? y2+i : y2-i
                4 -1 roll exch pixy exch sub
                i 0 eq {moveto} {lineto} ifelse
            } for                                          % x2 y2 x3 y3
            closepath
            pop pop pop pop
        } forall
        fill

        /pixs pixsorig def

    } bind def

    /drawlayerdots {

        /pixsorig pixs def
        /pixs exch def

        newpath
        0 1 pixs length 1 sub {
            dup pixx mod /x exch def
            pixx idiv /y exch def
            x y xyget 1 eq {
               x 0.5 add pixy y sub 0.5 sub moveto
               x 0.5 add pixy y sub 0.5 sub 0.5 inkspread sub 0 360 arc
            } if
        } for
        fill

        /pixs pixsorig def

    } bind def

    gsave

    % Draw the image
    /inkspread  inkspread  2 div def
    /inkspreadh inkspreadh 2 div def
    /inkspreadv inkspreadv 2 div def
    currentpoint translate
    width pixx div 72 mul height pixy div 72 mul scale
    0 0 moveto pixx 0 lineto pixx pixy lineto 0 pixy lineto closepath
%psc     backgroundcolor (unset) ne { gsave backgroundcolor setanycolor fill grestore } if

    colormap (unset) eq {
        /colormap << 1 barcolor >> def
    } if

    colormap {
        setanycolor
        /key exch def
        [
            pixs { key eq {1} {0} ifelse } forall
        ] dotty {drawlayerdots} {drawlayer} ifelse
    } forall

    % Display the text for elements in the text array
    textcolor (unset) ne { textcolor setanycolor } if
    includetext {
        textxalign (unset) eq textyalign (unset) eq and alttext () eq and {
            /s 0 def /fn () def
            txt {
                {} forall
                2 copy s ne exch fn ne or {
                    2 copy /s exch def /fn exch def
                    selectfont
                } {
                    pop pop
                } ifelse
                moveto show
            } forall
        } {
            textfont textsize selectfont
            alttext () eq {
                /txt [ txt { 0 get {} forall } forall ] def
                /tstr txt length string def
                0 1 txt length 1 sub { dup txt exch get tstr 3 1 roll put } for
            } {
                /tstr alttext def
            } ifelse

            % Find true ascent of font
            tstr length 0 eq {
                0
            } {
                gsave
                newpath 0 0 moveto (0) false charpath pathbbox
                4 1 roll pop pop pop
                grestore
%psc                 currentfont /PaintType known {currentfont /PaintType get 2 eq} {false} ifelse
%psc                 currentfont /StrokeWidth known and {
%psc                     currentfont /StrokeWidth get 2 div 0 exch
%psc                     currentfont /FontMatrix get dtransform
%psc                     dup mul exch dup mul add sqrt
%psc                     add
%psc                 } if
            } ifelse
            /textascent exch def
            /textwidth tstr stringwidth pop tstr length 1 sub textgaps mul add def

            /textxpos textxoffset x textwidth sub 2 div add def
            textxalign (left) eq { /textxpos textxoffset def } if
            textxalign (right) eq { /textxpos x textxoffset sub textwidth sub def } if
            textxalign (offleft) eq { /textxpos textwidth textxoffset add neg def } if
            textxalign (offright) eq { /textxpos x textxoffset add def } if
            textxalign (justify) eq textwidth x lt and {
                /textxpos 0 def
                /textgaps x textwidth sub tstr length 1 sub div def
            } if
            /textypos textyoffset textascent add 1 add neg def
            textyalign (above) eq { /textypos textyoffset pixy add 1 add def } if
            textyalign (center) eq { /textypos textyoffset pixy textascent sub 2 div add def } if
            textxpos textypos moveto textgaps 0 tstr ashow
        } ifelse
    } if

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /renmatrix dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END RENDERER renmatrix--

% --BEGIN RENDERER renmaximatrix--
% --REQUIRES preamble raiseerror--
%%BeginResource: uk.co.terryburton.bwipp renmaximatrix 0.0 2019110800 50046 50044
%%BeginData:         81 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc begin
%psc /renmaximatrix {
%psc 
%psc     20 dict begin
%psc 
%psc     /args exch def   % We are given some arguments
%psc 
%psc     % Default options
%psc     /barcolor (unset) def
%psc     /backgroundcolor (unset) def
%psc 
%psc     % Apply the renderer options and the user options
%psc     args {def} forall
%psc     opt {def} forall
%psc 
%psc     /barcolor barcolor cvlit def
%psc     /backgroundcolor backgroundcolor cvlit def
%psc 
%psc     % Set RGB or CMYK color depending on length of given hex string
%psc     /setanycolor {
%psc         /anycolor exch def
%psc         anycolor length 6 eq {
%psc             (<      >) 8 string copy dup 1 anycolor putinterval cvx exec {255 div} forall setrgbcolor
%psc         } if
%psc         anycolor length 8 eq {
%psc             (<        >) 10 string copy dup 1 anycolor putinterval cvx exec {255 div} forall setcmykcolor
%psc         } if
%psc     } bind def
%psc 
%psc     gsave
%psc 
%psc     currentpoint translate
%psc 
%psc     2.4945 dup scale  % from 1pt to 0.88mm
%psc 
%psc     0 0 moveto 30 0 lineto 30 29 lineto 0 29 lineto closepath
%psc     backgroundcolor (unset) ne { gsave backgroundcolor setanycolor fill grestore } if
%psc     barcolor (unset) ne { barcolor setanycolor } if
%psc 
%psc     0.5 0.5774 translate
%psc 
%psc     newpath
%psc     pixs {
%psc         dup
%psc         /x exch 30 mod def
%psc         /y exch 30 idiv def
%psc         y 2 mod 0 eq {x} {x 0.5 add} ifelse
%psc         32 y sub 0.8661 mul
%psc         moveto
%psc         0     0.5774 rmoveto
%psc         -0.5 -0.2887 rlineto
%psc         0    -0.5774 rlineto
%psc         0.5  -0.2887 rlineto
%psc         0.5   0.2887 rlineto
%psc         0     0.5774 rlineto
%psc         -0.5  0.2887 rlineto
%psc         closepath
%psc     } forall
%psc     fill
%psc 
%psc     % Plot the locator symbol
%psc     newpath 14 13.8576 0.5774 0 360 arc closepath
%psc     14 13.8576 1.3359 360 0 arcn closepath fill
%psc     newpath 14 13.8576 2.1058 0 360 arc closepath
%psc     14 13.8576 2.8644 360 0 arcn closepath fill
%psc     newpath 14 13.8576 3.6229 0 360 arc closepath
%psc     14 13.8576 4.3814 360 0 arcn closepath fill
%psc 
%psc     grestore
%psc 
%psc     end
%psc 
%psc }
%psc [/barcode] {null def} forall
%psc bind def
%psc /renmaximatrix dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END RENDERER renmaximatrix--

% --BEGIN ENCODER ean5--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: EAN-5 (5 digit addon)
% --EXAM: 90200
% --EXOP: includetext guardwhitespace
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp ean5 0.0 2019110800 58118 57836
%%BeginData:        137 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ean5 {

    20 dict begin

    /options exch def                   % We are given an option string
    /barcode exch def                   % We are given a barcode string

    /dontdraw false def
    /includetext false def              % Enable/disable text
    /textfont /Helvetica def
    /textsize 12 def
    /textxoffset 0 def
    /textyoffset (unset) def
    /height 0.7 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /height height cvr def
    /textxoffset textxoffset cvr def
    textyoffset (unset) eq {
        /textyoffset height 72 mul 1 add def
    } {
        /textyoffset textyoffset cvr def
    } ifelse

    % Validate input
    barcode length 5 ne {
        /bwipp.ean5badLength (EAN-5 add-on must be 5 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.ean5badCharacter (EAN-5 add-on must contain only digits) //raiseerror exec
        } if
    } forall

    % Create an array containing the character mappings
    /encs
    [ (3211) (2221) (2122) (1411) (1132)
      (1231) (1114) (1312) (1213) (3112)
      (112) (11)
    ] def

    % Create a string of the available characters
    /barchars (0123456789) def

    % Determine the mirror map based on mod 10 checksum
    /mirrormaps
    [ (11000) (10100) (10010) (10001) (01100)
      (00110) (00011) (01010) (01001) (00101)
    ] def
    /checksum 0 def
    0 1 4 {
        /i exch def
        /barchar barcode i get 48 sub def
        i 2 mod 0 eq {
            /checksum barchar 3 mul checksum add def
        } {
            /checksum barchar 9 mul checksum add def
        } ifelse
    } for
    /checksum checksum 10 mod def
    /mirrormap mirrormaps checksum get def

    /sbs 31 string def
    /txt 5 array def

    0 1 4 {
        /i exch def

        % Prefix with either a start character or separator character
        i 0 eq {
            sbs 0 encs 10 get putinterval
        } {
            sbs i 1 sub 6 mul 7 add encs 11 get putinterval
        } ifelse

        % Lookup the encoding for the barcode character
        barcode i 1 getinterval barchars exch search
        pop                     % Discard true leaving pre
        length /indx exch def   % indx is the length of pre
        pop pop                 % Discard seek and post
        /enc encs indx get def  % Get the indxth encoding
        mirrormap i get 49 eq { % Reverse enc if 1 in this position in mirrormap
            /enclen enc length def
            /revenc enclen string def
            0 1 enclen 1 sub {
                /j exch def
                /char enc j get def
                revenc enclen j sub 1 sub char put
            } for
            /enc revenc def
        } if
        sbs i 6 mul 3 add enc putinterval   % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 1 sub 9 mul 13 add textxoffset add textyoffset textfont textsize] put
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [16{height}repeat]
    /bbs [16{0}repeat]
    includetext {
        /txt txt
    } if
    /opt options
    /guardrightpos 10
    /guardrightypos textyoffset 4 add
    /bordertop 10
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ean5 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ean5--

% --BEGIN ENCODER ean2--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: EAN-2 (2 digit addon)
% --EXAM: 05
% --EXOP: includetext guardwhitespace
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp ean2 0.0 2019110800 56699 56466
%%BeginData:        122 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ean2 {

    20 dict begin

    /options exch def                   % We are given an options string
    /barcode exch def                   % We are given a barcode string

    /dontdraw false def
    /includetext false def               % Enable/disable text
    /textfont /Helvetica def
    /textsize 12 def
    /textxoffset 0 def
    /textyoffset (unset) def
    /height 0.7 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /height height cvr def
    /textxoffset textxoffset cvr def
    textyoffset (unset) eq {
        /textyoffset height 72 mul 1 add def
    } {
        /textyoffset textyoffset cvr def
    } ifelse

    % Validate input
    barcode length 2 ne {
      /bwipp.ean2badLength (EAN-2 add-on must be 2 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.ean2badCharacter (EAN-2 add-on must contain only digits) //raiseerror exec
        } if
    } forall

    % Create an array containing the character mappings
    /encs
    [ (3211) (2221) (2122) (1411) (1132)
      (1231) (1114) (1312) (1213) (3112)
      (112) (11)
    ] def

    % Create a string of the available characters
    /barchars (0123456789) def

    % Determine the mirror map based on mod 4 checksum
    /mirrormap [(00) (01) (10) (11)] barcode 0 2 getinterval cvi 4 mod get def

    /sbs 13 string def
    /txt 2 array def

    0 1 1 {
        /i exch def

        % Prefix with either a start character or separator character
        i 0 eq {
            sbs 0 encs 10 get putinterval
        } {
            sbs i 1 sub 6 mul 7 add encs 11 get putinterval
        } ifelse

        % Lookup the encoding for the barcode character
        barcode i 1 getinterval barchars exch search
        pop                     % Discard true leaving pre
        length /indx exch def   % indx is the length of pre
        pop pop                 % Discard seek and post
        /enc encs indx get def  % Get the indxth encoding
        mirrormap i get 49 eq { % Reverse enc if 1 in this position in mirrormap
            /enclen enc length def
            /revenc enclen string def
            0 1 enclen 1 sub {
                /j exch def
                /char enc j get def
                revenc enclen j sub 1 sub char put
            } for
            /enc revenc def
        } if
        sbs i 6 mul 3 add enc putinterval   % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 1 sub 9 mul 13 add textxoffset add textyoffset textfont textsize] put
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [12{height}repeat]
    /bbs [12{0}repeat]
    includetext {
        /txt txt
    } if
    /opt options
    /guardrightpos 10
    /guardrightypos textyoffset 4 add
    /bordertop 10
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ean2 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ean2--

% --BEGIN ENCODER ean13--
% --REQUIRES preamble raiseerror renlinear ean5 ean2--
% --DESC: EAN-13
% --EXAM: 2112345678900
% --EXOP: includetext guardwhitespace
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp ean13 0.0 2019110800 80936 77207
%%BeginData:        217 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean2 dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ean13 {

    20 dict begin

    /options exch def                  % We are given an option string
    /barcode exch def                  % We are given a barcode string

    /dontdraw false def
    /includetext false def             % Enable/disable text
    /textfont /Helvetica def
    /textsize 12 def
    /textxoffset -10 def
    /textyoffset -4.5 def
    /height 1 def
    /addongap 12 def
    /addontextfont (unset) def
    /addontextsize (unset) def
    /addontextxoffset (unset) def
    /addontextyoffset (unset) def

    % Parse the input options, either a string or a dict
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def
    /addongap addongap cvr def
    addontextfont (unset) ne {/addontextfont addontextfont cvlit def} if
    addontextsize (unset) ne {/addontextsize addontextsize cvr def} if
    addontextxoffset (unset) ne {/addontextxoffset addontextxoffset cvr def} if
    addontextyoffset (unset) ne {/addontextyoffset addontextyoffset cvr def} if

    % Split off the addon
    barcode ( ) search {
        /barcode exch def
        pop
        /addon exch def
    } {
        pop
        /addon () def
    } ifelse

    % Validate the input
    barcode length 12 ne barcode length 13 ne and {
        /bwipp.ean13badLength (EAN-13 must be 12 or 13 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.ean13badCharacter (EAN-13 must contain only digits) //raiseerror exec
        } if
    } forall
    addon length 0 ne addon length 2 ne and addon length 5 ne and {
        /bwipp.ean13badAddOnLength (Add-on for EAN-13 must be 2 or 5 digits) //raiseerror exec
    } if

    % Add checksum digit
    /pad 13 string def
    /checksum 0 def
    0 1 11 {
        /i exch def
        /barchar barcode i get 48 sub def
        i 2 mod 0 eq {
            /checksum barchar checksum add def
        } {
            /checksum barchar 3 mul checksum add def
        } ifelse
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 13 eq {
        barcode 12 get checksum 48 add ne {
            /bwipp.ean13badCheckDigit (Incorrect EAN-13 check digit provided) //raiseerror exec
        } if
    } if
    pad 0 barcode putinterval       % Add barcode to the start of the pad
    pad 12 checksum 48 add put      % Put ascii for checksum at end of pad
    /barcode pad def

    % Create an array containing the character mappings
    /encs
    [ (3211) (2221) (2122) (1411) (1132)
      (1231) (1114) (1312) (1213) (3112)
      (111) (11111) (111)
    ] def

    % Create a string of the available characters
    /barchars (0123456789) def

    % Digits to mirror on left side
    /mirrormaps
    [ (000000) (001011) (001101) (001110) (010011)
      (011001) (011100) (010101) (010110) (011010)
    ] def

    /sbs 59 string def
    /txt 13 array def

    % Put the start character
    sbs 0 encs 10 get putinterval

    % First digit - determine mirrormap by this and show before guard bars
    /mirrormap mirrormaps barcode 0 get 48 sub get def
    txt 0 [barcode 0 1 getinterval textxoffset textyoffset textfont textsize] put

    % Left side - performs mirroring
    1 1 6 {
        % Lookup the encoding for the each barcode character
        /i exch def
        barcode i 1 getinterval barchars exch search
        pop                            % Discard true leaving pre
        length /indx exch def          % indx is the length of pre
        pop pop                        % Discard seek and post
        /enc encs indx get def         % Get the indxth encoding
        mirrormap i 1 sub get 49 eq {   % Reverse enc if 1 in this position in mirrormap
            /enclen enc length def
            /revenc enclen string def
            0 1 enclen 1 sub {
                /j exch def
                /char enc j get def
                revenc enclen j sub 1 sub char put
            } for
            /enc revenc def
        } if
        sbs i 1 sub 4 mul 3 add enc putinterval   % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 1 sub 7 mul 14 add textxoffset add textyoffset textfont textsize] put
    } for

    % Put the middle character
    sbs 7 1 sub 4 mul 3 add encs 11 get putinterval

    % Right side
    7 1 12 {
        % Lookup the encoding for the each barcode character
        /i exch def
        barcode i 1 getinterval barchars exch search
        pop                            % Discard true leaving pre
        length /indx exch def          % indx is the length of pre
        pop pop                        % Discard seek and post
        /enc encs indx get def         % Get the indxth encoding
        sbs i 1 sub 4 mul 8 add enc putinterval  % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 1 sub 7 mul 18 add textxoffset add textyoffset textfont textsize] put
    } for

    % Put the end character
    sbs 56 encs 12 get putinterval

    /sbs [sbs {48 sub} forall] def
    includetext {
        /bhs [height height 12{height .075 sub}repeat height height 12{height .075 sub}repeat height height] def
        /bbs [0 0 12{.075}repeat 0 0 12{.075}repeat 0 0] def
    } {
        /bhs [30{height}repeat] def
        /bbs [30{0}repeat] def
        /txt [] def
    } ifelse
    /guardrightypos 0 def

    % Append the addon
    addon () ne {
        /addopts <<
            /dontdraw true
            /includetext true
            /height height 0.15 sub
            /textxoffset addontextxoffset (unset) ne {addontextxoffset} {95 addongap add} ifelse
            addontextyoffset (unset) ne {/textyoffset addontextyoffset} if
            /textsize addontextsize (unset) ne {addontextsize} {textsize} ifelse
            /textfont addontextfont (unset) ne {addontextfont} {textfont} ifelse
        >> def
        addon length 2 eq {addon addopts //ean2 exec} if
        addon length 5 eq {addon addopts //ean5 exec} if
        /addcode exch def
        /sbs [sbs aload pop addongap addcode (sbs) get aload pop] def
        /bhs [bhs aload pop addcode (bhs) get {.075 sub} forall] def
        /bbs [bbs aload pop addcode (bbs) get {.075 add} forall] def
        /txt [txt aload pop addcode (txt) get aload pop] def
        /guardrightypos height 72 mul 6 sub def
    } if

    % Return the arguments
    <<
    /ren //renlinear
    /sbs sbs
    /bhs bhs
    /bbs bbs
    /txt txt
    /opt options
    /guardrightpos 10
    /guardrightypos guardrightypos
    /borderbottom 5
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ean13 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ean13--

% --BEGIN ENCODER ean8--
% --REQUIRES preamble raiseerror renlinear ean5 ean2--
% --DESC: EAN-8
% --EXAM: 02345673
% --EXOP: includetext guardwhitespace
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp ean8 0.0 2019110800 78158 74434
%%BeginData:        198 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean2 dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ean8 {

    20 dict begin

    /options exch def                  % We are given an option string
    /barcode exch def                  % We are given a barcode string

    /dontdraw false def
    /includetext false def              % Enable/disable text
    /textfont /Helvetica def
    /textsize 12 def
    /textxoffset 4 def
    /textyoffset -4.5 def
    /height 1 def
    /addongap 12 def
    /addontextfont (unset) def
    /addontextsize (unset) def
    /addontextxoffset (unset) def
    /addontextyoffset (unset) def

    % Parse the input options, either a string or a dict
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def
    /addongap addongap cvr def
    addontextfont (unset) ne {/addontextfont addontextfont cvlit def} if
    addontextsize (unset) ne {/addontextsize addontextsize cvr def} if
    addontextxoffset (unset) ne {/addontextxoffset addontextxoffset cvr def} if
    addontextyoffset (unset) ne {/addontextyoffset addontextyoffset cvr def} if

    % Split off the addon
    barcode ( ) search {
        /barcode exch def
        pop
        /addon exch def
    } {
        pop
        /addon () def
    } ifelse

    % Validate the input
    barcode length 7 ne barcode length 8 ne and {
        /bwipp.ean8badLength (EAN-8 must be 7 or 8 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.ean8badCharacter (EAN-8 must contain only digits) //raiseerror exec
        } if
    } forall
    addon length 0 ne addon length 2 ne and addon length 5 ne and {
        /bwipp.ean8badAddOnLength (Add-on for EAN-8 must be 2 or 5 digits) //raiseerror exec
    } if

    % Add checksum digit
    /pad 8 string def
    /checksum 0 def
    0 1 6 {
        /i exch def
        /barchar barcode i get 48 sub def
        i 2 mod 0 ne {
            /checksum barchar checksum add def
        } {
            /checksum barchar 3 mul checksum add def
        } ifelse
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 8 eq {
        barcode 7 get checksum 48 add ne {
            /bwipp.ean8badCheckDigit (Incorrect EAN-8 check digit provided) //raiseerror exec
        } if
    } if
    pad 0 barcode putinterval      % Add barcode to the start of the pad
    pad 7 checksum 48 add put      % Put ascii for checksum at end of pad
    /barcode pad def

    % Create an array containing the character mappings
    /encs
    [ (3211) (2221) (2122) (1411) (1132)
      (1231) (1114) (1312) (1213) (3112)
      (111) (11111) (111)
    ] def

    % Create a string of the available characters
    /barchars (0123456789) def

    /sbs 43 string def
    /txt 8 array def

    % Put the start character
    sbs 0 encs 10 get putinterval

    % Left side
    0 1 3 {
        % Lookup the encoding for the each barcode character
        /i exch def
        barcode i 1 getinterval barchars exch search
        pop                                % Discard true leaving pre
        length /indx exch def              % indx is the length of pre
        pop pop                            % Discard seek and post
        /enc encs indx get def             % Get the indxth encoding
        sbs i 4 mul 3 add enc putinterval  % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 7 mul textxoffset add textyoffset textfont textsize] put
    } for

    % Put the middle character
    sbs 4 4 mul 3 add encs 11 get putinterval

    % Right side
    4 1 7 {
        % Lookup the encoding for the each barcode character
        /i exch def
        barcode i 1 getinterval barchars exch search
        pop                                % Discard true leaving pre
        length /indx exch def              % indx is the length of pre
        pop pop                            % Discard seek and post
        /enc encs indx get def             % Get the indxth encoding
        sbs i 4 mul 8 add enc putinterval  % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 7 mul textxoffset add 4 add textyoffset textfont textsize] put
    } for

    % Put the end character
    sbs 40 encs 12 get putinterval

    /sbs [sbs {48 sub} forall] def
    includetext {
        /bhs [height height 8{height .075 sub}repeat height height 8{height .075 sub}repeat height height] def
        /bbs [0 0 8{.075}repeat 0 0 8{.075}repeat 0 0] def
    } {
        /bhs [22{height}repeat] def
        /bbs [22{0}repeat] def
        /txt [] def
    } ifelse
    /guardrightypos 0 def

    % Append the addon
    addon () ne {
        /addopts <<
            /dontdraw true
            /includetext true
            /height height 0.15 sub
            /textxoffset addontextxoffset (unset) ne {addontextxoffset} {67 addongap add} ifelse
            addontextyoffset (unset) ne {/textyoffset addontextyoffset} if
            /textsize addontextsize (unset) ne {addontextsize} {textsize} ifelse
            /textfont addontextfont (unset) ne {addontextfont} {textfont} ifelse
        >> def
        addon length 2 eq {addon addopts //ean2 exec} if
        addon length 5 eq {addon addopts //ean5 exec} if
        /addcode exch def
        /sbs [sbs aload pop addongap addcode (sbs) get aload pop] def
        /bhs [bhs aload pop addcode (bhs) get {.075 sub} forall] def
        /bbs [bbs aload pop addcode (bbs) get {.075 add} forall] def
        /txt [txt aload pop addcode (txt) get aload pop] def
        /guardrightypos height 72 mul 6 sub def
    } if

    % Return the arguments
    <<
    /ren //renlinear
    /sbs sbs
    /bhs bhs
    /bbs bbs
    /txt txt
    /opt options
    /guardleftpos 10
    /guardrightpos 10
    /guardrightypos guardrightypos
    /borderbottom 5
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ean8 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ean8--

% --BEGIN ENCODER upca--
% --REQUIRES preamble raiseerror renlinear ean5 ean2--
% --DESC: UPC-A
% --EXAM: 416000336108
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp upca 0.0 2019110800 86001 81982
%%BeginData:        250 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean2 dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/upca {

    20 dict begin

    /options exch def
    /barcode exch def             % We are given a barcode string

    /dontdraw false def
    /includetext false def         % Enable/disable text
    /textfont /Helvetica def
    /textsize 12 def
    /textxoffset -7 def
    /textyoffset -4.5 def
    /height 1 def
    /addongap 12 def
    /addontextfont (unset) def
    /addontextsize (unset) def
    /addontextxoffset (unset) def
    /addontextyoffset (unset) def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def
    /addongap addongap cvr def
    addontextfont (unset) ne {/addontextfont addontextfont cvlit def} if
    addontextsize (unset) ne {/addontextsize addontextsize cvr def} if
    addontextxoffset (unset) ne {/addontextxoffset addontextxoffset cvr def} if
    addontextyoffset (unset) ne {/addontextyoffset addontextyoffset cvr def} if

    % Split off the addon
    barcode ( ) search {
        /barcode exch def
        pop
        /addon exch def
    } {
        pop
        /addon () def
    } ifelse

    % Expand a given UPC-E
    barcode length 7 eq barcode length 8 eq or {
        % Validate the input
        barcode {
            dup 48 lt exch 57 gt or {
                /bwipp.upcAupcEbadCharacter (UPC-E must contain only digits) //raiseerror exec
            } if
        } forall
        barcode 0 get dup 48 ne exch 49 ne and {
            /bwipp.upcAupcEbadNumberSystem (UPC-E must have number system 0 or 1) //raiseerror exec
        } if
        1 {  % Common exit
            /upcacode barcode length 8 eq {12} {11} ifelse string def
            barcode 6 get 48 sub 2 le {
                upcacode 0 barcode 0 3 getinterval putinterval
                upcacode 3 barcode 6 1 getinterval putinterval
                upcacode 4 (0000) putinterval
                upcacode 8 barcode 3 3 getinterval putinterval
                exit
            } if
            barcode 6 get 48 sub 3 eq {
                upcacode 0 barcode 0 4 getinterval putinterval
                upcacode 4 (00000) putinterval
                upcacode 9 barcode 4 2 getinterval putinterval
                exit
            } if
            barcode 6 get 48 sub 4 eq {
                upcacode 0 barcode 0 5 getinterval putinterval
                upcacode 5 (00000) putinterval
                upcacode 10 barcode 5 1 getinterval putinterval
                exit
            } if
            barcode 6 get 48 sub 5 ge {
                upcacode 0 barcode 0 6 getinterval putinterval
                upcacode 6 (0000) putinterval
                upcacode 10 barcode 6 1 getinterval putinterval
                exit
            } if
        } repeat
        barcode length 8 eq {
            upcacode 11 barcode 7 1 getinterval putinterval
        } if
        /barcode upcacode def
    } if

    % Validate the input
    barcode length 11 ne barcode length 12 ne and {
        /bwipp.upcAbadLength (UPC-A must be 11 or 12 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.upcAbadCharacter (UPC-A must contain only digits) //raiseerror exec
        } if
    } forall
    addon length 0 ne addon length 2 ne and addon length 5 ne and {
        /bwipp.upcAbadAddOnLength (Add-on for UPC-A must be 2 or 5 digits) //raiseerror exec
    } if

    % Add checksum digit to barcode
    /pad 12 string def   % Create pad one bigger than barcode
    /checksum 0 def
    0 1 10 {
        /i exch def
        /barchar barcode i get 48 sub def
        i 2 mod 0 ne {
            /checksum checksum barchar add def
        } {
            /checksum checksum barchar 3 mul add def
        } ifelse
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 12 eq {
        barcode 11 get checksum 48 add ne {
            /bwipp.upcAbadCheckDigit (Incorrect UPC check digit provided) //raiseerror exec
        } if
    } if
    pad 0 barcode putinterval       % Add barcode to the start of the pad
    pad 11 checksum 48 add put      % Put ascii for checksum at end of pad
    /barcode pad def

    % Create an array containing the character mappings
    /encs
    [ (3211) (2221) (2122) (1411) (1132)
      (1231) (1114) (1312) (1213) (3112)
      (111) (11111) (111)
    ] def

    % Create a string of the available characters
    /barchars (0123456789) def

    /sbs 59 string def
    /txt 12 array def

    % Put the start character
    sbs 0 encs 10 get putinterval

    % Left side
    0 1 5 {
        % Lookup the encoding for the each barcode character
        /i exch def
        barcode i 1 getinterval barchars exch search
        pop                                % Discard true leaving pre
        length /indx exch def              % indx is the length of pre
        pop pop                            % Discard seek and post
        /enc encs indx get def             % Get the indxth encoding
        sbs i 4 mul 3 add enc putinterval  % Put encoded digit into sbs
        i 0 eq {      % First digit is before the guard bars
            txt 0 [barcode 0 1 getinterval textxoffset textyoffset textfont textsize 2 sub] put
        } {
            txt i [barcode i 1 getinterval i 7 mul 11 add textxoffset add textyoffset textfont textsize] put
        } ifelse
    } for

    % Put the middle character
    sbs 6 4 mul 3 add encs 11 get putinterval

    % Right side
    6 1 11 {
        % Lookup the encoding for the each barcode character
        /i exch def
        barcode i 1 getinterval barchars exch search
        pop                                % Discard true leaving pre
        length /indx exch def              % indx is the length of pre
        pop pop                            % Discard seek and post
        /enc encs indx get def             % Get the indxth encoding
        sbs i 4 mul 8 add enc putinterval  % Put encoded digit into sbs
        i 11 eq {       % Last digit is after guard bars
            txt 11 [barcode 11 1 getinterval textxoffset 104 add textyoffset textfont textsize 2 sub] put
        } {
            txt i [barcode i 1 getinterval i 7 mul textxoffset add 15 add textyoffset textfont textsize] put
        } ifelse
    } for

    % Put the end character
    sbs 56 encs 12 get putinterval

    /sbs [sbs {48 sub} forall] def
    includetext {
        /bhs [4{height}repeat 10{height .075 sub}repeat height height 10{height .075 sub}repeat 4{height}repeat] def
        /bbs [0 0 0 0 10{.075}repeat 0 0 10{.075}repeat 0 0 0 0] def
    } {
        /bhs [30{height}repeat] def
        /bbs [30{0}repeat] def
        /txt [] def
    } ifelse
    /guardrightypos 0 def

    % Append the addon
    addon () ne {
        /addopts <<
            /dontdraw true
            /includetext true
            /height height 0.15 sub
            /textxoffset addontextxoffset (unset) ne {addontextxoffset} {95 addongap add} ifelse
            addontextyoffset (unset) ne {/textyoffset addontextyoffset} if
            /textsize addontextsize (unset) ne {addontextsize} {textsize} ifelse
            /textfont addontextfont (unset) ne {addontextfont} {textfont} ifelse
        >> def
        addon length 2 eq {addon addopts //ean2 exec} if
        addon length 5 eq {addon addopts //ean5 exec} if
        /addcode exch def
        /sbs [sbs aload pop addongap addcode (sbs) get aload pop] def
        /bhs [bhs aload pop addcode (bhs) get {.075 sub} forall] def
        /bbs [bbs aload pop addcode (bbs) get {.075 add} forall] def
        /txt [txt aload pop addcode (txt) get aload pop] def
        /guardrightypos height 72 mul 6 sub def
    } if

    % Return the arguments
    <<
    /ren //renlinear
    /sbs sbs
    /bhs bhs
    /bbs bbs
    /txt txt
    /opt options
    /guardrightpos 10
    /guardrightypos guardrightypos
    /borderbottom 5
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /upca dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER upca--

% --BEGIN ENCODER upce--
% --REQUIRES preamble raiseerror renlinear ean5 ean2--
% --DESC: UPC-E
% --EXAM: 00123457
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp upce 0.0 2019110800 90606 86734
%%BeginData:        289 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean2 dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/upce {

    20 dict begin

    /options exch def                   % We are given an option string
    /barcode exch def                   % We are given a barcode string

    /dontdraw false def
    /includetext false def               % Enable/disable text
    /textfont /Helvetica def
    /textsize 12 def
    /textxoffset -7 def
    /textyoffset -4.5 def
    /height 1 def
    /addongap 12 def
    /addontextfont (unset) def
    /addontextsize (unset) def
    /addontextxoffset (unset) def
    /addontextyoffset (unset) def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def
    /addongap addongap cvr def
    addontextfont (unset) ne {/addontextfont addontextfont cvlit def} if
    addontextsize (unset) ne {/addontextsize addontextsize cvr def} if
    addontextxoffset (unset) ne {/addontextxoffset addontextxoffset cvr def} if
    addontextyoffset (unset) ne {/addontextyoffset addontextyoffset cvr def} if

    % Split off the addon
    barcode ( ) search {
        /barcode exch def
        pop
        /addon exch def
    } {
        pop
        /addon () def
    } ifelse

    % Compress a given UPC-A
    barcode length 11 eq barcode length 12 eq or {
        % Validate the input
        barcode {
            dup 48 lt exch 57 gt or {
                /bwipp.upcEupcAbadCharacter (UPC-A must contain only digits) //raiseerror exec
            } if
        } forall
        1 {  % Common exit
            /upcecode barcode length 12 eq {8} {7} ifelse string def
            barcode 3 get 48 sub 2 le barcode 4 4 getinterval (0000) eq and {
                upcecode 0 barcode  0 3 getinterval putinterval
                upcecode 3 barcode  8 3 getinterval putinterval
                upcecode 6 barcode  3 1 getinterval putinterval
                exit
            } if
            barcode 4 5 getinterval (00000) eq {
                upcecode 0 barcode  0 4 getinterval putinterval
                upcecode 4 barcode  9 2 getinterval putinterval
                upcecode 6 (3) putinterval
                exit
            } if
            barcode 5 5 getinterval (00000) eq {
                upcecode 0 barcode  0 5 getinterval putinterval
                upcecode 5 barcode 10 1 getinterval putinterval
                upcecode 6 (4) putinterval
                exit
            } if
            barcode 10 get 48 sub 5 ge barcode 6 4 getinterval (0000) eq and {
                upcecode 0 barcode  0 6 getinterval putinterval
                upcecode 6 barcode 10 1 getinterval putinterval
                exit
            } if
            /bwipp.upcEupcAnotCompressible (UPC-A cannot be converted to a UPC-E) //raiseerror exec
        } repeat
        barcode length 12 eq {
            upcecode 7 barcode 11 1 getinterval putinterval
        } if
        /barcode upcecode def
    } if

    % Validate the input
    barcode length 7 ne barcode length 8 ne and {
        /bwipp.upcEbadLength (UPC-E must be 7 or 8 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.upcEbadCharacter (UPC-E must contain only digits) //raiseerror exec
        } if
    } forall
    addon length 0 ne addon length 2 ne and addon length 5 ne and {
        /bwipp.upcEbadAddOnLength (Add-on for UPC-E must be 2 or 5 digits) //raiseerror exec
    } if

    % Ensure 0 or 1 number systems
    barcode 0 get dup 48 ne exch 49 ne and {
        /bwipp.upcEbadNumberSystem (UPC-E must have number system 0 or 1) //raiseerror exec
    } if

    % Create an array containing the character mappings
    /encs
    [ (3211) (2221) (2122) (1411) (1132)
      (1231) (1114) (1312) (1213) (3112)
      (111) (111111)
    ] def

    % Create a string of the available characters
    /barchars (0123456789) def

    /mirrormaps
    [ (000111) (001011) (001101) (001110) (010011)
      (011001) (011100) (010101) (010110) (011010)
    ] def

    % Derive the equivalent UPC-A for its checksum
    1 {  % Common exit
        /upcacode 11 string def
        barcode 6 get 48 sub 2 le {
            upcacode 0 barcode 0 3 getinterval putinterval
            upcacode 3 barcode 6 1 getinterval putinterval
            upcacode 4 (0000) putinterval
            upcacode 8 barcode 3 3 getinterval putinterval
            exit
        } if
        barcode 6 get 48 sub 3 eq {
            upcacode 0 barcode 0 4 getinterval putinterval
            upcacode 4 (00000) putinterval
            upcacode 9 barcode 4 2 getinterval putinterval
            exit
        } if
        barcode 6 get 48 sub 4 eq {
            upcacode 0 barcode 0 5 getinterval putinterval
            upcacode 5 (00000) putinterval
            upcacode 10 barcode 5 1 getinterval putinterval
            exit
        } if
        barcode 6 get 48 sub 5 ge {
            upcacode 0 barcode 0 6 getinterval putinterval
            upcacode 6 (0000) putinterval
            upcacode 10 barcode 6 1 getinterval putinterval
            exit
        } if
    } repeat
    /checksum 0 def
    0 1 10 {
       /i exch def
       /barchar upcacode i get 48 sub def
       i 2 mod 0 ne {
           /checksum checksum barchar add def
       } {
           /checksum checksum barchar 3 mul add def
       } ifelse
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 8 eq {
        barcode 7 get checksum 48 add ne {
            /bwipp.upcEbadCheckDigit (Incorrect UPC check digit provided) //raiseerror exec
        } if
    } if
    /pad 8 string def
    pad 0 barcode putinterval       % Add barcode to the start of the pad
    pad 7 checksum 48 add put       % Put ascii for checksum at end of pad
    /barcode pad def
    /txt 8 array def
    txt 0 [barcode 0 1 getinterval textxoffset textyoffset textfont textsize 2 sub] put

    % Determine the mirror map based on checksum
    /mirrormap mirrormaps checksum get def

    % Invert the mirrormap if we are using a non-zero number system
    barcode 0 get 48 eq {
        /invt mirrormap length string def
        0 1 mirrormap length 1 sub {
            /i exch def
            mirrormap i get 48 eq {
                invt i 49 put
            } {
                invt i 48 put
            } ifelse
        } for
        /mirrormap invt def
    } if

    /sbs 33 string def

    % Put the start character
    sbs 0 encs 10 get putinterval

    1 1 6 {
        /i exch def
        % Lookup the encoding for the each barcode character
        barcode i 1 getinterval barchars exch search
        pop                            % Discard true leaving pre
        length /indx exch def          % indx is the length of pre
        pop pop                        % Discard seek and post
        /enc encs indx get def         % Get the indxth encoding
        mirrormap i 1 sub get 49 eq {  % Reverse enc if 1 in this position in mirrormap
            /enclen enc length def
            /revenc enclen string def
            0 1 enclen 1 sub {
                /j exch def
                /char enc j get def
                revenc enclen j sub 1 sub char put
            } for
            /enc revenc def
        } if
        sbs i 1 sub 4 mul 3 add enc putinterval   % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 1 sub 7 mul 11 add textxoffset add textyoffset textfont textsize] put
    } for

    txt 7 [barcode 7 1 getinterval 6 7 mul 18 add textxoffset add textyoffset textfont textsize 2 sub] put

    % Put the end character
    sbs 27 encs 11 get putinterval

    /sbs [sbs {48 sub} forall] def
    includetext {
        /bhs [height height 12{height .075 sub}repeat height height height] def
        /bbs [0 0 12{.075}repeat 0 0 0] def
    } {
        /bhs [17{height}repeat] def
        /bbs [17{0}repeat] def
        /txt [] def
    } ifelse
    /guardrightypos 0 def

    % Append the addon
    addon () ne {
        /addopts <<
            /dontdraw true
            /includetext true
            /height height 0.15 sub
            /textxoffset addontextxoffset (unset) ne {addontextxoffset} {51 addongap add} ifelse
            addontextyoffset (unset) ne {/textyoffset addontextyoffset} if
            /textsize addontextsize (unset) ne {addontextsize} {textsize} ifelse
            /textfont addontextfont (unset) ne {addontextfont} {textfont} ifelse
        >> def
        addon length 2 eq {addon addopts //ean2 exec} if
        addon length 5 eq {addon addopts //ean5 exec} if
        /addcode exch def
        /sbs [sbs aload pop addongap addcode (sbs) get aload pop] def
        /bhs [bhs aload pop addcode (bhs) get {.075 sub} forall] def
        /bbs [bbs aload pop addcode (bbs) get {.075 add} forall] def
        /txt [txt aload pop addcode (txt) get aload pop] def
        /guardrightypos height 72 mul 6 sub def
    } if

    % Return the arguments
    <<
    /ren //renlinear
    /sbs sbs
    /bhs bhs
    /bbs bbs
    /txt txt
    /opt options
    /guardrightpos 10
    /guardrightypos guardrightypos
    /borderbottom 5
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /upce dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER upce--

% --BEGIN ENCODER isbn--
% --REQUIRES preamble raiseerror renlinear ean5 ean2 ean13--
% --DESC: ISBN
% --EXAM: 978-1-56581-231-4 90000
% --EXOP: includetext guardwhitespace
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp isbn 0.0 2019110800 85918 88625
%%BeginData:        254 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean13 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/isbn {

    20 dict begin

    /options exch def      % We are given an options string
    /barcode exch def      % We are given the isbn text with dashes

    /dontdraw false def
    /includetext false def  % Enable/disable ISBN text
    /isbntextfont /OCR-A def
    /isbntextsize 8 def
    /isbntextxoffset (unset) def
    /isbntextyoffset (unset) def
    /height 1 def
    /addongap 12 def
    /legacy false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /isbntextfont isbntextfont cvlit def
    /isbntextsize isbntextsize cvr def
    isbntextxoffset (unset) ne {/isbntextxoffset isbntextxoffset cvr def} if
    isbntextyoffset (unset) ne {/isbntextyoffset isbntextyoffset cvr def} if
    /height height cvr def
    /addongap addongap cvr def

    % Split off the addon
    barcode ( ) search {
        /barcode exch def
        pop
        /addon exch def
    } {
        pop
        /addon () def
    } ifelse

    % Validate the input
    barcode length 15 ne barcode length 17 ne and
    barcode length 11 ne barcode length 13 ne and and {
        /bwipp.isbnBadLength (ISBN-13 must be 15 or 17 characters including dashes. ISBN-10 must be 11 or 13 characters including dashes) //raiseerror exec
    } if
    addon length 0 ne addon length 2 ne and addon length 5 ne and {
        /bwipp.isbnBadAddOnLength (Add-on for ISBN must be 2 or 5 digits) //raiseerror exec
    } if
    barcode length 15 ge {  % ISBN-13
        barcode 0 4 getinterval dup (978-) ne exch (979-) ne and {
            /bwipp.isbn13badPrefix (ISBN-13 prefix must be 978- or 979-) //raiseerror exec
        } if
        /wasdash false def /numdash 0 def /numdigit 0 def
        barcode 5 9 getinterval {
            dup
            45 eq {
                wasdash {
                    /bwipp.isbn13adjacentDashes (ISBN-13 does not permit adjacent dashes) //raiseerror exec
                } if
                /wasdash true def
                /numdash numdash 1 add def
            } if
            dup 48 ge exch 57 le and {
                /wasdash false def
                /numdigit numdigit 1 add def
            } if
        } forall
        numdash 2 ne numdigit 7 ne or {
            /bwipp.isbn13numDashesDigits (Incorrect number of dashes and digits for ISBN-13) //raiseerror exec
        } if
        barcode 14 get dup 48 lt exch 57 gt or {
            /bwipp.isbn13character15 (ISBN-13 character 15 must be a digit) //raiseerror exec
        } if
        barcode length 17 eq {
            barcode 15 1 getinterval (-) ne {
                /bwipp.isbn13character16 (ISBN-13 penultimate character must be a dash) //raiseerror exec
            } if
            barcode 16 get dup 48 lt exch 57 gt or {
                /bwipp.isbn13character17 (ISBN-13 final character must be a digit) //raiseerror exec
            } if
        } if
    } {  % ISBN-10
        barcode 0 get dup 48 lt exch 57 gt or {
            /bwipp.isbn10FirstDigit (ISBN-10 first character must be a digit) //raiseerror exec
        } if
        /wasdash false def /numdash 0 def /numdigit 0 def
        barcode 1 9 getinterval {
            dup
            45 eq {
                wasdash {
                    /bwipp.isbn10adjacentDashes (ISBN-10 does not permit adjacent dashes) //raiseerror exec
                } if
                /wasdash true def
                /numdash numdash 1 add def
            } if
            dup 48 ge exch 57 le and {
                /wasdash false def
                /numdigit numdigit 1 add def
            } if
        } forall
        numdash 2 ne numdigit 7 ne or {
            /bwipp.isbn10numDashesDigits (Incorrect number of dashes and digits for ISBN-10) //raiseerror exec
        } if
        barcode 10 get dup 48 lt exch 57 gt or {
            /bwipp.isbn10character11 (ISBN-10 character 11 must be a digit) //raiseerror exec
        } if
        barcode length 13 eq {
            barcode 11 1 getinterval (-) ne {
                /bwipp.isbn10character12 (ISBN-10 penultimate character must be a dash) //raiseerror exec
            } if
            barcode 12 get dup dup 48 lt exch 57 gt or exch 88 ne and {
                /bwipp.isbn10character13 (ISBN-10 final character must be a digit or X) //raiseerror exec
            } if
        } if
    } ifelse

    /isbntxt barcode def

    % Read the digits from isbntxt and validate checksum for ISBN-10
    isbntxt length 13 le {
        /isbn 10 string def
        /checksum 0 def
        /i 0 def /n 0 def
        { % loop
            /isbnchar isbntxt i get 48 sub def
            isbnchar -3 ne {     % Ignore dashes
                isbn n isbnchar 48 add put
                n 9 lt {
                    /checksum checksum 10 n sub isbnchar mul add def
                } if
                /n n 1 add def
            } if
            /i i 1 add def
            i isbntxt length eq {exit} if
        } loop
        /checksum 11 checksum 11 mod sub 11 mod dup 10 eq {pop 40} if 48 add def
        /isbn isbn 0 9 getinterval def
        isbntxt length 13 eq {
            isbntxt 12 get checksum ne {
                /bwipp.isbn10badCheckDigit (Incorrect ISBN-10 check digit provided) //raiseerror exec
            } if
        } if
    } if

    legacy not isbntxt length 15 ge or {

        % Convert ISBN-10 to ISBN-13
        isbntxt length 13 le {
            /pad 15 string def
            pad 0 (978-) putinterval
            pad 4 isbntxt 0 11 getinterval putinterval
            /isbntxt pad def
        } if

        % Read the digits from isbntxt and validate checksum for ISBN-13
        /isbn 13 string def
        /checksum 0 def
        /i 0 def /n 0 def
        { % loop
            /isbnchar isbntxt i get 48 sub def
            isbnchar -3 ne {     % Ignore dashes
                isbn n isbnchar 48 add put
                n 12 lt {
                    /checksum isbnchar n 2 mod 0 ne {3 mul} if checksum add def
                } if
                /n n 1 add def
            } if
            /i i 1 add def
            i isbntxt length eq {exit} if
        } loop
        /checksum 10 checksum 10 mod sub 10 mod 48 add def
        /isbn isbn 0 12 getinterval def
        isbntxt length 17 eq {
            isbntxt 16 get checksum ne {
                /bwipp.isbn13badCheckDigit (Incorrect ISBN-13 check digit provided) //raiseerror exec
            } if
        } if

    } if

    % Add the ISBN header to the isbntxt
    /pad isbn length 12 eq {22} {18} ifelse string def
    pad 0 (ISBN ) putinterval
    pad 5 isbntxt putinterval
    pad pad length 2 sub 45 put
    pad pad length 1 sub checksum put
    /isbntxt pad def

    % Convert ISBN digits to EAN-13
    /barcode 12 string def
    isbn length 9 eq {
        barcode 0 (978) putinterval
        barcode 3 isbn putinterval
    } {
        barcode 0 isbn putinterval
    } ifelse

    % Append the addon
    addon () ne {
        12 addon length add 1 add string
        dup 0 barcode putinterval
        dup 12 ( ) putinterval
        dup 13 addon putinterval
        /barcode exch def
    } if

    % Get the result of encoding with ean13
    options (dontdraw) true put
    options (addongap) addongap put
    /args barcode options //ean13 exec def

    % Add the ISBN text
    includetext {
        isbntextxoffset (unset) eq {
            /isbntextxoffset isbn length 9 eq {-1} {-12} ifelse def
        } if
        isbntextyoffset (unset) eq {
            /isbntextyoffset height 72 mul 3 add def
        } if
        args (txt) known {
            /txt args (txt) get def
            /newtxt txt length 1 add array def
            newtxt 0 txt putinterval
            newtxt newtxt length 1 sub [isbntxt isbntextxoffset isbntextyoffset isbntextfont isbntextsize] put
            args (txt) newtxt put
        } {
            args (txt) [ [isbntxt isbntextxoffset isbntextyoffset isbntextfont isbntextsize] ] put
        } ifelse
    } if

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /isbn dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER isbn--

% --BEGIN ENCODER ismn--
% --REQUIRES preamble raiseerror renlinear ean5 ean2 ean13--
% --DESC: ISMN
% --EXAM: 979-0-2605-3211-3
% --EXOP: includetext guardwhitespace
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp ismn 0.0 2019110800 82490 85418
%%BeginData:        233 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean13 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ismn {

    20 dict begin

    /options exch def      % We are given an options string
    /barcode exch def      % We are given the ismn text with dashes

    /dontdraw false def
    /includetext false def  % Enable/disable ISMN text
    /ismntextfont /OCR-A def
    /ismntextsize 8 def
    /ismntextxoffset (unset) def
    /ismntextyoffset (unset) def
    /height 1 def
    /addongap 12 def
    /legacy false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /ismntextfont ismntextfont cvlit def
    /ismntextsize ismntextsize cvr def
    ismntextxoffset (unset) ne {/ismntextxoffset ismntextxoffset cvr def} if
    ismntextyoffset (unset) ne {/ismntextyoffset ismntextyoffset cvr def} if
    /height height cvr def
    /addongap addongap cvr def

    % Split off the addon
    barcode ( ) search {
        /barcode exch def
        pop
        /addon exch def
    } {
        pop
        /addon () def
    } ifelse

    % Validate the input
    barcode length 15 ne barcode length 17 ne and
    barcode length 11 ne barcode length 13 ne and and {
        /bwipp.ismnBadLength (ISMN-13 must be 15 or 17 characters including dashes. ISMN-10 must be 11 or 13 characters including dashes) //raiseerror exec
    } if
    addon length 0 ne addon length 2 ne and addon length 5 ne and {
        /bwipp.ismnBadAddOnLength (Add-on for ISMN must be 2 or 5 digits) //raiseerror exec
    } if
    barcode length 15 ge {  % ISMN-13
        barcode 0 4 getinterval (979-) ne {
            /bwipp.ismn13badPrefix (ISMN-13 prefix must be 979-) //raiseerror exec
        } if
        /wasdash false def /numdash 0 def /numdigit 0 def
        barcode 5 9 getinterval {
            dup
            45 eq {
                wasdash {
                    /bwipp.ismn13adjacentDashes (ISMN-13 does not permit adjacent dashes) //raiseerror exec
                } if
                /wasdash true def
                /numdash numdash 1 add def
            } if
            dup 48 ge exch 57 le and {
                /wasdash false def
                /numdigit numdigit 1 add def
            } if
        } forall
        numdash 2 ne numdigit 7 ne or {
            /bwipp.ismn13numDashesDigits (Incorrect number of dashes and digits for ISMN-13) //raiseerror exec
        } if
        barcode 14 get dup 48 lt exch 57 gt or {
            /bwipp.ismn13character15 (ISMN-13 character 15 must be a digit) //raiseerror exec
        } if
        barcode length 17 eq {
            barcode 15 1 getinterval (-) ne {
                /bwipp.ismn13character16 (ISMN-13 penultimate character must be a dash) //raiseerror exec
            } if
            barcode 16 get dup 48 lt exch 57 gt or {
                /bwipp.ismn13character17 (ISMN-13 final character must be a digit) //raiseerror exec
            } if
        } if
    } {  % ISMN-10
        barcode 0 2 getinterval (M-) ne {
            /bwipp.ismn10badPrefix (ISMN-10 prefix must be M-) //raiseerror exec
        } if
        barcode 2 get dup 48 lt exch 57 gt or {
            /bwipp.ismn10character3 (ISMN-10 character 3 must be a digit) //raiseerror exec
        } if
        /wasdash false def /numdash 0 def /numdigit 0 def
        barcode 3 7 getinterval {
            dup
            45 eq {
                wasdash {
                    /bwipp.ismn10adjacentDashes (ISMN-10 does not permit adjacent dashes) //raiseerror exec
                } if
                /wasdash true def
                /numdash numdash 1 add def
            } if
            dup 48 ge exch 57 le and {
                /wasdash false def
                /numdigit numdigit 1 add def
            } if
        } forall
        numdash 1 ne numdigit 6 ne or {
            /bwipp.ismn10numDashesDigits (Incorrect number of dashes and digits for ISMN-10) //raiseerror exec
        } if
        barcode 10 get dup 48 lt exch 57 gt or {
            /bwipp.ismn10character11 (ISMN-10 character 11 must be a digit) //raiseerror exec
        } if
        barcode length 13 eq {
            barcode 11 1 getinterval (-) ne {
                /bwipp.ismn10character12 (ISMN-10 penultimate character must be a dash) //raiseerror exec
            } if
            barcode 12 get dup dup 48 lt exch 57 gt or exch 88 ne and {
                /bwipp.ismn10character13 (ISMN-10 final character must be a digit or X) //raiseerror exec
            } if
        } if
    } ifelse

    /ismntxt barcode def

    % Convert old ISMN to ISMN-13
    /legacytxt () def
    ismntxt length 13 le {
        /legacytxt ismntxt def
        /pad ismntxt length 4 add string def
        pad 0 (979-0-) putinterval
        pad 6 ismntxt 2 ismntxt length 2 sub getinterval putinterval
        /ismntxt pad def
    } if

    % Read the digits from ismntxt and calculate checksums
    /ismn 13 string def
    /checksum 0 def
    /i 0 def /n 0 def
    { % loop
        /ismnchar ismntxt i get 48 sub def
        ismnchar -3 ne {           % Ignore dashes
            ismn n ismnchar 48 add put
            n 12 lt {
                n 2 mod 0 eq {
                    /checksum ismnchar checksum add def
                } {
                    /checksum ismnchar 3 mul checksum add def
                } ifelse
            } if
            /n n 1 add def
        } if
        /i i 1 add def
        i ismntxt length eq {exit} if
    } loop
    /checksum 10 checksum 10 mod sub 10 mod 48 add def

    % Validate the checksum
    barcode length 13 eq barcode length 17 eq or {
        barcode dup length 1 sub get checksum ne {
            /bwipp.ismnBadCheckDigit (Incorrect ISMN check digit provided) //raiseerror exec
        } if
    } if

    % Add the ISMN header and checksum to the ismntxt
    legacy legacytxt () ne and {
        /ismntxt legacytxt def
        /pad 18 string def
    } {
        /pad 22 string def
    } ifelse
    pad 0 (ISMN ) putinterval
    pad 5 ismntxt putinterval
    pad pad length 2 sub 45 put
    pad pad length 1 sub checksum put
    /ismntxt pad def

    % Convert ISMN digits to EAN-13
    /barcode ismn 0 12 getinterval def

    % Append the addon
    addon () ne {
        12 addon length add 1 add string
        dup 0 barcode putinterval
        dup 12 ( ) putinterval
        dup 13 addon putinterval
        /barcode exch def
    } if

    % Get the result of encoding with ean13
    options (dontdraw) true put
    options (addongap) addongap put
    /args barcode options //ean13 exec def

    % Add the ISMN text
    includetext {
        ismntextxoffset (unset) eq {
            /ismntextxoffset ismntxt length 18 eq {-1} {-12} ifelse def
        } if
        ismntextyoffset (unset) eq {
            /ismntextyoffset height 72 mul 3 add def
        } if
        args (txt) known {
            /txt args (txt) get def
            /newtxt txt length 1 add array def
            newtxt 0 txt putinterval
            newtxt newtxt length 1 sub [ismntxt ismntextxoffset ismntextyoffset ismntextfont ismntextsize] put
            args (txt) newtxt put
        } {
            args (txt) [ [ismntxt ismntextxoffset ismntextyoffset ismntextfont ismntextsize] ] put
        } ifelse
    } if

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ismn dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ismn--

% --BEGIN ENCODER issn--
% --REQUIRES preamble raiseerror renlinear ean2 ean5 ean13--
% --DESC: ISSN
% --EXAM: 0311-175X 00 17
% --EXOP: includetext guardwhitespace
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp issn 0.0 2019110800 74026 77078
%%BeginData:        178 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean13 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/issn {

    20 dict begin

    /options exch def      % We are given an options string
    /issntxt exch def      % We are given the issn text with dashes

    /dontdraw false def
    /includetext false def  % Enable/disable ISSN text
    /issntextfont /OCR-A def
    /issntextsize 8 def
    /issntextxoffset (unset) def
    /issntextyoffset (unset) def
    /height 1 def
    /addongap 12 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /issntextfont issntextfont cvlit def
    /issntextsize issntextsize cvr def
    issntextxoffset (unset) ne {/issntextxoffset issntextxoffset cvr def} if
    issntextyoffset (unset) ne {/issntextyoffset issntextyoffset cvr def} if
    /height height cvr def
    /addongap addongap cvr def

    % Split off the ISSN
    issntxt ( ) search {
        /issntxt exch def
        pop
        /seqvar exch def
    } {
        pop
        /seqvar (00) def
    } ifelse

    % Split off the sequence variant and addon
    seqvar ( ) search {
        /seqvar exch def
        pop
        /addon exch def
    } {
        pop
        /addon () def
    } ifelse

    % Validate the input
    issntxt length 8 ne issntxt length 9 ne and {
        /bwipp.issnBadLength (ISSN must be 8 or 9 characters including dash, in the format XXXX-XXXX) //raiseerror exec
    } if
    issntxt 0 4 getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.issnFirstThroughFourthNotNumeric (ISSN first four characters must be numeral characters) //raiseerror exec
        } if
    } forall
    issntxt 4 1 getinterval (-) ne {
        /bwipp.issnNeedsDash (ISSN fifth character must be a dash) //raiseerror exec
    } if
    issntxt 5 3 getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.issnSixthThroughEighthNotNumeric (ISSN sixth through eighth characters must be numerals) //raiseerror exec
        } if
    } forall
    issntxt length 9 eq {
        issntxt 8 get dup dup 48 lt exch 57 gt or exch 88 ne and {  % Digits or X
            /bwipp.issnNinthCharacterBadFormat (ISSN ninth character must be a number or the character X) //raiseerror exec
        } if
    } if
    seqvar length 2 ne {
        /bwipp.issnBadSequenceVariantLength (Sequence variant for ISSN must be 2 digits) //raiseerror exec
    } if
    seqvar {
        dup 48 lt exch 57 gt or {
           /bwipp.issnSequenceVariantBadCharacter (Sequence variant for ISSN must contain only digits) //raiseerror exec
        } if
    } forall
    addon length 0 ne addon length 2 ne and addon length 5 ne and {
        /bwipp.issnBadAddOnLength (Add-on for ISSN must be 2 or 5 digits) //raiseerror exec
    } if

    % Read the digits from issntxt and calculate checksums
    /issn 8 string def
    /checksum 0 def
    /i 0 def /n 0 def
    { % loop
        /issnchar issntxt i get 48 sub def
        issnchar -3 ne {           % Ignore dashes
            issn n issnchar 48 add put
            n 7 lt {
                /checksum checksum issnchar 8 n sub mul add def
            } if
            /n n 1 add def
        } if
        /i i 1 add def
        i issntxt length eq {exit} if
    } loop
    /checksum 11 checksum 11 mod sub 11 mod def
    /checksum checksum 48 add dup 58 eq {pop 88} if def
    issntxt length 9 eq {
        issntxt 8 get checksum ne {
            /bwipp.issnBadCheckDigit (Incorrect ISSN check digit provided) //raiseerror exec
        } if
    } if

    % Add the ISSN header and checksum to the issntxt
    /pad 14 string def
    pad 0 (ISSN ) putinterval
    pad 5 issntxt putinterval  % Add issntxt to the pad
    pad 13 checksum put
    /issntxt pad def

    % Convert ISSN digits to EAN-13
    /barcode issn 0 7 getinterval def

    % Append the sequence variant
    /barcode 12 string def
    barcode 0 (977) putinterval
    barcode 3 issn putinterval
    barcode 10 seqvar putinterval

    % Append the addon
    addon () ne {
        12 addon length add 1 add string
        dup 0 barcode putinterval
        dup 12 ( ) putinterval
        dup 13 addon putinterval
        /barcode exch def
    } if

    % Get the result of encoding with ean13
    options (dontdraw) true put
    options (addongap) addongap put
    /args barcode options //ean13 exec def

    % Add the ISSN text
    includetext {
        issntextxoffset (unset) eq {/issntextxoffset 10 def} if
        issntextyoffset (unset) eq {
            /issntextyoffset height 72 mul 3 add def
        } if
        args (txt) known {
            /txt args (txt) get def
            /newtxt txt length 1 add array def
            newtxt 0 txt putinterval
            newtxt newtxt length 1 sub [issntxt issntextxoffset issntextyoffset issntextfont issntextsize] put
            args (txt) newtxt put
        } {
            args (txt) [ [issntxt issntextxoffset issntextyoffset issntextfont issntextsize] ] put
        } ifelse
    } if

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /issn dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER issn--

% --BEGIN ENCODER code128--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Code 128
% --EXAM: Count01234567!
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp code128 0.0 2019110800 122003 121324
%%BeginData:        457 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code128 {

    20 dict begin                  % Confine variables to local scope

    /options exch def        % We are given an option string
    /barcode exch def        % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def
    /encoding (auto) def
    /raw false def
    /parse false def
    /parsefnc false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Special function characters
    /sta  -1 def  /stb  -2 def  /stc  -3 def
    /swa  -4 def  /swb  -5 def  /swc  -6 def
    /fn1  -7 def  /fn2  -8 def  /fn3  -9 def
    /fn4 -10 def  /sft -11 def  /stp -12 def
    /lka -13 def  /lkc -14 def  % CC-A/B and CC-C linkage

    % Character maps for each state
    /charmaps [
      %  A    B    C         A    B    C         A    B    C
      [  32   32  (00) ]  [ (!)  (!)  (01) ]  [ (")  (")  (02) ]  % 0-2
      [ (#)  (#)  (03) ]  [ ($)  ($)  (04) ]  [ (%)  (%)  (05) ]  % 3-5
      [ (&)  (&)  (06) ]  [ (')  (')  (07) ]  [  40   40  (08) ]  % 6-8
      [  41   41  (09) ]  [ (*)  (*)  (10) ]  [ (+)  (+)  (11) ]  % 9-11
      [ (,)  (,)  (12) ]  [ (-)  (-)  (13) ]  [ (.)  (.)  (14) ]  % 12-14
      [ (/)  (/)  (15) ]  [ (0)  (0)  (16) ]  [ (1)  (1)  (17) ]  % 15-17
      [ (2)  (2)  (18) ]  [ (3)  (3)  (19) ]  [ (4)  (4)  (20) ]  % 18-20
      [ (5)  (5)  (21) ]  [ (6)  (6)  (22) ]  [ (7)  (7)  (23) ]  % 21-23
      [ (8)  (8)  (24) ]  [ (9)  (9)  (25) ]  [ (:)  (:)  (26) ]  % 24-26
      [ (;)  (;)  (27) ]  [ (<)  (<)  (28) ]  [ (=)  (=)  (29) ]  % 27-29
      [ (>)  (>)  (30) ]  [ (?)  (?)  (31) ]  [ (@)  (@)  (32) ]  % 30-32
      [ (A)  (A)  (33) ]  [ (B)  (B)  (34) ]  [ (C)  (C)  (35) ]  % 33-35
      [ (D)  (D)  (36) ]  [ (E)  (E)  (37) ]  [ (F)  (F)  (38) ]  % 36-38
      [ (G)  (G)  (39) ]  [ (H)  (H)  (40) ]  [ (I)  (I)  (41) ]  % 39-41
      [ (J)  (J)  (42) ]  [ (K)  (K)  (43) ]  [ (L)  (L)  (44) ]  % 42-44
      [ (M)  (M)  (45) ]  [ (N)  (N)  (46) ]  [ (O)  (O)  (47) ]  % 45-47
      [ (P)  (P)  (48) ]  [ (Q)  (Q)  (49) ]  [ (R)  (R)  (50) ]  % 48-50
      [ (S)  (S)  (51) ]  [ (T)  (T)  (52) ]  [ (U)  (U)  (53) ]  % 51-53
      [ (V)  (V)  (54) ]  [ (W)  (W)  (55) ]  [ (X)  (X)  (56) ]  % 54-56
      [ (Y)  (Y)  (57) ]  [ (Z)  (Z)  (58) ]  [ ([)  ([)  (59) ]  % 57-59
      [  92   92  (60) ]  [ (])  (])  (61) ]  [ (^)  (^)  (62) ]  % 60-62
      [ (_)  (_)  (63) ]  [   0  (`)  (64) ]  [   1  (a)  (65) ]  % 63-65
      [   2  (b)  (66) ]  [   3  (c)  (67) ]  [   4  (d)  (68) ]  % 66-68
      [   5  (e)  (69) ]  [   6  (f)  (70) ]  [   7  (g)  (71) ]  % 69-71
      [   8  (h)  (72) ]  [   9  (i)  (73) ]  [  10  (j)  (74) ]  % 72-74
      [  11  (k)  (75) ]  [  12  (l)  (76) ]  [  13  (m)  (77) ]  % 75-77
      [  14  (n)  (78) ]  [  15  (o)  (79) ]  [  16  (p)  (80) ]  % 78-80
      [  17  (q)  (81) ]  [  18  (r)  (82) ]  [  19  (s)  (83) ]  % 81-83
      [  20  (t)  (84) ]  [  21  (u)  (85) ]  [  22  (v)  (86) ]  % 84-86
      [  23  (w)  (87) ]  [  24  (x)  (88) ]  [  25  (y)  (89) ]  % 87-89
      [  26  (z)  (90) ]  [  27  ({)  (91) ]  [  28  (|)  (92) ]  % 90-92
      [  29  (})  (93) ]  [  30  (~)  (94) ]  [  31  127  (95) ]  % 93-95
      [ fn3  fn3  (96) ]  [ fn2  fn2  (97) ]  [ sft  sft  (98) ]  % 96-98
      [ swc  swc  (99) ]  [ swb  fn4  swb  ]  [ fn4  swa  swa  ]  % 99-101
      [ fn1  fn1  fn1  ]  [ sta  sta  sta  ]  [ stb  stb  stb  ]  % 102-104
      [ stc  stc  stc  ]  [ stp  stp  stp  ]                      % 105-106
    ] def

    % Invert charmaps to give character to value maps for each state
    /charvals [ 109 dict 109 dict 109 dict ] def
    0 1 charmaps length 1 sub {
        /i exch def
        /encs charmaps i get def
        0 1 2 {
            /j exch def
            encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
            charvals j get exch i put
        } for
    } for
    /seta charvals 0 get def
    /setb charvals 1 get def
    /setc charvals 2 get def

    % Include pseudo characters for GS1-128 Composite linkage identifiers
    seta lka seta swb get put  seta lkc seta swc get put
    setb lka setb swc get put  setb lkc setb swa get put
    setc lka setc swa get put  setc lkc setc swb get put

    raw {/encoding (raw) def} if

    encoding (raw) eq {
        /cws barlen array def
        /i 0 def /j 0 def
        { % loop
            i barlen eq {exit} if
            /cw barcode i 1 add 3 getinterval cvi def
            cws j cw put
            /i i 4 add def
            /j j 1 add def
        } loop
        /cws cws 0 j getinterval def
        /text () def
    } if

    encoding (auto) eq {

        /fncvals <<
            (FNC1) fn1
            (FNC2) fn2
            (FNC3) fn3
%            (FNC4) fn4    Not user accessible as encoded automatically
            (LNKA) lka
            (LNKC) lkc
        >> def

        % Convert input into bytes accounting for FNC and LNK characters
        /msg barlen array def
        /text barlen string def
        /i 0 def /j 0 def {
            i barlen eq {exit} if
            /char barcode i get def
            text j char put
            parsefnc char 94 eq and i barlen 4 sub lt and {
                barcode i 1 add get 94 ne {
                    /char fncvals barcode i 1 add 4 getinterval get def
                    text j ( ) putinterval
                    /i i 4 add def
                } {
                    /i i 1 add def
                } ifelse
            } if
            msg j char put
            /i i 1 add def
            /j j 1 add def
        } loop
        /msg msg 0 j getinterval def
        /msglen msg length def
        /text text 0 j getinterval def

        % Standard and extended ASCII runlength at position
        /numSA [ msglen {0} repeat 0 ] def
        /numEA [ msglen {0} repeat 0 ] def
        msglen 1 sub -1 0 {
            /i exch def
            msg i get 0 ge {
                msg i get 128 ge {
                    numEA i numEA i 1 add get 1 add put
                } {
                    numSA i numSA i 1 add get 1 add put
                } ifelse
            } if
        } for

        % FNC4 codeword insertion for extended ASCII
        /ea false def /msgtmp [] def
        0 1 msglen 1 sub {
            /i exch def
            /c msg i get def
            ea c 128 lt xor not c 0 ge and {  % Other mode required
                ea {numSA} {numEA} ifelse i get dup  % Runlength of other mode
                i add msglen eq {3} {5} ifelse       % Does run terminate symbol
                lt {  % Shift
                    /msgtmp [ msgtmp aload pop fn4 ] def
                } {   % Latch
                    /msgtmp [ msgtmp aload pop fn4 fn4 ] def
                    /ea ea not def
                } ifelse
            } if
            /msgtmp [ msgtmp aload pop c 0 ge {c 127 and} {c} ifelse ] def
        } for
        /msg msgtmp def
        /msglen msg length def

        % Determine digit runlength and characters from given position
        /numsscr {
            /n 0 def /s 0 def
            /p exch def {
                p msglen ge {exit} if
                msg p get
                dup setc exch known not {pop exit} if
                fn1 eq {
                    % FNC1 in odd position of run like two digits
                    s 2 mod 0 eq {/s s 1 add def} {exit} ifelse
                } if
                /n n 1 add def
                /s s 1 add def
                /p p 1 add def
            } loop
            n s
        } bind def

        % Encoding for each alphabet
        /enca {
            seta exch get cws exch j exch put
            /j j 1 add def
        } bind def
        /encb {
            setb exch get cws exch j exch put
            /j j 1 add def
        } bind def
        /encc {
            dup type /arraytype ne {
                setc exch get
            } {
                aload pop 48 sub exch 48 sub 10 mul add
            } ifelse
            cws exch j exch put
            /j j 1 add def
        } bind def

        % Character exclusively in either alphabet A or B
        /anotb {dup seta exch known exch setb exch known not and} bind def
        /bnota {dup setb exch known exch seta exch known not and} bind def

        % Pre-compute relative position of next anotb and next bnota characters
        /nextanotb [ msg length {0} repeat 9999 ] def
        /nextbnota [ msg length {0} repeat 9999 ] def
        msg length 1 sub -1 0 {
            /i exch def
            msg i get anotb {
                nextanotb i 0 put
            } {
                nextanotb i nextanotb i 1 add get 1 add put
            } ifelse
            msg i get bnota {
                nextbnota i 0 put
            } {
                nextbnota i nextbnota i 1 add get 1 add put
            } ifelse
        } for

        % Does a-only come before b-only after given position and vice versa
        /abeforeb {dup nextanotb exch get exch nextbnota exch get lt} bind def
        /bbeforea {dup nextbnota exch get exch nextanotb exch get lt} bind def

        /cws barcode length 2 mul 3 add array def

        % Select start character
        /j 0 def
        msglen 0 gt {0 numsscr} {-1 -1} ifelse /nums exch def /nchars exch def
        {  % common exit
            msglen 0 eq {
                stb enca
                /cset (setb) def
                exit
            } if
            msglen 2 eq nums 2 eq and {
                stc enca
                /cset (setc) def
                exit
            } if
            nums 4 ge {
                stc enca
                /cset (setc) def
                exit
            } if
            0 abeforeb {
                sta enca
                /cset (seta) def
                exit
            } if
            stb enca
            /cset (setb) def
            exit
        } loop

        % Main encoding loop
        /i 0 def {
            i msglen eq {exit} if

            i numsscr /nums exch def /nchars exch def

            % Determine switches and shifts
            {  % common exit
                cset (seta) eq cset (setb) eq or nums 4 ge and
                msg i get fn1 ne and {
                    nums 2 mod 0 eq {
                        swc cset (seta) eq {enca} {encb} ifelse
                        /cset (setc) def
                        exit
                    } {
                        msg i get cset (seta) eq {enca} {encb} ifelse
                        /i i 1 add def
                        swc cset (seta) eq {enca} {encb} ifelse
                        /cset (setc) def
                        exit
                    } ifelse
                } if
                cset (setb) eq msg i get anotb and {
                    i msglen 1 sub lt {
                        i 1 add bbeforea {
                            sft encb
                            msg i get enca
                            /i i 1 add def
                            exit
                        } if
                    } if
                    swa encb
                    /cset (seta) def
                    exit
                } if
                cset (seta) eq msg i get bnota and {
                    i msglen 1 sub lt {
                        i 1 add abeforeb {
                            sft enca
                            msg i get encb
                            /i i 1 add def
                            exit
                        } if
                    } if
                    swb enca
                    /cset (setb) def
                    exit
                } if
                cset (setc) eq nums 2 lt and msg i get -1 gt and {
                    i abeforeb {
                        swa encc
                        /cset (seta) def
                        exit
                    } if
                    swb encc
                    /cset (setb) def
                    exit
                } if

                % No switches or latches so encode
                cset (seta) eq {
                    msg i get enca
                    /i i 1 add def
                    exit
                } if
                cset (setb) eq {
                    msg i get encb
                    /i i 1 add def
                    exit
                } if
                cset (setc) eq {
                    msg i get -1 le {
                        msg i get encc
                        /i i 1 add def
                    } {
                        msg i 2 getinterval encc
                        /i i 2 add def
                    } ifelse
                    exit
                } if

                exit
            } loop

        } loop
        /cws cws 0 j getinterval def
    } if  % auto encoding

    % Derive checksum and place stop character
    /cws j 2 add array dup 0 cws putinterval def
    /csum cws 0 get def
    1 1 j 1 sub {
        /i exch def
        /csum csum cws i get i mul add def
    } for
    /csum csum 103 mod def
    cws j csum put
    cws j 1 add seta stp get put

    % Create an array containing the character mappings
    /encs
    [ (212222) (222122) (222221) (121223) (121322) (131222) (122213)
      (122312) (132212) (221213) (221312) (231212) (112232) (122132)
      (122231) (113222) (123122) (123221) (223211) (221132) (221231)
      (213212) (223112) (312131) (311222) (321122) (321221) (312212)
      (322112) (322211) (212123) (212321) (232121) (111323) (131123)
      (131321) (112313) (132113) (132311) (211313) (231113) (231311)
      (112133) (112331) (132131) (113123) (113321) (133121) (313121)
      (211331) (231131) (213113) (213311) (213131) (311123) (311321)
      (331121) (312113) (312311) (332111) (314111) (221411) (431111)
      (111224) (111422) (121124) (121421) (141122) (141221) (112214)
      (112412) (122114) (122411) (142112) (142211) (241211) (221114)
      (413111) (241112) (134111) (111242) (121142) (121241) (114212)
      (124112) (124211) (411212) (421112) (421211) (212141) (214121)
      (412121) (111143) (111341) (131141) (114113) (114311) (411113)
      (411311) (113141) (114131) (311141) (411131) (211412) (211214)
      (211232) (2331112)
    ] def

    % Derive space bar succession
    /sbs cws length 6 mul 1 add string def
    0 1 cws length 1 sub {
        /i exch def
        sbs i 6 mul encs cws i get get putinterval
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    /txt [ [text textxoffset textyoffset textfont textsize] ]
    /textxalign (center)
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code128 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code128--

% --BEGIN ENCODER gs1-128--
% --REQUIRES preamble raiseerror renlinear code128--
% --DESC: GS1-128
% --EXAM: (01)95012345678903(3103)000123
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp gs1-128 0.0 2019110800 68322 71479
%%BeginData:        160 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code128 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/gs1-128 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 0.5 def
    /linkagea false def
    /linkagec false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    /text barcode def

    % Expand ordinals of the form ^NNN to ASCII
    /expand {
        /in exch def
        /out in length string def
        /j 0 def
        in
        { % loop
            (^) search {
                dup out exch j exch putinterval
                length j add 1 add /j exch def
                pop
                dup 0 3 getinterval cvi out exch j 1 sub exch put
                dup length 3 sub 3 exch getinterval
            } {
                dup out exch j exch putinterval
                length j add /j exch def
                out 0 j getinterval exit
            } ifelse
        } loop
    } bind def

    % Parse out AIs
    /ais  [] def
    /vals [] def
    barcode dup length 1 sub 1 exch getinterval
    {  % loop
        dup () eq {exit} if
        (\)) search pop
        exch pop
        exch (\() search {
            exch pop exch 3 1 roll
        } {
            () 3 1 roll
        } ifelse
        [ ais  aload pop counttomark 2 add index ] /ais exch def
        [ vals aload pop counttomark 1 add index expand ] /vals exch def
        pop pop
    } loop
    pop

    % Pre-defined fixed length data field AIs
    % any AI whose prefix is not included in this table must be
    % terminated with "FNC1", even if it's fixed length
    /aifixed 23 dict def
    [
        0 1 4 {} for
    ] {
        (00) 2 string copy dup dup 1 5 -1 roll 48 add put aifixed 3 1 roll put
    } forall
    [
        11 1 20 {} for
        23
        31 1 36 {} for
        41
    ] {
        10 2 string cvrs dup aifixed 3 1 roll put
    } forall

    % Create the code128 data
    /fnc1 -1 def
    /c128 [ fnc1 ] def
    0 1 ais length 1 sub {
        /i exch def
        /ai ais i get def
        /val vals i get def
        c128 length ai length add val length add array
        dup 0 c128 putinterval
        dup c128 length ai [ exch {} forall ] putinterval
        dup c128 length ai length add val [ exch {} forall ] putinterval
        /c128 exch def
        i ais length 1 sub ne aifixed ai 0 2 getinterval known not and {  % Append FNC1
            c128 length 1 add array
            dup 0 c128 putinterval
            dup c128 length fnc1 put
            /c128 exch def
        } if
    } for

    % Compose input to code128
    /barcode c128 length 1 add 5 mul string def
    /i 0 def /j 0 def {
        i c128 length eq {exit} if
        c128 i get dup fnc1 eq {
            pop barcode j (^FNC1) putinterval
            /j j 4 add def
        } {
            barcode exch j exch put
        } ifelse
        /i i 1 add def
        /j j 1 add def
    } loop
    linkagea linkagec or {
        barcode j linkagea {(^LNKA)} {(^LNKC)} ifelse putinterval
        /j j 5 add def
    } if
    /barcode barcode 0 j getinterval def

    % Get the result of encoding with code128
    options (height) height put
    options (dontdraw) true put
    options (parsefnc) true put
    /args barcode options //code128 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /gs1-128 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER gs1-128--

% --BEGIN ENCODER ean14--
% --REQUIRES preamble raiseerror renlinear code128--
% --DESC: GS1-14
% --EXAM: (01) 0 46 01234 56789 3
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp ean14 0.0 2019110800 60569 63743
%%BeginData:        107 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code128 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ean14 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Strip spaces from the given data
    /text barcode def
    barcode dup length string exch 0 exch
    {dup 32 ne {3 copy put pop 1 add} {pop} ifelse} forall
    0 exch getinterval /barcode exch def
    /hasspace text length barcode length ne def

    % Validate the input
    barcode 0 4 getinterval (\(01\)) ne {
        /bwipp.ean14badAI (GS1-14 must begin with (01) application identifier) //raiseerror exec
    } if
    barcode length 17 ne barcode length 18 ne and {
        /bwipp.ean14badLength (GS1-14 must be 13 or 14 digits) //raiseerror exec
    } if
    barcode 4 barcode length 4 sub getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.ean14badCharacter (GS1-14 must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 12 {
        /i exch def
        /checksum checksum barcode i 4 add get 48 sub i 2 mod 0 eq {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 18 eq {
        barcode 17 get checksum 48 add ne {
            /bwipp.ean14badCheckDigit (Incorrect GS1-14 check digit provided) //raiseerror exec
        } if
    } {
        18 string
        dup 0 barcode putinterval
        dup 17 checksum 48 add put
        /barcode exch def
        text length hasspace {2} {1} ifelse add string
        dup dup length 2 sub ( ) putinterval
        dup dup length 1 sub checksum 48 add put
        dup 0 text putinterval
        /text exch def
    } ifelse
    /gtin barcode 4 14 getinterval def

    % Compose input to code128
    /barcode 21 string def
    barcode 0 (^FNC101) putinterval
    barcode 7 gtin putinterval

    % Get the result of encoding with code128
    options (dontdraw) true put
    options (parsefnc) true put
    /args barcode options //code128 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ean14 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ean14--

% --BEGIN ENCODER sscc18--
% --REQUIRES preamble raiseerror renlinear code128--
% --DESC: SSCC-18
% --EXAM: (00) 0 0614141 123456789 0
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp sscc18 0.0 2019110800 60581 63750
%%BeginData:        107 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code128 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/sscc18 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Strip spaces from the given data
    /text barcode def
    barcode dup length string exch 0 exch
    {dup 32 ne {3 copy put pop 1 add} {pop} ifelse} forall
    0 exch getinterval /barcode exch def
    /hasspace text length barcode length ne def

    % Validate the input
    barcode 0 4 getinterval (\(00\)) ne {
        /bwipp.sscc18badAI (SSCC-18 must begin with (00) application identifier) //raiseerror exec
    } if
    barcode length 21 ne barcode length 22 ne and {
        /bwipp.sscc18badLength (SSCC-18 must be 17 or 18 digits) //raiseerror exec
    } if
    barcode 4 barcode length 4 sub getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.sscc18badCharacter (SSCC-18 must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 16 {
        /i exch def
        /checksum checksum barcode i 4 add get 48 sub i 2 mod 0 eq {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 22 eq {
        barcode 21 get checksum 48 add ne {
            /bwipp.sscc18badCheckDigit (Incorrect SSCC-18 check digit provided) //raiseerror exec
        } if
    } {
        22 string
        dup 0 barcode putinterval
        dup 21 checksum 48 add put
        /barcode exch def
        text length hasspace {2} {1} ifelse add string
        dup dup length 2 sub ( ) putinterval
        dup dup length 1 sub checksum 48 add put
        dup 0 text putinterval
        /text exch def
    } ifelse
    /sscc barcode 4 18 getinterval def

    % Compose input to code128
    /barcode 25 string def
    barcode 0 (^FNC100) putinterval
    barcode 7 sscc putinterval

    % Get the result of encoding with code128
    options (dontdraw) true put
    options (parsefnc) true put
    /args barcode options //code128 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /sscc18 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER sscc18--

% --BEGIN ENCODER code39--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Code 39
% --EXAM: THIS IS CODE 39
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp code39 0.0 2019110800 62922 62513
%%BeginData:        143 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code39 {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /includecheck false def
    /validatecheck false def
    /includetext false def
    /includecheckintext false def
    /hidestars false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.code39badCharacter (Code 39 must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 0 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.code39badCheckDigit (Incorrect Code 39 check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
        /includecheck true def
    } if

    % Create an array containing the character mappings
    /encs
    [ (1113313111) (3113111131) (1133111131) (3133111111) (1113311131)
      (3113311111) (1133311111) (1113113131) (3113113111) (1133113111)
      (3111131131) (1131131131) (3131131111) (1111331131) (3111331111)
      (1131331111) (1111133131) (3111133111) (1131133111) (1111333111)
      (3111111331) (1131111331) (3131111311) (1111311331) (3111311311)
      (1131311311) (1111113331) (3111113311) (1131113311) (1111313311)
      (3311111131) (1331111131) (3331111111) (1311311131) (3311311111)
      (1331311111) (1311113131) (3311113111) (1331113111) (1313131111)
      (1313111311) (1311131311) (1113131311) (1311313111)
    ] def

    /sbs barlen includecheck {3} {2} ifelse add 10 mul string def
    /txt barlen includecheck {3} {2} ifelse add array def

    % Put the start character
    sbs 0 encs 43 get putinterval
    hidestars not {
        txt 0 [(*) 0 textyoffset textfont textsize] put
    } {
        txt 0 [() 0 textyoffset textfont textsize] put
    } ifelse

    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        sbs i 10 mul 10 add encs indx get putinterval
        txt i 1 add [barcode i 1 getinterval i 1 add 16 mul textyoffset textfont textsize] put
    } for

    % Put the checksum and end characters
    includecheck {
        sbs barlen 10 mul 10 add encs checksum get putinterval
        includecheckintext {
            txt barlen 1 add [barchars checksum 1 getinterval barlen 1 add 16 mul textyoffset textfont textsize] put
        } {
            txt barlen 1 add [() barlen 1 add 16 mul textyoffset textfont textsize] put
        } ifelse
        sbs barlen 10 mul 20 add encs 43 get putinterval
        hidestars not {
            txt barlen 2 add [(*) barlen 2 add 16 mul textyoffset textfont textsize] put
        } {
            txt barlen 2 add [() barlen 2 add 16 mul textyoffset textfont textsize] put
        } ifelse
    } {
        sbs barlen 10 mul 10 add encs 43 get putinterval
        hidestars not {
            txt barlen 1 add [(*) barlen 1 add 16 mul textyoffset textfont textsize] put
        } {
            txt barlen 1 add [() barlen 1 add 16 mul textyoffset textfont textsize] put
        } ifelse
    } ifelse

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code39 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code39--

% --BEGIN ENCODER code39ext--
% --REQUIRES preamble raiseerror renlinear code39--
% --DESC: Code 39 Extended
% --EXAM: Code39 Ext!
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp code39ext 0.0 2019110800 61296 64490
%%BeginData:        112 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code39 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code39ext {

    20 dict begin

    /options exch def      % We are given an options string
    /barcode exch def      % We are given the code39extended text

    /dontdraw false def
    /includetext false def
    /parse false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    % Validate the input
    barcode {
        128 ge {
            /bwipp.code39extBadCharacter (Code 39 Extended must contain only ASCII characters) //raiseerror exec
        } if
    } forall

    /barlen barcode length def

    % Extended alphabet to non-extended alphabet
    /extencs
    [ (%U) ($A) ($B) ($C) ($D) ($E) ($F) ($G) ($H) ($I) ($J) ($K) ($L) ($M) ($N) ($O)
      ($P) ($Q) ($R) ($S) ($T) ($U) ($V) ($W) ($X) ($Y) ($Z) (%A) (%B) (%C) (%D) (%E)
      ( )  (/A) (/B) (/C) (/D) (/E) (/F) (/G) (/H) (/I) (/J) (/K) (/L) (-)  (.)  (/O)
      (0)  (1)  (2)  (3)  (4)  (5)  (6)  (7)  (8)  (9)  (/Z) (%F) (%G) (%H) (%I) (%J)
      (%V) (A)  (B)  (C)  (D)  (E)  (F)  (G)  (H)  (I)  (J)  (K)  (L)  (M)  (N)  (O)
      (P)  (Q)  (R)  (S)  (T)  (U)  (V)  (W)  (X)  (Y)  (Z)  (%K) (%L) (%M) (%N) (%O)
      (%W) (+A) (+B) (+C) (+D) (+E) (+F) (+G) (+H) (+I) (+J) (+K) (+L) (+M) (+N) (+O)
      (+P) (+Q) (+R) (+S) (+T) (+U) (+V) (+W) (+X) (+Y) (+Z) (%P) (%Q) (%R) (%S) (%T)
    ] def

    /newcode barlen 2 mul string def
    /newtext barlen 2 mul string def
    /j 0 def
    0 1 barlen 1 sub {
        /i exch def
        /extchar extencs barcode i get get def
        newcode j extchar putinterval
        newtext j barcode i get put
        extchar length 1 ne {newtext j 1 add ( ) putinterval} if
        /j j extchar length add def
    } for
    /newcode newcode 0 j getinterval def
    /newtext newtext 0 j getinterval def

    % Get the result of encoding with code39
    options (dontdraw) true put
    /args newcode options //code39 exec def

    % Replace chars in /txt with chars in newtext
    includetext {
        /txt args (txt) get def
        0 1 newtext length 1 sub {
            /i exch def
            /txtentry txt i 1 add get def
            txtentry 0 newtext i 1 getinterval put
            txt i 1 add txtentry put
        } for
        args (txt) txt put
    } if
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code39ext dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code39ext--

% --BEGIN ENCODER code32--
% --REQUIRES preamble raiseerror renlinear code39--
% --DESC: Italian Pharmacode
% --EXAM: 01234567
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp code32 0.0 2019110800 58209 61424
%%BeginData:        101 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code39 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code32 {

    20 dict begin

    /options exch def      % We are given an options string
    /barcode exch def      % We are given a barcode string

    /dontdraw false def
    /includetext false def  % Enable/disable code32 text
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /textxoffset 0 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Validate the input
    barcode length 8 ne barcode length 9 ne and {
        /bwipp.code32badLength (Italian Pharmacode must be 8 or 9 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.code32badCharacter (Italian Pharmacode must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate check digit
    /checksum 0 def
    0 1 7 {
        /i exch def
        barcode i get 48 sub i 2 mod 0 ne {2 mul} if dup 9 gt {9 sub} if
        checksum add /checksum exch def
    } for
    /checksum checksum 10 mod def
    barcode length 9 eq {
        barcode 8 get checksum 48 add ne {
            /bwipp.code32badCheckDigit (Incorrect Italian Pharmacode check digit provided) //raiseerror exec
        } if
    } if
    10 string
    dup 0 barcode putinterval
    dup 8 checksum 48 add put
    /text exch def

    % convert number from base10 to base32
    /val text cvi 32 barcode cvrs def
    /barcode 6 string def
    0 1 5 {barcode exch 48 put} for
    barcode 6 val length sub val putinterval

    % convert base32 number to specified character set
    0 1 5 {
        dup barcode exch get
        dup (AEIO) {ge {1 add} if dup} forall pop
        barcode 3 1 roll put
    } for

    % format HRI
    text 1 text 0 9 getinterval putinterval
    text 0 65 put

    % Get the result of encoding with code39
    options (dontdraw) true put
    /args barcode options //code39 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code32 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code32--

% --BEGIN ENCODER pzn--
% --REQUIRES preamble raiseerror renlinear code39--
% --DESC: Pharmazentralnummer (PZN)
% --EXAM: 123456
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp pzn 0.0 2019110800 58384 61524
%%BeginData:        102 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code39 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/pzn {

    20 dict begin

    /options exch def      % We are given an options string
    /barcode exch def      % We are given a barcode string

    /dontdraw false def
    /includetext false def  % Enable/disable code32 text
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /textxoffset 0 def
    /height 1 def
    /pzn8 false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /textxoffset textxoffset cvr def
    /height height cvr def

    % Validate the input
    pzn8 {
        barcode length 7 ne barcode length 8 ne and {
            /bwipp.pzn8badLength (PZN8 must be 7 or 8 digits) //raiseerror exec
        } if
    } {
        barcode length 6 ne barcode length 7 ne and {
            /bwipp.pzn7badLength (PZN7 must be 6 or 7 digits) //raiseerror exec
        } if
    } ifelse
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.pznBadCharacter (PZN must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate check digit
    /msglen pzn8 {9} {8} ifelse def
    /checksum 0 def
    0 1 msglen 3 sub {
        /i exch def
        barcode i get 48 sub i pzn8 {1} {2} ifelse add mul
        checksum add /checksum exch def
    } for
    /checksum checksum 11 mod def
    checksum 10 eq {
        /bwipp.pznBadInputSequence (Incorrect PZN input sequence provided) //raiseerror exec
    } if
    barcode length msglen 1 sub eq {
        barcode msglen 2 sub get checksum 48 add ne {
            /bwipp.pznBadCheckDigit (Incorrect PZN check digit provided) //raiseerror exec
        } if
    } if
    msglen string
    dup 0 45 put
    dup 1 barcode putinterval
    dup msglen 1 sub checksum 48 add put
    /msg exch def

    % Get the result of encoding with code39
    options (dontdraw) true put
    /args msg options //code39 exec def

    % format HRI
    /text msglen 5 add string def
    text 0 (PZN - ) putinterval
    text 6 msg 1 msglen 1 sub getinterval putinterval

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /pzn dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER pzn--

% --BEGIN ENCODER code93--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Code 93
% --EXAM: THIS IS CODE 93
% --EXOP: includetext includecheck
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp code93 0.0 2019110800 61745 61440
%%BeginData:        150 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code93 {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /includecheck false def  % Enable/disable checkdigit
    /includetext false def   % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def
    /parsefnc false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    /encs
    [ (131112) (111213) (111312) (111411) (121113)
      (121212) (121311) (111114) (131211) (141111)
      (211113) (211212) (211311) (221112) (221211)
      (231111) (112113) (112212) (112311) (122112)
      (132111) (111123) (111222) (111321) (121122)
      (131121) (212112) (212211) (211122) (211221)
      (221121) (222111) (112122) (112221) (122121)
      (123111) (121131) (311112) (311211) (321111)
      (112131) (113121) (211131) (121221) (312111)
      (311121) (122211) (111141) (1111411)
    ] def

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def

    /barlen barcode length def

    % Special function characters
    /sft1 -1 def  /sft2 -2 def  /sft3 -3 def  /sft4 -4 def
    /fncvals <<
        (SFT$) sft1
        (SFT%) sft2
        (SFT/) sft3
        (SFT+) sft4
    >> def

    % Convert input into bytes accounting for shift characters
    /msg barlen array def
    /i 0 def /j 0 def {
        i barlen eq {exit} if
        /char barcode i get def
        parsefnc char 94 eq and i barlen 4 sub lt and {
            barcode i 1 add get 94 ne {
                /char fncvals barcode i 1 add 4 getinterval get def
                /i i 4 add def
            } {
                /i i 1 add def
            } ifelse
        } if
        msg j char put
        /i i 1 add def
        /j j 1 add def
    } loop
    /msg msg 0 j getinterval def
    /msglen msg length def

    includecheck {
        /sbs msglen 6 mul 25 add string def
    } {
        /sbs msglen 6 mul 13 add string def
    } ifelse
    /txt msglen array def

    % Put the start character
    sbs 0 encs 47 get putinterval

    /checksum1 0 def /checksum2 0 def
    0 1 msglen 1 sub {
        /i exch def
        % Lookup the encoding for the each barcode character
        msg i get dup 0 lt {
            42 exch sub /indx exch def
            /char ( ) def
        } {
            1 string dup 0 4 -1 roll put /char exch def
            barchars char search
            pop                                  % Discard true leaving pre
            length /indx exch def                % indx is the length of pre
            pop pop                              % Discard seek and post
        } ifelse
        /enc encs indx get def                   % Get the indxth encoding
        sbs i 6 mul 6 add enc putinterval        % Put encoded digit into sbs
        txt i [char i 9 mul 9 add textyoffset textfont textsize] put
        /checksum1 checksum1 msglen i sub 1 sub 20 mod 1 add indx mul add def
        /checksum2 checksum2 msglen i sub 15 mod 1 add indx mul add def
    } for

    includecheck {
        % Put the first checksum character
        /checksum1 checksum1 47 mod def
        /checksum2 checksum2 checksum1 add 47 mod def
        sbs msglen 6 mul 6 add encs checksum1 get putinterval
        sbs msglen 6 mul 12 add encs checksum2 get putinterval
        % Put the end character
        sbs msglen 6 mul 18 add encs 48 get putinterval
    } {
        % Put the end character
        sbs msglen 6 mul 6 add encs 48 get putinterval
    } ifelse

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code93 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code93--

% --BEGIN ENCODER code93ext--
% --REQUIRES preamble raiseerror renlinear code93--
% --DESC: Code 93 Extended
% --EXAM: Code93 Ext!
% --EXOP: includetext includecheck
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp code93ext 0.0 2019110800 61641 64867
%%BeginData:        116 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code93 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code93ext {

    20 dict begin

    /options exch def      % We are given an options string
    /barcode exch def      % We are given the code39extended text

    /dontdraw false def
    /includetext false def
    /parse false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Extended alphabet to non-extended alphabet
    /extencs
    [ (^SFT%U) (^SFT$A) (^SFT$B) (^SFT$C) (^SFT$D) (^SFT$E) (^SFT$F) (^SFT$G)
      (^SFT$H) (^SFT$I) (^SFT$J) (^SFT$K) (^SFT$L) (^SFT$M) (^SFT$N) (^SFT$O)
      (^SFT$P) (^SFT$Q) (^SFT$R) (^SFT$S) (^SFT$T) (^SFT$U) (^SFT$V) (^SFT$W)
      (^SFT$X) (^SFT$Y) (^SFT$Z) (^SFT%A) (^SFT%B) (^SFT%C) (^SFT%D) (^SFT%E)
      ( )      (^SFT/A) (^SFT/B) (^SFT/C) (^SFT/D) (^SFT/E) (^SFT/F) (^SFT/G)
      (^SFT/H) (^SFT/I) (^SFT/J) (^SFT/K) (^SFT/L) (-)      (.)      (^SFT/O)
      (0)      (1)      (2)      (3)      (4)      (5)      (6)      (7)
      (8)      (9)      (^SFT/Z) (^SFT%F) (^SFT%G) (^SFT%H) (^SFT%I) (^SFT%J)
      (^SFT%V) (A)      (B)      (C)      (D)      (E)      (F)      (G)
      (H)      (I)      (J)      (K)      (L)      (M)      (N)      (O)
      (P)      (Q)      (R)      (S)      (T)      (U)      (V)      (W)
      (X)      (Y)      (Z)      (^SFT%K) (^SFT%L) (^SFT%M) (^SFT%N) (^SFT%O)
      (^SFT%W) (^SFT+A) (^SFT+B) (^SFT+C) (^SFT+D) (^SFT+E) (^SFT+F) (^SFT+G)
      (^SFT+H) (^SFT+I) (^SFT+J) (^SFT+K) (^SFT+L) (^SFT+M) (^SFT+N) (^SFT+O)
      (^SFT+P) (^SFT+Q) (^SFT+R) (^SFT+S) (^SFT+T) (^SFT+U) (^SFT+V) (^SFT+W)
      (^SFT+X) (^SFT+Y) (^SFT+Z) (^SFT%P) (^SFT%Q) (^SFT%R) (^SFT%S) (^SFT%T)
    ] def

    /newcode barlen 6 mul string def
    /newtext barlen 6 mul string def
    /j 0 def /k 0 def
    0 1 barlen 1 sub {
        /i exch def
        /extchar extencs barcode i get get def
        /extlen extchar length def
        newcode j extchar putinterval
        newtext k barcode i get put
        extlen 1 ne {newtext k 1 add ( ) putinterval} if
        /j j extlen add def
        /k k extlen 1 eq {1} {2} ifelse add def
    } for
    /newcode newcode 0 j getinterval def
    /newtext newtext 0 k getinterval def

    % Get the result of encoding with code93
    options (dontdraw) true put
    options (parsefnc) true put
    /args newcode options //code93 exec def

    % Replace chars in /txt with chars in newtext
    includetext {
        /txt args (txt) get def
        0 1 newtext length 1 sub {
            /i exch def
            /txtentry txt i get def
            txtentry 0 newtext i 1 getinterval put
            txt i txtentry put
        } for
        args (txt) txt put
    } if
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code93ext dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code93ext--

% --BEGIN ENCODER interleaved2of5--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Interleaved 2 of 5 (ITF)
% --EXAM: 2401234567
% --EXOP: height=0.5 includecheck includetext includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp interleaved2of5 0.0 2019110800 61405 61096
%%BeginData:        152 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/interleaved2of5 {

    20 dict begin         % Confine variables to local scope

    /options exch def               % We are given an option string
    /barcode exch def               % We are given a barcode string

    /dontdraw false def
    /includecheck false def         % Enable/disable checkdigit
    /includetext false def          % Enable/disable text
    /includecheckintext false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Validate the input
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.interleaved2of5badCharacter (Interleaved 2 of 5 must contain only digits) //raiseerror exec
        } if
    } forall

    /barlen barcode length def      % Length of the code

    % Prefix 0 to barcode if length is even and including checkdigit
    % or length is odd and not including checkdigit
    barlen 2 mod 0 eq includecheck and          % even & includecheck
    barlen 2 mod 0 ne includecheck not and or { % odd  & !includecheck
        /pad barlen 1 add string def  % Create pad one bigger than barcode
        pad 0 48 put                  % Put ascii 0 at start of pad
        pad 1 barcode putinterval     % Add barcode to the end of pad
        /barcode pad def              % barcode=pad
        /barlen barlen 1 add def      % barlen++
    } if

    % Add checksum to end of barcode
    includecheck {
        /checksum 0 def
        0 1 barlen 1 sub {
            /i exch def
            i 2 mod 0 eq {
                /checksum checksum barcode i get 48 sub 3 mul add def
            } {
                /checksum checksum barcode i get 48 sub add def
            } ifelse
        } for
        /checksum 10 checksum 10 mod sub 10 mod def
        /pad barlen 1 add string def    % Create pad one bigger than barcode
        pad 0 barcode putinterval       % Add barcode to the start of pad
        pad barlen checksum 48 add put  % Add checksum to end of pad
        /barcode pad def                % barcode=pad
        /barlen barlen 1 add def        % barlen++
    } if

    % Create an array containing the character mappings
    /encs
    [ (11221) (21112) (12112) (22111) (11212)
      (21211) (12211) (11122) (21121) (12121)
      (1111)  (2111)
    ] def

    % Create a string of the available characters
    /barchars (0123456789) def
    /sbs barlen 5 mul 8 add string def
    /txt barlen array def

    % Put the start character
    sbs 0 encs 10 get putinterval

    0 2 barlen 1 sub {
    /i exch def
        % Lookup the encodings for two consecutive barcode characters
        barcode i 1 getinterval barchars exch search
        pop                           % Discard true leaving pre
        length /indx exch def         % indx is the length of pre
        pop pop                       % Discard seek and post
        /enca encs indx get def       % Get the indxth encoding

        barcode i 1 add 1 getinterval barchars exch search
        pop                           % Discard true leaving pre
        length /indx exch def         % indx is the length of pre
        pop pop                       % Discard seek and post
        /encb encs indx get def       % Get the indxth encoding

        % Interleave the two character encodings
        /intl enca length 2 mul string def
        0 1 enca length 1 sub {
            /j exch def
            /achar enca j get def
            /bchar encb j get def
            intl j 2 mul achar put
            intl j 2 mul 1 add bchar put
        } for

        sbs i 5 mul 4 add intl putinterval   % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 9 mul 4 add textyoffset textfont textsize] put
        includecheck includecheckintext not and barlen 2 sub i eq and {
            txt i 1 add [( ) i 1 add 9 mul 4 add textyoffset textfont textsize] put
        } {
            txt i 1 add [barcode i 1 add 1 getinterval i 1 add 9 mul 4 add textyoffset textfont textsize] put
        } ifelse
    } for

    % Put the end character
    sbs barlen 5 mul 4 add encs 11 get putinterval

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /barratio 2
    /spaceratio 2
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /interleaved2of5 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER interleaved2of5--

% --BEGIN ENCODER itf14--
% --REQUIRES preamble raiseerror renlinear interleaved2of5--
% --DESC: ITF-14
% --EXAM: 0 46 01234 56789 3
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp itf14 0.0 2019110800 60983 64117
%%BeginData:        111 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /interleaved2of5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/itf14 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def
    /includecheckintext true def
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset 3 def
    /height 0.5 def
    /showborder true def
    /borderwidth 4 def
    /borderleft 15 def
    /borderright 15 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def
    /borderwidth borderwidth cvr def
    /borderleft borderleft cvr def
    /borderright borderright cvr def

    % Strip spaces from the given data
    /text barcode def
    barcode dup length string exch 0 exch
    {dup 32 ne {3 copy put pop 1 add} {pop} ifelse} forall
    0 exch getinterval /barcode exch def
    /hasspace text length barcode length ne def

    % Validate the input
    barcode length 13 ne barcode length 14 ne and {
        /bwipp.itf14badLength (ITF-14 must be 13 or 14 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.itf14badCharacter (ITF-14 must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate ITF checksum and add to end of barcode
    /checksum 0 def
    0 1 12 {
        /i exch def
        /checksum checksum barcode i get 48 sub i 2 mod 0 eq {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 14 eq {
        barcode 13 get checksum 48 add ne {
            /bwipp.itf14badCheckDigit (Incorrect ITF-14 check digit provided) //raiseerror exec
        } if
    } {
        14 string
        dup 0 barcode putinterval
        dup 13 checksum 48 add put
        /barcode exch def
        text length hasspace {2} {1} ifelse add string
        dup dup length 2 sub ( ) putinterval
        dup dup length 1 sub checksum 48 add put
        dup 0 text putinterval
        /text exch def
    } ifelse

    % Get the result of encoding with interleaved2of5
    options (dontdraw) true put
    options (showborder) showborder put
    options (borderwidth) borderwidth put
    options (borderleft) borderleft put
    options (borderright) borderright put
    options (height) height put
    options (textyoffset) textyoffset put
    /args barcode options //interleaved2of5 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /itf14 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER itf14--

% --BEGIN ENCODER identcode--
% --REQUIRES preamble raiseerror renlinear interleaved2of5--
% --DESC: Deutsche Post Identcode
% --EXAM: 563102430313
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp identcode 0.0 2019110800 57310 60628
%%BeginData:         93 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /interleaved2of5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/identcode {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Validate the input
    barcode length 11 ne barcode length 12 ne and {
        /bwipp.identcodeBadLength (Deutsche Post Identcode must be 11 or 12 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.identcodeBadCharacter (Deutsche Post Identcode must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 10 {
        /i exch def
        /checksum checksum barcode i get 48 sub i 2 mod 0 eq {4 mul} {9 mul} ifelse add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 12 eq {
        barcode 11 get checksum 48 add ne {
            /bwipp.identcodeBadCheckDigit (Incorrect Deutsche Post Identcode check digit provided) //raiseerror exec
        } if
    } if
    12 string
    dup 0 barcode putinterval
    dup 11 checksum 48 add put
    /barcode exch def

    % Compose the human readable text
    /text (  .       .     ) 16 string copy def
    text  0 barcode  0 2 getinterval putinterval
    text  3 barcode  2 3 getinterval putinterval
    text  7 barcode  5 3 getinterval putinterval
    text 11 barcode  8 3 getinterval putinterval
    text 15 barcode 11 1 getinterval putinterval

    % Get the result of encoding with interleaved2of5
    options (dontdraw) true put
    options (includecheck) false put
    /args barcode options //interleaved2of5 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /identcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER identcode--

% --BEGIN ENCODER leitcode--
% --REQUIRES preamble raiseerror renlinear interleaved2of5--
% --DESC: Deutsche Post Leitcode
% --EXAM: 21348075016401
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp leitcode 0.0 2019110800 57302 60624
%%BeginData:         93 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /interleaved2of5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/leitcode {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Validate the input
    barcode length 13 ne barcode length 14 ne and {
        /bwipp.leitcodeBadLength (Deutsche Post Leitcode must be 13 or 14 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.leitcodeBadCharacter (Deutsche Post Leitcode must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 12 {
        /i exch def
        /checksum checksum barcode i get 48 sub i 2 mod 0 eq {4 mul} {9 mul} ifelse add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 14 eq {
        barcode 13 get checksum 48 add ne {
            /bwipp.leitcodeBadCheckDigit (Incorrect Deutsche Post Leitcode check digit provided) //raiseerror exec
        } if
    } if
    14 string
    dup 0 barcode putinterval
    dup 13 checksum 48 add put
    /barcode exch def

    % Compose the human readable text
    /text (     .   .   .    ) 18 string copy def
    text  0 barcode  0 5 getinterval putinterval
    text  6 barcode  5 3 getinterval putinterval
    text 10 barcode  8 3 getinterval putinterval
    text 14 barcode 11 2 getinterval putinterval
    text 17 barcode 13 1 getinterval putinterval

    % Get the result of encoding with interleaved2of5
    options (dontdraw) true put
    options (includecheck) false put
    /args barcode options //interleaved2of5 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /leitcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER leitcode--

% --BEGIN ENCODER databaromni--
% --REQUIRES preamble raiseerror renlinear renmatrix--
% --DESC: GS1 DataBar Omnidirectional
% --EXAM: (01)24012345678905
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databaromni 0.0 2019110800 105381 107941
%%BeginData:        422 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databaromni {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /height 33 72 div def
    /linkage false def
    /format (omni) def
    /barxmult 33 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    format (truncated) eq {/height 13 72 div def} if
    /height height cvr def
    /barxmult barxmult cvi def

    % Validate the input
    barcode 0 4 getinterval (\(01\)) ne {
        /bwipp.databaromniBadAI (GS1 DataBar Omnidirectional must begin with (01) application identifier) //raiseerror exec
    } if
    barcode length 17 ne barcode length 18 ne and {
        /bwipp.databaromniBadLength (GS1 DataBar Omnidirectional must be 13 or 14 digits) //raiseerror exec
    } if
    barcode 4 barcode length 4 sub getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.databaromniBadCharacter (GS1 DataBar Omnidirectional must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 12 {
        /i exch def
        /checksum checksum barcode i 4 add get 48 sub i 2 mod 0 eq {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 18 eq {
        barcode 17 get checksum 48 add ne {
            /bwipp.databaromniBadCheckDigit (Incorrect GS1 DataBar Omnidirectional check digit provided) //raiseerror exec
        } if
    } if
    18 string
    dup 0 barcode putinterval
    dup 17 checksum 48 add put
    /barcode exch def

    % Create the human readable text
    /txt barcode length array def
    0 1 barcode length 1 sub {
        /i exch def
        txt i [barcode i 1 getinterval 0 0 () 0] put
    } for

    /ncr {  % n r
        2 copy sub 2 copy lt {exch} if  % n r maxd mind
        1 1 5 3 roll  % mind j=1 v=1 n maxd
        1 add -1 exch {  % mind j v  n -1 maxd+1
            mul  % mind j v*i
            1 index 3 index le {
                1 index idiv exch 1 add exch
            } if
        } for
        {  % mind j v
            1 index 3 index gt {exit} if
            1 index idiv exch 1 add exch
        } loop
        exch pop exch pop
    } bind def

    /getRSSwidths {
        /oe exch def
        /el exch def
        /mw exch def
        /nm exch def
        /val exch def
        /out el array def
        /mask 0 def
        0 1 el 2 sub {
            /bar exch def
            /ew 1 def
            /mask mask 1 bar bitshift or def {
                /sval nm ew sub 1 sub el bar sub 2 sub ncr def
                oe mask 0 eq and nm ew sub el 2 mul sub bar 2 mul add -2 ge and {
                    /sval sval nm ew sub el sub bar add el bar sub 2 sub ncr sub def
                } if
                el bar sub 2 gt {
                    /lval 0 def
                    nm ew sub el sub bar add 2 add -1 mw 1 add {
                        nm exch sub ew sub 1 sub el bar sub 3 sub ncr
                        /lval exch lval add def
                    } for
                    /sval sval lval el bar sub 1 sub mul sub def
                } {
                    nm ew sub mw gt {/sval sval 1 sub def} if
                } ifelse
                /val val sval sub def
                val 0 lt {exit} if
                /ew ew 1 add def
                /mask mask 1 bar bitshift not and def
            } loop
            /val val sval add def
            /nm nm ew sub def
            out bar ew put
        } for
        out el 1 sub nm put
        out
    } bind def

    /binval [
        linkage {1} {0} ifelse
        barcode 4 13 getinterval {48 sub} forall
    ] def

    0 1 12 {
        /i exch def
        binval i 1 add 2 copy get binval i get 4537077 mod 10 mul add put
        binval i binval i get 4537077 idiv put
    } for
    /right binval 13 get 4537077 mod def
    binval 13 2 copy get 4537077 idiv put

    /left 0 def
    /i true def
    0 1 13 {
        /j exch def
        binval j get
        dup 0 eq i and {
            pop
        } {
            /i false def
            /left left 3 -1 roll 10 13 j sub exp cvi mul add def
        } ifelse
    } for

    /d1 left 1597 idiv def
    /d2 left 1597 mod def
    /d3 right 1597 idiv def
    /d4 right 1597 mod def

    /tab164 [
        160   0     12 4   8 1  161   1
        960   161   10 6   6 3  80   10
        2014  961   8  8   4 5  31   34
        2714  2015  6  10  3 6  10   70
        2840  2715  4  12  1 8  1    126
    ] def

    /tab154 [
        335   0     5  10  2 7  4   84
        1035  336   7  8   4 5  20  35
        1515  1036  9  6   6 3  48  10
        1596  1516  11 4   8 1  81  1
    ] def

    /i 0 def {
        d1 tab164 i get le {
            tab164 i 1 add 7 getinterval {} forall
            /d1te exch def /d1to exch def
            /d1mwe exch def /d1mwo exch def
            /d1ele exch def /d1elo exch def
            /d1gs exch def
            exit
        } if
        /i i 8 add def
    } loop

    /i 0 def {
        d2 tab154 i get le {
            tab154 i 1 add 7 getinterval {} forall
            /d2te exch def /d2to exch def
            /d2mwe exch def /d2mwo exch def
            /d2ele exch def /d2elo exch def
            /d2gs exch def
            exit
        } if
        /i i 8 add def
    } loop

    /i 0 def {
        d3 tab164 i get le {
            tab164 i 1 add 7 getinterval {} forall
            /d3te exch def /d3to exch def
            /d3mwe exch def /d3mwo exch def
            /d3ele exch def /d3elo exch def
            /d3gs exch def
            exit
        } if
        /i i 8 add def
    } loop

    /i 0 def {
        d4 tab154 i get le {
            tab154 i 1 add 7 getinterval {} forall
            /d4te exch def /d4to exch def
            /d4mwe exch def /d4mwo exch def
            /d4ele exch def /d4elo exch def
            /d4gs exch def
            exit
        } if
        /i i 8 add def
    } loop

    /d1wo d1 d1gs sub d1te idiv d1elo d1mwo 4 false getRSSwidths def
    /d1we d1 d1gs sub d1te mod  d1ele d1mwe 4 true  getRSSwidths def
    /d2wo d2 d2gs sub d2to mod  d2elo d2mwo 4 true  getRSSwidths def
    /d2we d2 d2gs sub d2to idiv d2ele d2mwe 4 false getRSSwidths def
    /d3wo d3 d3gs sub d3te idiv d3elo d3mwo 4 false getRSSwidths def
    /d3we d3 d3gs sub d3te mod  d3ele d3mwe 4 true  getRSSwidths def
    /d4wo d4 d4gs sub d4to mod  d4elo d4mwo 4 true  getRSSwidths def
    /d4we d4 d4gs sub d4to idiv d4ele d4mwe 4 false getRSSwidths def

    /d1w 8 array def
    0 1 3 {
        /i exch def
        d1w i 2 mul d1wo i get put
        d1w i 2 mul 1 add d1we i get put
    } for

    /d2w 8 array def
    0 1 3 {
        /i exch def
        d2w 7 i 2 mul sub d2wo i get put
        d2w 6 i 2 mul sub d2we i get put
    } for

    /d3w 8 array def
    0 1 3 {
        /i exch def
        d3w 7 i 2 mul sub d3wo i get put
        d3w 6 i 2 mul sub d3we i get put
    } for

    /d4w 8 array def
    0 1 3 {
        /i exch def
        d4w i 2 mul d4wo i get put
        d4w i 2 mul 1 add d4we i get put
    } for

    /widths [
        d1w {} forall
        d2w {} forall
        d3w {} forall
        d4w {} forall
    ] def

    /checkweights [
        1   3   9   27  2   6   18  54
        58  72  24  8   29  36  12  4
        74  51  17  32  37  65  48  16
        64  34  23  69  49  68  46  59
    ] def

    /checkwidths [
        3 8 2 1 1   3 5 5 1 1   3 3 7 1 1
        3 1 9 1 1   2 7 4 1 1   2 5 6 1 1
        2 3 8 1 1   1 5 7 1 1   1 3 9 1 1
    ] def

    /checksum 0 def
    0 1 31 {
        /i exch def
        /checksum checksum widths i get checkweights i get mul add def
    } for
    /checksum checksum 79 mod def
    checksum 8 ge {/checksum checksum 1 add def} if
    checksum 72 ge {/checksum checksum 1 add def} if
    /checklt checkwidths checksum 9 idiv 5 mul 5 getinterval def
    /checkrtrev checkwidths checksum 9 mod 5 mul 5 getinterval def
    /checkrt 5 array def
    0 1 4 {
        /i exch def
        checkrt i checkrtrev 4 i sub get put
    } for

    % Stacked format
    format (omni) eq format (truncated) eq or {  % linear

        /sbs [
            1 d1w {} forall checklt {} forall d2w {} forall
            d4w {} forall checkrt {} forall d3w {} forall 1 1
        ] def

        <<
        /ren //renlinear
        /sbs sbs
        /bhs [sbs length 1 add 2 idiv {height} repeat]
        /bbs [sbs length 1 add 2 idiv {0} repeat]
        /txt txt
        /textxalign (center)
        /opt options
        >>

        dontdraw not //renlinear if

    } {  % 2D - stacked or stackedomni

        /top [ 1 1 d1w {} forall checklt {} forall d2w {} forall 1 1 0 ] def
        /bot [ 1 1 d4w {} forall checkrt {} forall d3w {} forall 1 1 0 ] def
        0 2 24 {
            /i exch def
            top i get {0} repeat
            top i 1 add get {1} repeat
        } for
        50 array astore /top exch def
        0 2 24 {
            /i exch def
            bot i get {1} repeat
            bot i 1 add get {0} repeat
        } for
        50 array astore /bot exch def

        % Stacked
        format (stacked) eq {
            /sep [ 50 {0} repeat ] def
            4 1 45 {
                /i exch def
                top i get bot i get eq {
                    sep i 1 top i get sub put
                } {
                    sep i 1 sep i 1 sub get sub put
                } ifelse
            } for
            /pixs [
                5 {top aload pop} repeat
                sep aload pop
                7 {bot aload pop} repeat
            ] def
            /pixy pixs length 50 idiv def
        } if

        % Stacked omnidirectional
        format (stackedomni) eq {
            /sep1 [ top {1 exch sub} forall ] def
            sep1 0  [ 0 0 0 0 ] putinterval
            sep1 46 [ 0 0 0 0 ] putinterval
            18 1 30 {
                /i exch def
                top i get 0 eq {
                    top i 1 sub get 1 eq {
                        1
                    } {
                        sep1 i 1 sub get 0 eq {1} {0} ifelse
                    } ifelse
                } {
                    0
                } ifelse
                sep1 exch i exch put
            } for
            /sep2 [ 0 0 0 0 21 { 0 1 } repeat 0 0 0 0 ] def
            /sep3 [ bot {1 exch sub} forall ] def
            sep3 0  [ 0 0 0 0 ] putinterval
            sep3 46 [ 0 0 0 0 ] putinterval
            19 1 31 {
                /i exch def
                bot i get 0 eq {
                    bot i 1 sub get 1 eq {
                        1
                    } {
                        sep3 i 1 sub get 0 eq {1} {0} ifelse
                    } ifelse
                } {
                    0
                } ifelse
                sep3 exch i exch put
            } for
            /f3 [1 1 1 1 1 1 1 1 1 0 1 1 1] def
            true 0 1 12 {dup bot exch 19 add get exch f3 exch get eq and} for {
                % Right shifted module for value 3 finder
                sep3 19 [ 0 0 0 0 0 0 0 0 0 0 1 0 0 ] putinterval
            } if
            /pixs [
                barxmult {top aload pop} repeat
                sep1 aload pop
                sep2 aload pop
                sep3 aload pop
                barxmult {bot aload pop} repeat
            ] def
            /pixy pixs length 50 idiv def
        } if

        % Return the arguments
        <<
        /ren //renmatrix
        /pixs pixs
        /pixx 50
        /pixy pixy
        /height pixy 72 div
        /width 50 72 div
        /opt options
        >>

        dontdraw not //renmatrix if

    } ifelse

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databaromni dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databaromni--

% --BEGIN ENCODER databarstacked--
% --REQUIRES preamble raiseerror renlinear renmatrix databaromni--
% --DESC: GS1 DataBar Stacked
% --EXAM: (01)24012345678905
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp databarstacked 0.0 2019110800 61648 58043
%%BeginData:         75 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /databaromni dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarstacked {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Validate the input
    barcode 0 4 getinterval (\(01\)) ne {
        /bwipp.databarstackedBadAI (GS1 DataBar Stacked must begin with (01) application identifier) //raiseerror exec
    } if
    barcode length 17 ne barcode length 18 ne and {
        /bwipp.databarstackedBadLength (GS1 DataBar Stacked must be 13 or 14 digits) //raiseerror exec
    } if
    barcode 4 barcode length 4 sub getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.databarstackedBadCharacter (GS1 DataBar Stacked must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 12 {
        /i exch def
        /checksum checksum barcode i 4 add get 48 sub i 2 mod 0 eq {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 18 eq {
        barcode 17 get checksum 48 add ne {
            /bwipp.databarstackedBadCheckDigit (Incorrect GS1 DataBar Stacked check digit provided) //raiseerror exec
        } if
    } if
    18 string
    dup 0 barcode putinterval
    dup 17 checksum 48 add put
    /barcode exch def

    % Get the result of encoding with databaromni with format=stacked
    options (dontdraw) true put
    options (format) (stacked) put

    /args barcode options //databaromni exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarstacked dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarstacked--

% --BEGIN ENCODER databarstackedomni--
% --REQUIRES preamble raiseerror renlinear renmatrix databaromni--
% --DESC: GS1 DataBar Stacked Omnidirectional
% --EXAM: (01)24012345678905
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp databarstackedomni 0.0 2019110800 61748 58123
%%BeginData:         75 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /databaromni dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarstackedomni {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Validate the input
    barcode 0 4 getinterval (\(01\)) ne {
        /bwipp.databarstackedomniBadAI (GS1 DataBar Stacked Omnidirectional must begin with (01) application identifier) //raiseerror exec
    } if
    barcode length 17 ne barcode length 18 ne and {
        /bwipp.databarstackedomniBadLength (GS1 DataBar Stacked Omnidirectional must be 13 or 14 digits) //raiseerror exec
    } if
    barcode 4 barcode length 4 sub getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.databarstackedomniBadCharacter (GS1 DataBar Stacked Omnidirectional must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 12 {
        /i exch def
        /checksum checksum barcode i 4 add get 48 sub i 2 mod 0 eq {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 18 eq {
        barcode 17 get checksum 48 add ne {
            /bwipp.databarstackedomniBadCheckDigit (Incorrect GS1 DataBar Stacked Omnidirectional check digit provided) //raiseerror exec
        } if
    } if
    18 string
    dup 0 barcode putinterval
    dup 17 checksum 48 add put
    /barcode exch def

    % Get the result of encoding with databaromni with format=stackedomni
    options (dontdraw) true put
    options (format) (stackedomni) put

    /args barcode options //databaromni exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarstackedomni dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarstackedomni--

% --BEGIN ENCODER databartruncated--
% --REQUIRES preamble raiseerror renlinear renmatrix databaromni--
% --DESC: GS1 DataBar Truncated
% --EXAM: (01)24012345678905
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databartruncated 0.0 2019110800 61674 58059
%%BeginData:         75 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /databaromni dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databartruncated {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Validate the input
    barcode 0 4 getinterval (\(01\)) ne {
        /bwipp.databartruncatedBadAI (GS1 DataBar Truncated must begin with (01) application identifier) //raiseerror exec
    } if
    barcode length 17 ne barcode length 18 ne and {
        /bwipp.databartruncatedBadLength (GS1 DataBar Truncated must be 13 or 14 digits) //raiseerror exec
    } if
    barcode 4 barcode length 4 sub getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.databartruncatedBadCharacter (GS1 DataBar Truncated must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 12 {
        /i exch def
        /checksum checksum barcode i 4 add get 48 sub i 2 mod 0 eq {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 18 eq {
        barcode 17 get checksum 48 add ne {
            /bwipp.databartruncatedBadCheckDigit (Incorrect GS1 DataBar Truncated check digit provided) //raiseerror exec
        } if
    } if
    18 string
    dup 0 barcode putinterval
    dup 17 checksum 48 add put
    /barcode exch def

    % Get the result of encoding with databaromni with format=truncated
    options (dontdraw) true put
    options (format) (truncated) put

    /args barcode options //databaromni exec def

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databartruncated dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databartruncated--

% --BEGIN ENCODER databarlimited--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: GS1 DataBar Limited
% --EXAM: (01)15012345678907
% --EXOP:
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp databarlimited 0.0 2019110800 81124 80297
%%BeginData:        278 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarlimited {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /height 10 72 div def
    /linkage false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /height height cvr def

    % Validate the input
    barcode 0 4 getinterval (\(01\)) ne {
        /bwipp.databarlimitedBadAI (GS1 DataBar Limited must begin with (01) application identifier) //raiseerror exec
    } if
    barcode length 17 ne barcode length 18 ne and {
        /bwipp.databarlimitedBadLength (GS1 DataBar Limited must be 13 or 14 digits) //raiseerror exec
    } if
    barcode 4 get dup 48 lt exch 49 gt or {
        /bwipp.databarlimitedBadStartDigit (GS1 DataBar Limited must begin with 0 or 1) //raiseerror exec
    } if
    barcode 5 barcode length 5 sub getinterval {
        dup 48 lt exch 57 gt or {
            /bwipp.databarlimitedBadCharacter (GS1 DataBar Limited must contain only digits) //raiseerror exec
        } if
    } forall

    % Calculate checksum and add to end of barcode
    /checksum 0 def
    0 1 12 {
        /i exch def
        /checksum checksum barcode i 4 add get 48 sub i 2 mod 0 eq {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    barcode length 18 eq {
        barcode 17 get checksum 48 add ne {
            /bwipp.databarlimitedBadCheckDigit (Incorrect GS1 DataBar Limited check digit provided) //raiseerror exec
        } if
    } if
    18 string
    dup 0 barcode putinterval
    dup 17 checksum 48 add put
    /barcode exch def

    % Strip the AI and optional check digit
    /binval [
        barcode 4 13 getinterval {48 sub} forall
    ] def
    linkage {
        /linkval [ 2 0 1 5 1 3 3 5 3 1 0 9 6 ] def
        0 1 binval length 1 sub {
            /i exch def
            binval i binval i get linkval i get add put
        } for
    } if

    % Create the human readable text
    /txt barcode length array def
    0 1 barcode length 1 sub {
        /i exch def
        txt i [barcode i 1 getinterval 0 0 () 0] put
    } for

    /ncr {  % n r
        2 copy sub 2 copy lt {exch} if  % n r maxd mind
        1 1 5 3 roll  % mind j=1 v=1 n maxd
        1 add -1 exch {  % mind j v  n -1 maxd+1
            mul  % mind j v*i
            1 index 3 index le {
                1 index idiv exch 1 add exch
            } if
        } for
        {  % mind j v
            1 index 3 index gt {exit} if
            1 index idiv exch 1 add exch
        } loop
        exch pop exch pop
    } bind def

    /getRSSwidths {
        /oe exch def
        /el exch def
        /mw exch def
        /nm exch def
        /val exch def
        /out el array def
        /mask 0 def
        0 1 el 2 sub {
            /bar exch def
            /ew 1 def
            /mask mask 1 bar bitshift or def {
                /sval nm ew sub 1 sub el bar sub 2 sub ncr def
                oe mask 0 eq and nm ew sub el 2 mul sub bar 2 mul add -2 ge and {
                    /sval sval nm ew sub el sub bar add el bar sub 2 sub ncr sub def
                } if
                el bar sub 2 gt {
                    /lval 0 def
                    nm ew sub el sub bar add 2 add -1 mw 1 add {
                        nm exch sub ew sub 1 sub el bar sub 3 sub ncr
                        /lval exch lval add def
                    } for
                    /sval sval lval el bar sub 1 sub mul sub def
                } {
                    nm ew sub mw gt {/sval sval 1 sub def} if
                } ifelse
                /val val sval sub def
                val 0 lt {exit} if
                /ew ew 1 add def
                /mask mask 1 bar bitshift not and def
            } loop
            /val val sval add def
            /nm nm ew sub def
            out bar ew put
        } for
        out el 1 sub nm put
        out
    } bind def

    0 1 11 {
        /i exch def
        binval i 1 add 2 copy get binval i get 2013571 mod 10 mul add put
        binval i binval i get 2013571 idiv put
    } for
    /d2 binval 12 get 2013571 mod def
    binval 12 2 copy get 2013571 idiv put

    /d1 0 def
    /i true def
    0 1 12 {
        /j exch def
        binval j get
        dup 0 eq i and {
            pop
        } {
            /i false def
            /d1 d1 3 -1 roll 10 12 j sub exp cvi mul add def
        } ifelse
    } for

    /tab267 [
        183063   0        17 9   6 3  6538   28
        820063   183064   13 13  5 4  875    728
        1000775  820064   9  17  3 6  28     6454
        1491020  1000776  15 11  5 4  2415   203
        1979844  1491021  11 15  4 5  203    2408
        1996938  1979845  19 7   8 1  17094  1
        2013570  1996939  7  19  1 8  1      16632
    ] def

    /i 0 def {
        d1 tab267 i get le {
            tab267 i 1 add 7 getinterval {} forall
            /d1te exch def /d1to exch def
            /d1mwe exch def /d1mwo exch def
            /d1ele exch def /d1elo exch def
            /d1gs exch def
            exit
        } if
        /i i 8 add def
    } loop

    /i 0 def {
        d2 tab267 i get le {
            tab267 i 1 add 7 getinterval {} forall
            /d2te exch def /d2to exch def
            /d2mwe exch def /d2mwo exch def
            /d2ele exch def /d2elo exch def
            /d2gs exch def
            exit
        } if
        /i i 8 add def
    } loop

    /d1wo d1 d1gs sub d1te idiv d1elo d1mwo 7 false getRSSwidths def
    /d1we d1 d1gs sub d1te mod  d1ele d1mwe 7 true  getRSSwidths def
    /d2wo d2 d2gs sub d2te idiv d2elo d2mwo 7 false getRSSwidths def
    /d2we d2 d2gs sub d2te mod  d2ele d2mwe 7 true  getRSSwidths def

    /d1w 14 array def
    0 1 6 {
        /i exch def
        d1w i 2 mul d1wo i get put
        d1w i 2 mul 1 add d1we i get put
    } for

    /d2w 14 array def
    0 1 6 {
        /i exch def
        d2w i 2 mul d2wo i get put
        d2w i 2 mul 1 add d2we i get put
    } for

    /widths [
        d1w {} forall
        d2w {} forall
    ] def

    /checkweights [
        1  3  9  27 81 65 17 51 64 14 42 37 22 66
        20 60 2  6  18 54 73 41 34 13 39 28 84 74
    ] def

    /checkseq [
        0 1 43 {} for
        45 52 57
        63 1 66 {} for
        73 1 79 {} for
        82
        126 1 130 {} for
        132
        141 1 146 {} for
        210 1 217 {} for
        220
        316 1 320 {} for
        322 323
        326 337
    ] def

    /checksum 0 def
    0 1 27 {
        /i exch def
        /checksum checksum widths i get checkweights i get mul add def
    } for
    /checksum checksum 89 mod def
    /seq checkseq checksum get def
    /swidths seq 21 idiv 8 3 6 false getRSSwidths def
    /bwidths seq 21 mod  8 3 6 false getRSSwidths def

    /checkwidths [0 0 0 0 0 0 0 0 0 0 0 0 1 1] def
    0 1 5 {
        /i exch def
        checkwidths i 2 mul swidths i get put
        checkwidths i 2 mul 1 add bwidths i get put
    } for

    /sbs [
        1 d1w {} forall checkwidths {} forall d2w {} forall 1 1
    ] def

    % Return the arguments
    <<
    /ren //renlinear
    /sbs sbs
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    /txt txt
    /textxalign (center)
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarlimited dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarlimited--

% --BEGIN ENCODER databarexpanded--
% --REQUIRES preamble raiseerror renlinear renmatrix--
% --DESC: GS1 DataBar Expanded
% --EXAM: (01)95012345678903(3103)000123
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databarexpanded 0.0 2019110800 187866 210668
%%BeginData:        882 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarexpanded {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /height 34 72 div def
    /format (expanded) def
    /segments -1 def
    /linkage false def
    /barxmult 34 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /height height cvr def
    /segments segments cvi def
    /barxmult barxmult cvi def

    segments -1 eq {
        /segments format (expandedstacked) eq {4} {22} ifelse def
    } if

    % Expand ordinals of the form ^NNN to ASCII
    /expand {
        /in exch def
        /out in length string def
        /j 0 def
        in
        { % loop
            (^) search {
                dup out exch j exch putinterval
                length j add 1 add /j exch def
                pop
                dup 0 3 getinterval cvi out exch j 1 sub exch put
                dup length 3 sub 3 exch getinterval
            } {
                dup out exch j exch putinterval
                length j add /j exch def
                out 0 j getinterval exit
            } ifelse
        } loop
    } bind def

    % Parse out AIs
    /ais  [] def
    /vals [] def
    barcode dup length 1 sub 1 exch getinterval
    {  % loop
        dup () eq {exit} if
        (\)) search pop
        exch pop
        exch (\() search {
            exch pop exch 3 1 roll
        } {
            () 3 1 roll
        } ifelse
        [ ais  aload pop counttomark 2 add index ] /ais exch def
        [ vals aload pop counttomark 1 add index expand ] /vals exch def
        pop pop
    } loop
    pop

    % Method selection
    {  % common exit

        % (01)9...(3103)...
        ais length 2 eq {
            ais 0 get (01) eq ais 1 get (3103) eq and {
                vals 0 get 0 1 getinterval (9) eq vals 1 get cvi 32767 le and {
                   (0100) false exit
                } if
            } if
        } if

        % (01)9...(3202)...
        ais length 2 eq {
            ais 0 get (01) eq ais 1 get (3202) eq and {
                vals 0 get 0 1 getinterval (9) eq vals 1 get cvi 9999 le and {
                    (0101) false exit
                } if
            } if
        } if

        % (01)9...(3203)...
        ais length 2 eq {
            ais 0 get (01) eq ais 1 get (3203) eq and {
                vals 0 get 0 1 getinterval (9) eq vals 1 get cvi 22767 le and {
                    (0101) false exit
                } if
            } if
        } if

        % (01)9...(310x/320x)...[(11/13/15/17)...]
        ais length dup 2 eq exch 3 eq or {
           /ai310x false 3100 1 3109 {10 4 string cvrs ais 1 get eq or} for def
           /ai320x false 3200 1 3209 {10 4 string cvrs ais 1 get eq or} for def
           ais length 3 eq {
               /aibad true [ (11) (13) (15) (17) ] {ais 2 get ne and} forall def
           } {
               /aibad false def
           } ifelse
           ais 0 get (01) eq ai310x ai320x or and aibad not and {
               ais length 3 eq {
                   vals 0 get 0 1 getinterval (9) eq
                   vals 1 get cvi 99999 le and
                   vals 2 get cvi 999999 le and {
                       ai310x ais 2 get (11) eq and { (0111000) false exit } if
                       ai320x ais 2 get (11) eq and { (0111001) false exit } if
                       ai310x ais 2 get (13) eq and { (0111010) false exit } if
                       ai320x ais 2 get (13) eq and { (0111011) false exit } if
                       ai310x ais 2 get (15) eq and { (0111100) false exit } if
                       ai320x ais 2 get (15) eq and { (0111101) false exit } if
                       ai310x ais 2 get (17) eq and { (0111110) false exit } if
                       ai320x ais 2 get (17) eq and { (0111111) false exit } if
                   } if
               } {
                   vals 0 get 0 1 getinterval (9) eq
                   vals 1 get cvi 99999 le and {
                       ai310x { (0111000) false exit } if
                       ai320x { (0111001) false exit } if
                   } if
               } ifelse
           } if
        } if

        % (01)9...(392x)...
        ais length 2 ge {
            /ai392x false 3920 1 3923 {10 4 string cvrs ais 1 get eq or} for def
            ais 0 get (01) eq ai392x and {
                vals 0 get 0 1 getinterval (9) eq { (01100) true exit } if
            } if
        } if

        % (01)9...(393x)...
        ais length 2 ge {
            /ai393x false 3930 1 3933 {10 4 string cvrs ais 1 get eq or} for def
            ais 0 get (01) eq ai393x and {
                vals 0 get 0 1 getinterval (9) eq { (01101) true exit } if
            } if
        } if

        % (01)...
        ais 0 get (01) eq { (1) true exit } if

        % Freeform
        (00) true exit

    } loop
    /gpfallow exch def
    /method exch def

    /conv12to40 {
        (0000000000000000000000000000000000000000) 40 string copy
        2 copy  0 10 getinterval exch 0 3 getinterval cvi 2 10 string cvrs dup length 10 exch sub exch putinterval
        2 copy 10 10 getinterval exch 3 3 getinterval cvi 2 10 string cvrs dup length 10 exch sub exch putinterval
        2 copy 20 10 getinterval exch 6 3 getinterval cvi 2 10 string cvrs dup length 10 exch sub exch putinterval
        2 copy 30 10 getinterval exch 9 3 getinterval cvi 2 10 string cvrs dup length 10 exch sub exch putinterval
        exch pop
    } bind def

    /conv13to44 {
        (00000000000000000000000000000000000000000000) 44 string copy
        2 copy 0 4 getinterval exch 0 1 getinterval cvi 2 4 string cvrs dup length 4 exch sub exch putinterval
        dup 3 -1 roll 1 12 getinterval conv12to40 4 exch putinterval
    } bind def

    /tobin {
        string dup length 1 sub 0 exch 1 exch {1 index exch 48 put} for
        dup 3 -1 roll 2 2 index length string cvrs dup length 2 index length exch sub exch putinterval
    } bind def

    method (00) eq {
        /cdf [] def
        /gpf [] def
    } if

    method (1) eq {
        /cdf vals 0 get 0 13 getinterval conv13to44 def
        /cdf [ cdf {48 sub} forall ] def
        /gpf [] def
        /ais  ais  1 ais  length 1 sub getinterval def
        /vals vals 1 vals length 1 sub getinterval def
    } if

    method (0100) eq {
        /cdf 55 string def
        cdf  0 vals 0 get 1 12 getinterval conv12to40 putinterval
        cdf 40 vals 1 get cvi 15 tobin putinterval
        /cdf [ cdf {48 sub} forall ] def
        /gpf [] def
        /ais [] def
        /vals [] def
    } if

    method (0101) eq {
        /cdf 55 string def
        cdf 0 vals 0 get 1 12 getinterval conv12to40 putinterval
        ais 1 get (3202) eq {
            vals 1 get cvi 15 tobin
        } {
            vals 1 get cvi 10000 add 15 tobin
        } ifelse
        cdf exch 40 exch putinterval
        /cdf [ cdf {48 sub} forall ] def
        /gpf [] def
        /ais [] def
        /vals [] def
    } if

    method length 7 eq {
        /cdf 76 string def
        cdf 0 vals 0 get 1 12 getinterval conv12to40 putinterval
        6 string dup 0 ais 1 get 3 1 getinterval putinterval
        dup vals 1 get 1 5 getinterval 1 exch putinterval cvi 20 tobin
        cdf exch 40 exch putinterval
        ais length 3 eq {
            vals 2 get
            dup 0 2 getinterval cvi 384 mul exch
            dup 2 2 getinterval cvi 1 sub 32 mul exch
            4 2 getinterval cvi add add
        } {
            38400
        } ifelse
        16 tobin cdf exch 60 exch putinterval
        /cdf [ cdf {48 sub} forall ] def
        /gpf [] def
        /ais [] def
        /vals [] def
    } if

    method (01100) eq {
        /cdf 42 string def
        cdf  0 vals 0 get 1 12 getinterval conv12to40 putinterval
        cdf 40 ais  1 get 3  1 getinterval cvi 2 tobin putinterval
        /cdf [ cdf {48 sub} forall ] def
        /gpf [ vals 1 get {} forall ] def
        /ais  ais  2 ais  length 2 sub getinterval def
        /vals vals 2 vals length 2 sub getinterval def
    } if

    method (01101) eq {
        /cdf 52 string def
        cdf  0 vals 0 get 1 12 getinterval conv12to40 putinterval
        cdf 40 ais  1 get 3  1 getinterval cvi 2 tobin putinterval
        cdf 42 vals 1 get 0  3 getinterval cvi 10 tobin putinterval
        /cdf [ cdf {48 sub} forall ] def
        /gpf [ vals 1 get dup length 3 sub 3 exch getinterval {} forall ] def
        /ais  ais  2 ais  length 2 sub getinterval def
        /vals vals 2 vals length 2 sub getinterval def
    } if

    % Variable length symbol field
    gpfallow {
        /vlf 2 array def
    } {
        /vlf [] def
    } ifelse

    % Pre-defined fixed length data field AIs
    % any AI whose prefix is not included in this table must be
    % terminated with "FNC1", even if it's fixed length
    /aifixed 23 dict def
    [
        0 1 4 {} for
    ] {
        (00) 2 string copy dup dup 1 5 -1 roll 48 add put aifixed 3 1 roll put
    } forall
    [
        11 1 20 {} for
        23
        31 1 36 {} for
        41
    ] {
        10 2 string cvrs dup aifixed 3 1 roll put
    } forall

    /fnc1 -1 def /lnumeric -2 def /lalphanumeric -3 def /liso646 -4 def

    /numeric <<
        0 1 119 {
            dup (00) 2 string copy dup 3 -1 roll 11 2 string cvrs
            dup length 2 exch sub exch putinterval
            dup 0 get 65 eq {dup 0 94 put} if
            dup 1 get 65 eq {dup 1 94 put} if
            exch 8 add
            (0000000) 7 string copy dup 3 -1 roll 2 7 string cvrs
            dup length 7 exch sub exch putinterval
        } for
        lalphanumeric (0000)
    >> def

    /alphanumeric <<
        48 1 57 {dup 43 sub 5 tobin} for
        fnc1 (01111)
        65 1 90 {dup 33 sub 6 tobin} for
        42 (111010)
        44 1 47 {dup 15 add 6 tobin} for
        lnumeric (000)
        liso646 (00100)
    >> def

    /iso646 <<
        48 1 57 {dup 43 sub 5 tobin} for
        fnc1 (01111)
        65 1 90 {dup 1 sub 7 tobin} for
        97 1 122 {dup 7 sub 7 tobin} for
        33 (11101000)
        34 (11101001)
        37 1 47 {dup 197 add 8 tobin} for
        58 1 63 {dup 187 add 8 tobin} for
        95 (11111011)
        32 (11111100)
        lnumeric (000)
        lalphanumeric (00100)
    >> def

    % Append the remaining AI data
    0 1 ais length 1 sub {
        /i exch def
        /ai ais i get def
        /val vals i get def
        gpf length ai length add val length add array
        dup 0 gpf putinterval
        dup gpf length ai [ exch {} forall ] putinterval
        dup gpf length ai length add val [ exch {} forall ] putinterval
        /gpf exch def
        i ais length 1 sub ne aifixed ai 0 2 getinterval known not and {  % Append FNC1
            gpf length 1 add array
            dup 0 gpf putinterval
            dup gpf length fnc1 put
            /gpf exch def
        } if
    } for

    % Calculate the number of bits remaining to the next valid symbol size
    /rembits {
        dup
        12 div ceiling cvi 12 mul            % Round up to multiple of 12
        48 2 copy lt {exch} if pop           % At least 4 symbols
        dup 12 idiv dup segments mod 1 eq {  % At least 2 symbols on last row of stacked symbol
            1 add 12 mul exch pop
        } {
            pop
        } ifelse
        exch sub
    } bind def

    /encode {
        dup /raw ne {exch get} {pop} ifelse
        [ exch {48 sub} forall ]
        dup length exch
        gpfenc exch j exch putinterval
        /j exch j add def
    } bind def

    % Pre-compute alphanumeric and numeric runlengths and position of next ISO646-only characters
    /numericruns [ gpf length {0} repeat 0 -1 ] def
    /alphanumericruns [ gpf length {0} repeat 0 ] def
    /nextiso646only [ gpf length {0} repeat 9999 ] def
    gpf length 1 sub -1 0 {
        /i exch def
        gpf i get
        (00) 2 string copy
        dup 0 gpf i get dup fnc1 eq {pop 94} if put
        i gpf length 1 sub lt {dup 1 gpf i 1 add get dup fnc1 eq {pop 94} if put} if
        numeric exch known {
            numericruns i numericruns i 2 add get 2 add put
        } {
            numericruns i 0 put
        } ifelse
        dup alphanumeric exch known {
            alphanumericruns i alphanumericruns i 1 add get 1 add put
        } {
            alphanumericruns i 0 put
        } ifelse
        dup iso646 exch known exch alphanumeric exch known not and {
            nextiso646only i 0 put
        } {
            nextiso646only i nextiso646only i 1 add get 1 add put
        } ifelse
    } for

    % Encode the general purpose field
    /gpfenc 252 array def
    /i 0 def /j 0 def /mode (numeric) def
    {  % loop
        i gpf length eq {exit} if
        {  % not a loop but common exit point

            mode (numeric) eq {
                i gpf length 2 sub le {
                    2 string
                    dup 0 gpf i get dup fnc1 eq {pop 94} if put
                    dup 1 gpf i 1 add get dup fnc1 eq {pop 94} if put
                    dup numeric exch known {
                        numeric encode
                        /i i 2 add def
                        exit
                    } if
                    pop
                    lalphanumeric numeric encode
                    /mode (alphanumeric) def
                    exit
                } {
                    gpf i get dup 48 lt exch 57 gt or {
                        lalphanumeric numeric encode
                        /mode (alphanumeric) def
                        exit
                    } if
                    /rem 12 1 add method length add vlf length add cdf length add j add rembits def
                    rem 4 ge rem 6 le and {  % C1 + 1 into 4 to 6 bits
                        (000000) 6 string copy 0 rem getinterval
                        dup gpf i get 47 sub 2 4 string cvrs
                        dup length 4 exch sub exch putinterval /raw encode
                        /i i 1 add def
                        exit
                    } {  % C1.FNC1
                        2 string dup 0 gpf i get put dup 1 94 put numeric encode
                        /i i 1 add def
                        exit
                    } ifelse
                } ifelse
            } if

            mode (alphanumeric) eq {
                gpf i get fnc1 eq {
                    fnc1 alphanumeric encode
                    /mode (numeric) def
                    /i i 1 add def
                    exit
                } if
                gpf i get dup iso646 exch known exch alphanumeric exch known not and {
                     liso646 alphanumeric encode
                     /mode (iso646) def
                     exit
                } if
                numericruns i get 6 ge {
                    lnumeric alphanumeric encode
                    /mode (numeric) def
                    exit
                } if
                numericruns i get dup 4 ge exch i add gpf length eq and {
                    lnumeric alphanumeric encode
                    /mode (numeric) def
                    exit
                } if
                gpf i get alphanumeric encode
                /i i 1 add def
                exit
            } if

            mode (iso646) eq {
                gpf i get fnc1 eq {
                    fnc1 iso646 encode
                    /mode (numeric) def
                    /i i 1 add def
                    exit
                } if
                numericruns i get 4 ge nextiso646only i get 10 ge and {
                    lnumeric iso646 encode
                    /mode (numeric) def
                    exit
                } if
                alphanumericruns i get 5 ge nextiso646only i get 10 ge and {
                    lalphanumeric iso646 encode
                    /mode (alphanumeric) def
                    exit
                } if
                gpf i get iso646 encode
                /i i 1 add def
                exit
            } if

        } loop
    } loop
    /gpf gpfenc 0 j getinterval def

    % Complete the variable length field and create pad
    1 12 add method length add vlf length add cdf length add gpf length add
    dup rembits dup array /pad exch def
    vlf length 0 ne {
        add 12 idiv
        dup 2 mod vlf exch 0 exch put
        14 le {0} {1} ifelse vlf exch 1 exch put
    } {
        pop pop
    } ifelse
    pad length 0 gt {
        0 5 pad length 1 sub {  % Fill with 00100
            /i exch def
            pad i [ 0 0 1 0 0 ] 0 pad length i sub 5 2 copy gt {exch} if pop getinterval putinterval
        } for
        mode (numeric) eq {  % Prefix shift from numeric to ASCII
            /pad [ 0 0 0 0 pad aload pop ] 0 pad length getinterval def
        } if
    } if

    % Concatinate fields
    /binval [
        linkage {1} {0} ifelse
        method {48 sub} forall
        vlf aload pop
        cdf aload pop
        gpf aload pop
        pad aload pop
    ] def
    /datalen binval length 12 idiv def

    /ncr {  % n r
        2 copy sub 2 copy lt {exch} if  % n r maxd mind
        1 1 5 3 roll  % mind j=1 v=1 n maxd
        1 add -1 exch {  % mind j v  n -1 maxd+1
            mul  % mind j v*i
            1 index 3 index le {
                1 index idiv exch 1 add exch
            } if
        } for
        {  % mind j v
            1 index 3 index gt {exit} if
            1 index idiv exch 1 add exch
        } loop
        exch pop exch pop
    } bind def

    /getRSSwidths {
        /oe exch def
        /el exch def
        /mw exch def
        /nm exch def
        /val exch def
        /out el array def
        /mask 0 def
        0 1 el 2 sub {
            /bar exch def
            /ew 1 def
            /mask mask 1 bar bitshift or def {
                /sval nm ew sub 1 sub el bar sub 2 sub ncr def
                oe mask 0 eq and nm ew sub el 2 mul sub bar 2 mul add -2 ge and {
                    /sval sval nm ew sub el sub bar add el bar sub 2 sub ncr sub def
                } if
                el bar sub 2 gt {
                    /lval 0 def
                    nm ew sub el sub bar add 2 add -1 mw 1 add {
                        nm exch sub ew sub 1 sub el bar sub 3 sub ncr
                        /lval exch lval add def
                    } for
                    /sval sval lval el bar sub 1 sub mul sub def
                } {
                    nm ew sub mw gt {/sval sval 1 sub def} if
                } ifelse
                /val val sval sub def
                val 0 lt {exit} if
                /ew ew 1 add def
                /mask mask 1 bar bitshift not and def
            } loop
            /val val sval add def
            /nm nm ew sub def
            out bar ew put
        } for
        out el 1 sub nm put
        out
    } bind def

    /tab174 [
        347   0     12 5   7 2  87  4
        1387  348   10 7   5 4  52  20
        2947  1388  8  9   4 5  30  52
        3987  2948  6  11  3 6  10  104
        4191  3988  4  13  1 8  1   204
    ] def

    /dxw datalen array def

    0 1 datalen 1 sub {

        /x exch def

        /d binval x 12 mul 12 getinterval def
        /d 0 0 1 11 {/j exch def 2 11 j sub exp cvi d j get mul add} for def

        /j 0 def {
            d tab174 j get le {
                tab174 j 1 add 7 getinterval {} forall
                /dte exch def /dto exch def
                /dmwe exch def /dmwo exch def
                /dele exch def /delo exch def
                /dgs exch def
                exit
            } if
            /j j 8 add def
        } loop

        /dwo d dgs sub dte idiv delo dmwo 4 true  getRSSwidths def
        /dwe d dgs sub dte mod  dele dmwe 4 false getRSSwidths def

        /dw 8 array def
        x 2 mod 0 eq {
            0 1 3 {
                /j exch def
                dw 7 j 2 mul sub dwo j get put
                dw 6 j 2 mul sub dwe j get put
            } for
        } {
            0 1 3 {
                /j exch def
                dw j 2 mul dwo j get put
                dw j 2 mul 1 add dwe j get put
            } for
        } ifelse

        dxw x dw put

    } for

    /finderwidths [
        1 8 4 1 1    1 1 4 8 1
        3 6 4 1 1    1 1 4 6 3
        3 4 6 1 1    1 1 6 4 3
        3 2 8 1 1    1 1 8 2 3
        2 6 5 1 1    1 1 5 6 2
        2 2 9 1 1    1 1 9 2 2
    ] def

    /finderseq [
        [0 1]
        [0 3 2]
        [0 5 2 7]
        [0 9 2 7 4]
        [0 9 2 7 6 11]
        [0 9 2 7 8 11 10]
        [0 1 2 3 4 5 6 7]
        [0 1 2 3 4 5 6 9 8]
        [0 1 2 3 4 5 6 9 10 11]
        [0 1 2 3 4 7 6 9 8 11 10]
    ] def

    /seq finderseq datalen 2 sub 2 idiv get def
    /fxw seq length array def
    0 1 seq length 1 sub {
        /x exch def
        fxw x finderwidths seq x get 5 mul 5 getinterval put
    } for

    /checkweights [
        -1   -1   -1   -1   -1   -1   -1   -1   % A1L
        77   96   32   81   27   9    3    1    % A1R
        20   60   180  118  143  7    21   63   % A2L
        205  209  140  117  39   13   145  189  % A2R
        193  157  49   147  19   57   171  91   % B1L
        132  44   85   169  197  136  186  62   % B1R
        185  133  188  142  4    12   36   108  % B2L
        50   87   29   80   97   173  128  113  % B2R
        150  28   84   41   123  158  52   156  % C1L
        166  196  206  139  187  203  138  46   % C1R
        76   17   51   153  37   111  122  155  % C2L
        146  119  110  107  106  176  129  43   % C2R
        16   48   144  10   30   90   59   177  % D1L
        164  125  112  178  200  137  116  109  % D1R
        70   210  208  202  184  130  179  115  % D2L
        190  204  68   93   31   151  191  134  % D2R
        148  22   66   198  172  94   71   2    % E1L
        40   154  192  64   162  54   18   6    % E1R
        120  149  25   75   14   42   126  167  % E2L
        175  199  207  69   23   78   26   79   % E2R
        103  98   83   38   114  131  182  124  % F1L
        159  53   88   170  127  183  61   161  % F1R
        55   165  73   8    24   72   5    15   % F2L
        89   100  174  58   160  194  135  45   % F2R
    ] def

    /checkweightseq [
       seq {16 mul checkweights exch 16 getinterval aload pop} forall
    ] dup length 8 sub 8 exch getinterval def

    /widths [
        dxw {{} forall} forall
    ] def

    /checksum 0 def
    0 1 widths length 1 sub {
        /i exch def
        /checksum checksum widths i get checkweightseq i get mul add def
    } for
    /checksum checksum 211 mod datalen 3 sub 211 mul add def

    /i 0 def {
        checksum tab174 i get le {
            tab174 i 1 add 7 getinterval {} forall
            /cte exch def /cto exch def
            /cmwe exch def /cmwo exch def
            /cele exch def /celo exch def
            /cgs exch def
            exit
        } if
        /i i 8 add def
    } loop

    /cwo checksum cgs sub cte idiv celo cmwo 4 true  getRSSwidths def
    /cwe checksum cgs sub cte mod  cele cmwe 4 false getRSSwidths def

    /cw 8 array def
    0 1 3 {
        /i exch def
        cw i 2 mul cwo i get put
        cw i 2 mul 1 add cwe i get put
    } for

    22 array dup dup
    0 cw put 1 dxw putinterval 0 datalen 1 add getinterval
    /dxw exch def
    /datalen dxw length def

    % Encode row runlengths
    /rows datalen segments div ceiling cvi array def
    /numrows rows length def
    0 1 numrows 1 sub {
        /r exch def
        mark
        segments 4 mod 0 ne r 2 mod 1 eq and {0} if
        1 1
        0 1 segments 1 sub {
            /pos exch r segments mul add def
            pos datalen lt {
                dxw pos get {} forall
                pos 2 mod 0 eq {fxw pos 2 idiv get {} forall} if
            } if
        } for
        1 1
        counttomark array astore rows exch r exch put pop
    } for

    format (expandedstacked) ne {  % Linear

        % Remove leading space
        /sbs rows 0 get dup length 1 sub 1 exch getinterval def

        /sbs [
            1
            0 1 datalen 1 sub {
                /i exch def
                dxw i get {} forall
                i 2 mod 0 eq {fxw i 2 idiv get {} forall} if
            } for
            1 1
        ] def

        <<
        /ren //renlinear
        /sbs sbs
        /bhs [sbs length 1 add 2 idiv {height} repeat]
        /bbs [sbs length 1 add 2 idiv {0} repeat]
        /opt options
        >>

        dontdraw not //renlinear if

    } {  % expandedstacked

        /seps numrows array def
        0 1 numrows 1 sub {

            /r exch def
            /row rows r get def

            % Sample runlengths into bitmap
            mark
            0 2 row length 1 sub {
                /i exch def
                row i get {0} repeat
                i row length 1 sub lt {row i 1 add get {1} repeat} if
            } for
            counttomark array astore /row exch def pop

            % Derive the separator pattern
            /sep [ row {1 exch sub} forall ] def
            sep 0 [ 0 0 0 0 ] putinterval
            sep row length 4 sub [ 0 0 0 0 ] putinterval
            /finderpos [  % Finder pattern module positions
                19 98 row length 13 sub {} for
                68 98 row length 13 sub {} for
            ] def
            finderpos {
                dup 14 add 1 exch {
                    /i exch def
                    row i get 0 eq {
                        row i 1 sub get 1 eq {
                            1
                        } {
                            sep i 1 sub get 0 eq {1} {0} ifelse
                        } ifelse
                    } {
                        0
                    } ifelse
                    sep exch i exch put
                } for
            } forall

            % For even segment-pair symbols reverse alternate rows
            segments 4 mod 0 eq r 2 mod 1 eq and {
                rows r get length rows 0 get length ne  % Except partial width last row
                finderpos length 2 mod 1 eq and {       % with odd finders
                    /row [ 0 row aload pop ] def
                    /sep [ 0 sep aload pop ] def
                } {
                    row length 1 sub -1 0 {row exch get} for
                    row astore pop
                    sep length 1 sub -1 0 {sep exch get} for
                    sep astore pop
                } ifelse
            } if

            rows r row put
            seps r sep put

        } for

        % Extend last row and separator to fill width of symbol
        /pixx rows 0 get length def
        [ pixx {0} repeat ] dup 0 rows numrows 1 sub get putinterval
        rows exch numrows 1 sub exch put
        [ pixx {0} repeat ] dup 0 seps numrows 1 sub get putinterval
        seps exch numrows 1 sub exch put

        % Middle separator pattern
        /sep [ pixx 2 idiv 1 add { 0 1 } repeat ] 0 pixx getinterval def
        sep 0 [0 0 0 0] putinterval
        sep pixx 4 sub [0 0 0 0] putinterval

        % Compose the symbol
        /pixs [
            0 1 numrows 1 sub {
                /r exch def
                r 0 ne {
                    seps r get aload pop
                } if
                barxmult {rows r get aload pop} repeat
                r numrows 1 sub ne {
                    seps r get aload pop
                    sep aload pop
                } if
            } for
        ] def

        <<
        /ren //renmatrix
        /pixs pixs
        /pixx pixx
        /pixy pixs length pixx idiv
        /height pixs length pixx idiv 72 div
        /width pixx 72 div
        /opt options
        >>

        dontdraw not //renmatrix if

    } ifelse

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarexpanded dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarexpanded--

% --BEGIN ENCODER databarexpandedstacked--
% --REQUIRES preamble raiseerror renlinear renmatrix databarexpanded--
% --DESC: GS1 DataBar Expanded Stacked
% --EXAM: (01)95012345678903(3103)000123
% --EXOP: segments=4
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databarexpandedstacked 0.0 2019110800 56861 53295
%%BeginData:         45 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /databarexpanded dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarexpandedstacked {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Get the result of encoding with databarexpanded with format=expandedstacked
    options (dontdraw) true put
    options (format) (expandedstacked) put

    /args barcode options //databarexpanded exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarexpandedstacked dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarexpandedstacked--

% --BEGIN ENCODER gs1northamericancoupon--
% --REQUIRES preamble raiseerror renlinear renmatrix databarexpanded databarexpandedstacked--
% --DESC: GS1 North American Coupon
% --EXAM: (8110)106141416543213500110000310123196000
% --EXOP: includetext segments=8
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp gs1northamericancoupon 0.0 2019110800 70200 76769
%%BeginData:        135 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /databarexpandedstacked dup /uk.co.terryburton.bwipp findresource put
%psc begin
/gs1northamericancoupon {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    /includetext false def  % Enable/disable coupon text
    /coupontextfont /Helvetica def
    /coupontextsize 9 def
    /coupontextxoffset (unset) def
    /coupontextyoffset (unset) def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /coupontextfont coupontextfont cvlit def
    /coupontextsize coupontextsize cvr def
    coupontextxoffset (unset) ne {/coupontextxoffset coupontextxoffset cvr def} if
    coupontextyoffset (unset) ne {/coupontextyoffset coupontextyoffset cvr def} if

    % Expand ordinals of the form ^NNN to ASCII
    /expand {
        /in exch def
        /out in length string def
        /j 0 def
        in
        { % loop
            (^) search {
                dup out exch j exch putinterval
                length j add 1 add /j exch def
                pop
                dup 0 3 getinterval cvi out exch j 1 sub exch put
                dup length 3 sub 3 exch getinterval
            } {
                dup out exch j exch putinterval
                length j add /j exch def
                out 0 j getinterval exit
            } ifelse
        } loop
    } bind def

    % Parse out AIs
    /ais  [] def
    /vals [] def
    barcode dup length 1 sub 1 exch getinterval
    {  % loop
        dup () eq {exit} if
        (\)) search pop
        exch pop
        exch (\() search {
            exch pop exch 3 1 roll
        } {
            () 3 1 roll
        } ifelse
        [ ais  aload pop counttomark 2 add index ] /ais exch def
        [ vals aload pop counttomark 1 add index expand ] /vals exch def
        pop pop
    } loop
    pop

    % Validate the AI structure
    ais length 1 ne {
      /bwipp.gs1northamericancouponBadAIStructure (A GS1 North American Coupon should consist of a single AI (8110)) //raiseerror exec
    } if
    ais 0 get (8110) ne {
      /bwipp.gs1northamericancouponBadAIStructure (A GS1 North American Coupon should consist of a single AI (8110)) //raiseerror exec
    } if

    % Parse out the Company Prefix and Offer Code
    /val vals 0 get def
    /vli val 0 get 48 sub def
    vli 0 lt vli 6 gt or {
      /bwipp.gs1northamericancouponBadVLI (The AI (8110) data should start with a Company Prefix length indicator in the range 0 to 6) //raiseerror exec
    } if
    /gcp val 1 vli 6 add getinterval def
    /cod val vli 7 add 6 getinterval def
    /coupontext gcp length 7 add string def
    coupontext 0 gcp putinterval
    coupontext gcp length (-) putinterval
    coupontext gcp length 1 add cod putinterval

    % Get the result of encoding with databarexpandedstacked
    options (dontdraw) true put

    /args barcode options //databarexpandedstacked exec def

    % Add the coupon text
    includetext {
        coupontextxoffset (unset) eq {
            /coupontextxoffset 0 def
        } if
        coupontextyoffset (unset) eq {
            /coupontextyoffset args (height) get 72 mul 3 add def
        } if
        args (txt) known {
            /txt args (txt) get def
            /newtxt txt length 1 add array def
            newtxt 0 txt putinterval
            newtxt newtxt length 1 sub [coupontext coupontextxoffset coupontextyoffset coupontextfont coupontextsize] put
            args (txt) newtxt put
        } {
            args (txt) [ [coupontext coupontextxoffset coupontextyoffset coupontextfont coupontextsize] ] put
        } ifelse
    } if

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /gs1northamericancoupon dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER gs1northamericancoupon--

% --BEGIN ENCODER pharmacode--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Pharmaceutical Binary Code
% --EXAM: 117480
% --EXOP: showborder
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp pharmacode 0.0 2019110800 54994 54752
%%BeginData:         93 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/pharmacode {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /height 8 2.835 mul 72 div def
    /nwidth 0.5 2.835 mul def
    /wwidth 1.5 2.835 mul def
    /swidth 1.0 2.835 mul def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /height height cvr def
    /nwidth nwidth cvr def
    /wwidth wwidth cvr def
    /swidth swidth cvr def

    % Validate the input
    barcode length 1 lt barcode length 6 gt or {
        /bwipp.pharmacodeBadLength (Pharmacode must be 1 to 6 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.pharmacodeBadCharacter (Pharmacode must contain only digits) //raiseerror exec
        } if
    } forall
    barcode cvi dup 3 lt exch 131070 gt or {
        /bwipp.pharmacodeBadValue (Pharmacode value must be between 3 and 131070) //raiseerror exec
    } if

    % Create the human readable text
    /txt barcode length array def
    0 1 barcode length 1 sub {
        /i exch def
        txt i [barcode i 1 getinterval 0 0 () 0] put
    } for

    % Convert the integer into the paramacode string
    /barcode barcode cvi 1 add 2 17 string cvrs def
    /barcode barcode 1 barcode length 1 sub getinterval def

    /barlen barcode length def  % Length of the code
    /sbs barlen 2 mul array def

    0 1 barlen 1 sub {
        /i exch def
        /enc barcode i 1 getinterval def
        enc (0) eq {
            sbs i 2 mul nwidth put
        } {
            sbs i 2 mul wwidth put
        } ifelse
        sbs i 2 mul 1 add swidth put
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /sbs sbs
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    /txt txt
    /textxalign (center)
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /pharmacode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER pharmacode--

% --BEGIN ENCODER pharmacode2--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Two-track Pharmacode
% --EXAM: 117480
% --EXOP: includetext showborder
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp pharmacode2 0.0 2019110800 55769 55450
%%BeginData:         98 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/pharmacode2 {

    20 dict begin

    /options exch def           % We are given an option string
    /barcode exch def           % We are given a barcode string

    /dontdraw false def
    /includetext false def      % Enable/disable text
    /height 4 def               % Height of short bars in millimetres

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /height height cvr def

    % Validate the input
    barcode length 1 lt barcode length 8 gt or {
        /bwipp.pharmacode2BadLength (Two-track Pharmacode must be 1 to 6 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.pharmacode2badCharacter (Two-track Pharmacode must contain only digits) //raiseerror exec
        } if
    } forall
    barcode cvi dup 4 lt exch 64570080 gt or {
        /bwipp.pharmacode2badValue (Two-track Pharmacode value must be between 4 and 64570080) //raiseerror exec
    } if

    % Create the human readable text
    /txt barcode length array def
    0 1 barcode length 1 sub {
        /i exch def
        txt i [barcode i 1 getinterval 0 0 () 0] put
    } for

    /encstr 16 string def
    /bhs 16 array def
    /bbs 16 array def
    /sbs 32 array def
    /bar 1 25.4 div height mul def     % bar height (mm)
    /spc 1 25.4 div 72 mul def         % bar width & spacing (1mm)

    % Convert number into a base3 representation
    /i 15 def
    /val barcode cvi def
    {  % loop
        val 0 eq {exit} if
        val 3 mod dup
        [3 1 2] exch get val exch sub 3 idiv /val exch def
        encstr i [2 0 1] 4 -1 roll get put
        /i i 1 sub def
    } loop
    /encstr encstr i 1 add 15 i sub getinterval def

    % Generate the bar pattern
    0 1 encstr length 1 sub {
        /i exch def
        encstr i get dup
        bhs i bar [1 1 2] 5 -1 roll get mul put
        bbs i [0 bar 0] 4 -1 roll get put
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /bhs bhs
    /bbs bbs
    /sbs [encstr length 2 mul {spc} repeat]
    /txt txt
    /textxalign (center)
    /textyoffset 4
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /pharmacode2 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER pharmacode2--

% --BEGIN ENCODER code2of5--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Code 25
% --EXAM: 01234567
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp code2of5 0.0 2019110800 63635 63209
%%BeginData:        152 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code2of5 {

    20 dict begin                 % Confine variable to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /includecheck false def
    /validatecheck false def
    /includetext false def   % Enable/disable text
    /includecheckintext false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def
    /version (industrial) def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Validate input
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.code2of5badCharacter (Code 25 must contain only digits) //raiseerror exec
        } if
    } forall

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 0 def
    0 1 barlen 1 sub {
        /i exch def
        /checksum checksum barcode i get 48 sub barlen i sub 2 mod 0 ne {3 mul} if add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    validatecheck {
        barcode barlen get checksum 48 add ne {
            /bwipp.code2of5badCheckDigit (Incorrect Code 25 check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
        /includecheck true def
    } if

    % Create an array containing the character mappings
    /versions <<
    /industrial
        [ (1111313111) (3111111131) (1131111131) (3131111111)
          (1111311131) (3111311111) (1131311111) (1111113131)
          (3111113111) (1131113111) (313111)     (31113)
        ]
    /iata
        [ (1111313111) (3111111131) (1131111131) (3131111111)
          (1111311131) (3111311111) (1131311111) (1111113131)
          (3111113111) (1131113111) (1111)       (311)
        ]
    /matrix
        [ (113311) (311131) (131131) (331111) (113131) (313111)
          (133111) (111331) (311311) (131311) (311111) (31111)
        ]
    /coop
        [ (331111) (111331) (113131) (113311) (131131) (131311)
          (133111) (311131) (311311) (313111) (3131)   (133)
        ]
    /datalogic
        [ (113311) (311131) (131131) (331111) (113131) (313111)
          (133111) (111331) (311311) (131311) (1111)   (311)
        ]
    >> def
    versions version known not {
        /bwipp.code2of5badVersion (Unrecognised Code 25 version) //raiseerror exec
    } if
    /encs versions version get def

    /cs encs 0 get length def
    /cw 0 encs 0 get {48 sub add} forall def
    /ss encs dup length 2 sub get length def
    /sw 0 encs dup length 2 sub get {48 sub add} forall def

    % Create a string of the available characters
    /barchars (0123456789) def

    /sbs barlen includecheck {1 add} if cs mul ss add ss add string def
    /txt barlen includecheck {1 add} if array def

    % Put the start character
    sbs 0 encs 10 get putinterval
    0 1 barlen 1 sub {
        /i exch def
        % Lookup the encoding for the each barcode character
        barcode i 1 getinterval barchars exch search
        pop                                 % Discard true leaving pre
        length /indx exch def               % indx is the length of pre
        pop pop                             % Discard seek and post
        /enc encs indx get def              % Get the indxth encoding
        sbs i cs mul ss add enc putinterval % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i cw mul sw add textyoffset textfont textsize] put
    } for

    % Put the checksum and end characters
    includecheck {
        sbs barlen cs mul ss add encs checksum get putinterval
        sbs barlen cs mul cs add ss add encs 11 get putinterval
        includecheckintext {
            txt barlen [barchars checksum 1 getinterval barlen cw mul sw add textyoffset textfont textsize] put
        } {
            txt barlen [( ) barlen cw mul sw add textyoffset textfont textsize] put
        } ifelse
    } {
        sbs barlen cs mul ss add encs 11 get putinterval
    } ifelse

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code2of5 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code2of5--

% --BEGIN ENCODER industrial2of5--
% --REQUIRES preamble raiseerror renlinear code2of5--
% --DESC: Industrial 2 of 5
% --EXAM: 01234567
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp industrial2of5 0.0 2019110800 51614 55042
%%BeginData:         57 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code2of5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/industrial2of5 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Get the result of encoding with code2of5 with version=industrial
    options (dontdraw) true put
    options (version) (industrial) put

    /args barcode options //code2of5 exec def

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /industrial2of5 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER industrial2of5--

% --BEGIN ENCODER iata2of5--
% --REQUIRES preamble raiseerror renlinear code2of5--
% --DESC: IATA 2 of 5
% --EXAM: 01234567
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp iata2of5 0.0 2019110800 51584 55018
%%BeginData:         57 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code2of5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/iata2of5 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Get the result of encoding with code2of5 with version=iata
    options (dontdraw) true put
    options (version) (iata) put

    /args barcode options //code2of5 exec def

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /iata2of5 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER iata2of5--

% --BEGIN ENCODER matrix2of5--
% --REQUIRES preamble raiseerror renlinear code2of5--
% --DESC: Matrix 2 of 5
% --EXAM: 01234567
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp matrix2of5 0.0 2019110800 51594 55026
%%BeginData:         57 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code2of5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/matrix2of5 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Get the result of encoding with code2of5 with version=matrix
    options (dontdraw) true put
    options (version) (matrix) put

    /args barcode options //code2of5 exec def

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /matrix2of5 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER matrix2of5--

% --BEGIN ENCODER coop2of5--
% --REQUIRES preamble raiseerror renlinear code2of5--
% --DESC: COOP 2 of 5
% --EXAM: 01234567
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp coop2of5 0.0 2019110800 51584 55018
%%BeginData:         57 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code2of5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/coop2of5 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Get the result of encoding with code2of5 with version=coop
    options (dontdraw) true put
    options (version) (coop) put

    /args barcode options //code2of5 exec def

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /coop2of5 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER coop2of5--

% --BEGIN ENCODER datalogic2of5--
% --REQUIRES preamble raiseerror renlinear code2of5--
% --DESC: Datalogic 2 of 5
% --EXAM: 01234567
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp datalogic2of5 0.0 2019110800 51609 55038
%%BeginData:         57 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code2of5 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/datalogic2of5 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Get the result of encoding with code2of5 with version=datalogic
    options (dontdraw) true put
    options (version) (datalogic) put

    /args barcode options //code2of5 exec def

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /datalogic2of5 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER datalogic2of5--

% --BEGIN ENCODER code11--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Code 11
% --EXAM: 0123456789
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp code11 0.0 2019110800 64819 64410
%%BeginData:        160 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code11 {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includecheck false def
    /validatecheck false def
    /includetext false def
    /includecheckintext false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create an array containing the character mappings
    /encs
    [ (111131) (311131) (131131) (331111) (113131)
      (313111) (133111) (111331) (311311) (311111)
      (113111) (113311)
    ] def

    % Create a string of the available characters
    /barchars (0123456789-) def
    /charvals 11 dict def
    0 1 10 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.code11badCharacter (Code 11 must contain only digits and dashes) //raiseerror exec
        } if
    } for

    /barlen barcode length def
    validatecheck {
        barlen 11 eq {
            /bwipp.code11badLength (Code 11 cannot be 11 characters using check digits) //raiseerror exec
        } if
        /barlen barlen barlen 10 le {1} {2} ifelse sub def
    } if

    /numchecks includecheck validatecheck or {barlen 10 ge {2} {1} ifelse} {0} ifelse def
    /checksum1 0 def /checksum2 0 def
    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        /checksum1 checksum1 barlen i sub 1 sub 10 mod 1 add indx mul add def
        /checksum2 checksum2 barlen i sub 9 mod 1 add indx mul add def
    } for
    /checksum1 checksum1 11 mod def
    /checksum2 checksum2 checksum1 add 11 mod def
    validatecheck {
        numchecks 1 eq {
            barcode barlen get barchars checksum1 get ne {
                /bwipp.code11badCheckDigit (Incorrect Code 11 check digit provided) //raiseerror exec
            } if
        } {
            barcode barlen get barchars checksum1 get ne
            barcode barlen 1 add get barchars checksum2 get ne or {
                /bwipp.code11badCheckDigits (Incorrect Code 11 check digits provided) //raiseerror exec
            } if
        } ifelse
        /barcode barcode 0 barlen getinterval def
        /includecheck true def
    } if

    /sbs barlen numchecks add 6 mul 12 add string def
    /txt barlen numchecks add array def

    % Put the start character
    sbs 0 encs 11 get putinterval

    /xpos 8 def
    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        /enc encs indx get def
        sbs i 6 mul 6 add enc putinterval
        txt i [barcode i 1 getinterval xpos textyoffset textfont textsize] put
        0 1 5 {       % xpos+=width of the character
            /xpos exch enc exch get 48 sub xpos add def
        } for
    } for

    % Put the checksum and end characters
    includecheck {
        barlen 10 ge {
            sbs barlen 6 mul 6 add encs checksum1 get putinterval
            sbs barlen 6 mul 12 add encs checksum2 get putinterval
            includecheckintext {
                txt barlen [barchars checksum1 1 getinterval xpos textyoffset textfont textsize] put
                /enc encs checksum1 get def
                0 1 5 {       % xpos+=width of the character
                    /xpos exch enc exch get 48 sub xpos add def
                } for
                txt barlen 1 add [barchars checksum2 1 getinterval xpos textyoffset textfont textsize] put
            } {
                txt barlen [() xpos textyoffset textfont textsize] put
                txt barlen 1 add [() xpos textyoffset textfont textsize] put
            } ifelse
            sbs barlen 6 mul 18 add encs 11 get putinterval
        } {
            sbs barlen 6 mul 6 add encs checksum1 get putinterval
            includecheckintext {
                txt barlen [barchars checksum1 1 getinterval xpos textyoffset textfont textsize] put
            } {
                txt barlen [() xpos textyoffset textfont textsize] put
            } ifelse
            sbs barlen 6 mul 12 add encs 11 get putinterval
        } ifelse
    } {
        sbs barlen 6 mul 6 add encs 11 get putinterval
    } ifelse

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code11 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code11--

% --BEGIN ENCODER bc412--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: BC412
% --EXAM: BC412
% --EXOP: semi includetext includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp bc412 0.0 2019110800 60392 60057
%%BeginData:        150 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/bc412 {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /includecheck false def
    /validatecheck false def
    /includetext false def
    /includecheckintext false def
    /includestartstop false def
    /semi false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    semi {
        /includecheck true def
        /includestartstop true def
    } if

    % Create a string of the available characters
    /barchars (0R9GLVHA8EZ4NTS1J2Q6C7DYKBUIX3FWP5M) def
    /charvals 35 dict def
    0 1 34 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.bc412badCharacter (BC412 must contain only digits and capital letters except O) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 0 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 35 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.bc412badCheckDigit (Incorrect BC412 check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
        /includecheck true def
    } if

    % Create an array containing the character mappings
    /encs
    [ (11111115) (13111212) (11131113) (12111213) (12121311)
      (13131111) (12111312) (11131212) (11121411) (11151111)
      (15111111) (11111511) (12131211) (13121112) (13111212)
      (11111214) (12121113) (11111313) (13111113) (11121213)
      (11141112) (11121312) (11141211) (14121111) (12121212)
      (11131311) (13121211) (12111411) (14111211) (11111412)
      (12111114) (14111112) (12141111) (11121114) (12131112)
      (12) (111)
    ] def

    /sbs barlen 1 add 8 mul 5 add string def
    includecheck {
        /txt barlen 1 add array def
    } {
        /txt barlen array def
    } ifelse

    % Put the start character
    includestartstop {
        sbs 0 encs 35 get putinterval
        /pos 2 def
        /txtpos 3 def
    } {
        /pos 0 def
        /txtpos 0 def
    } ifelse

    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        sbs pos encs indx get putinterval
        txt i [barcode i 1 getinterval i 12 mul txtpos add textyoffset textfont textsize] put
        /pos pos 8 add def
    } for

    % Put the checksum
    includecheck {
        sbs pos encs checksum get putinterval
        includecheckintext {
            txt barlen [barchars checksum 1 getinterval barlen 12 mul txtpos add textyoffset textfont textsize] put
        } {
            txt barlen [() barlen 12 mul txtpos add textyoffset textfont textsize] put
        } ifelse
        /pos pos 8 add def
    } if

    % Put the stop character
    includestartstop {
        sbs pos encs 36 get putinterval
        /pos pos 2 add def
    } if

    % Return the arguments
    /sbs sbs 0 pos getinterval def
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /bc412 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER bc412--

% --BEGIN ENCODER rationalizedCodabar--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Codabar
% --EXAM: A0123456789B
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp rationalizedCodabar 0.0 2019110800 65419 64822
%%BeginData:        158 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/rationalizedCodabar {

    20 dict begin                    % Confine variables to local scope

    /options exch def          % We are given an option string
    /barcode exch def          % We are given a barcode string

    /dontdraw false def
    /altstartstop false def
    /includecheck false def     % Enable/disable checkdigit
    /validatecheck false def
    /includetext false def      % Enable/disable text
    /includecheckintext false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create an array containing the character mappings
    /encs
    [ (11111331) (11113311) (11131131) (33111111) (11311311)
      (31111311) (13111131) (13113111) (13311111) (31131111)
      (11133111) (11331111) (31113131) (31311131) (31313111)
      (11313131) (11331311) (13131131) (11131331) (11133311)
    ] def

    % Create a string of the available characters
    altstartstop {
        /barchars (0123456789-$:/.+TN*E) def
    } {
        /barchars (0123456789-$:/.+ABCD) def
    } ifelse
    /charvals 20 dict def
    0 1 19 {charvals exch dup barchars exch 1 getinterval exch put} for
    /bodyvals 16 dict def
    0 1 15 {bodyvals exch dup barchars exch 1 getinterval exch put} for
    /ssvals 4 dict def
    16 1 19 {ssvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    barcode 0 1 getinterval ssvals exch known not
    barcode barcode length 1 sub 1 getinterval ssvals exch known not or {
        altstartstop {
            /bwipp.rationalizedCodabarBadAltStartStop (Codabar start and stop characters must be one of E N T or *) //raiseerror exec
        } {
            /bwipp.rationalizedCodabarBadStartStop (Codabar start and stop characters must be one of A B C or D) //raiseerror exec
        } ifelse
    } if
    1 1 barcode length 2 sub {
        barcode exch 1 getinterval bodyvals exch known not {
            /bwipp.rationalizedCodabarBadCharacter (Codabar body must contain only digits and symbols - $ : / . +) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 0 def
    0 1 barlen 2 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    barcode barcode length 1 sub 1 getinterval charvals exch get
    checksum add /checksum exch def
    /checksum 16 checksum 16 mod sub 16 mod def
    validatecheck {
        barcode barlen 1 sub get barchars checksum get ne {
            /bwipp.rationalizedCodabarBadCheckDigit (Incorrect Codabar check digit provided) //raiseerror exec
        } if
        barlen string
        dup 0 barcode 0 barlen 1 sub getinterval putinterval
        dup barlen 1 sub barcode barlen 1 getinterval putinterval
        /barcode exch def
        /includecheck true def
    } if

    /sbs barlen includecheck {1 add} if 8 mul string def
    /txt barlen includecheck {1 add} if array def

    /xpos 0 def
    0 1 barlen 2 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        /enc encs indx get def
        sbs i 8 mul enc putinterval  % Put encoded digit into sbs
        txt i [barcode i 1 getinterval xpos textyoffset textfont textsize] put
        0 1 7 {       % xpos+=width of the character
            /xpos exch enc exch get 48 sub xpos add def
        } for
    } for

    % Put the checksum character and stop character
    includecheck {
        % Put the checksum character
        sbs barlen 8 mul 8 sub encs checksum get putinterval
        includecheckintext {
            txt barlen 1 sub [barchars checksum 1 getinterval xpos textyoffset textfont textsize] put
        } {
            txt barlen 1 sub [( ) xpos textyoffset textfont textsize] put
        } ifelse
        0 1 7 {       % xpos+=width of the character
            /xpos exch encs checksum get exch get 48 sub xpos add def
        } for
        % Put the end character
        /indx charvals barcode barlen 1 sub 1 getinterval get def
        /enc encs indx get def            % Get the indxth encoding
        sbs barlen 8 mul enc putinterval  % Put encoded digit into sbs
        txt barlen [barcode barlen 1 sub 1 getinterval xpos textyoffset textfont textsize] put
    } {
        % Put the end character
        /indx charvals barcode barlen 1 sub 1 getinterval get def
        /enc encs indx get def                  % Get the indxth encoding
        sbs barlen 8 mul 8 sub enc putinterval  % Put encoded digit into sbs
        txt barlen 1 sub [barcode barlen 1 sub 1 getinterval xpos textyoffset textfont textsize] put
    } ifelse

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /rationalizedCodabar dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER rationalizedCodabar--

% --BEGIN ENCODER onecode--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: USPS Intelligent Mail
% --EXAM: 0123456709498765432101234567891
% --EXOP: barcolor=FF0000
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp onecode 0.0 2019110800 99045 98718
%%BeginData:        337 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/onecode {

    20 dict begin

    /options exch def              % We are given an option string
    /barcode exch def              % We are given a barcode string

    /dontdraw false def
    /height 0.15 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /height height cvr def

    /barlen barcode length def

    % Create the human readable text
    /txtdict <<
        2 dup
        5 dup
        barcode 5 1 getinterval (9) eq {14} {11} ifelse dup
        20 dup
        25 dup
        29 dup
    >> def
    /txt barlen 6 add array def
    /spacecnt 0 def
    0 1 barlen 1 sub {
        /i exch def
        txtdict i known {
            txt i spacecnt add [( ) 0 0 () 0] put
            /spacecnt spacecnt 1 add def
        } if
        txt i spacecnt add [barcode i 1 getinterval 0 0 () 0] put
    } for
    /txt txt 0 barcode length spacecnt add getinterval def

    /normalize {
        /base exch def
        /num exch def
        num length 1 sub -1 1 {
            /i exch def
            num i 1 sub 2 copy get num i get base idiv add put
            num i num i get base mod put
        } for
        { %loop - extend input as necessary
            num 0 get base lt {exit} if
            /num [0 num {} forall] def
            num 0 num 0 get num 1 get base idiv add put
            num 1 num 1 get base mod put
        } loop
        % Trim leading zeros
        /num [/i true def num {dup 0 eq i and {pop} {/i false def} ifelse} forall] def
        num length 0 eq {/num [0] def} if
        num
    } bind def

    /bigadd {
        2 copy length exch length
        2 copy sub abs /offset exch def
        lt {exch} if
        /a exch def /b exch def
        0 1 b length 1 sub {
            dup a exch offset add 2 copy get b 5 -1 roll get add put
        } for
        a
    } bind def

    % Conversion of data fields into binary data
    barlen 20 eq {[0]} if
    barlen 25 eq {[1]} if
    barlen 29 eq {[1 0 0 0 0 1]} if
    barlen 31 eq {[1 0 0 0 1 0 0 0 0 1]} if
    /binval exch [barcode 20 barlen 20 sub getinterval {48 sub} forall] bigadd def
    /binval [binval {} forall barcode 0 get 48 sub] def
    /binval [binval {5 mul} forall] [barcode 1 get 48 sub] bigadd 10 normalize def
    /binval [binval {} forall barcode 2 18 getinterval {48 sub} forall] def

    % Conversion of binary data into byte array
    /bytes 13 array def
    /bintmp [binval {} forall] def
    12 -1 0 {
        /i exch def
        0 1 bintmp length 2 sub {
            /j exch def
            bintmp j 1 add 2 copy get bintmp j get 256 mod 10 mul add put
            bintmp j bintmp j get 256 idiv put
        } for
        bytes i bintmp bintmp length 1 sub get 256 mod put
        bintmp bintmp length 1 sub 2 copy get 256 idiv put
    } for

    % Generation of 11-bit CRC on byte array
    /fcs 2047 def
    /dat bytes 0 get 5 bitshift def
    6 {
        fcs dat xor 1024 and 0 ne {
            /fcs fcs 1 bitshift 3893 xor def
        } {
            /fcs fcs 1 bitshift def
        } ifelse
        /fcs fcs 2047 and def
        /dat dat 1 bitshift def
    } repeat
    1 1 12 {
        bytes exch get 3 bitshift /dat exch def
        8 {
            fcs dat xor 1024 and 0 ne {
                /fcs fcs 1 bitshift 3893 xor def
            } {
                /fcs fcs 1 bitshift def
            } ifelse
            /fcs fcs 2047 and def
            /dat dat 1 bitshift def
        } repeat
    } for

    % Conversion from binary data to codewords
    /codewords 10 array def
    9 -1 0 {
        /i exch def
        i 9 eq {
            /b 636 def
        } {
            /b 1365 def
        } ifelse
        0 1 binval length 2 sub {
            /j exch def
            binval j 1 add 2 copy get binval j get b mod 10 mul add put
            binval j binval j get b idiv put
        } for
        codewords i binval binval length 1 sub get b mod put
        binval binval length 1 sub 2 copy get b idiv put
    } for

    % Inserting additional information into codewords
    codewords 9 codewords 9 get 2 mul put
    fcs 1024 and 0 ne {
        codewords 0 codewords 0 get 659 add put
    } if

    % Conversion from codewords to characters
    /tab513 [
        31 7936   47 7808   55 7552   59 7040   61 6016   62 3968   79 7744   87
      7488   91 6976   93 5952   94 3904  103 7360  107 6848  109 5824  110 3776
       115 6592  117 5568  118 3520  121 5056  122 3008  124 1984  143 7712  151
      7456  155 6944  157 5920  158 3872  167 7328  171 6816  173 5792  174 3744
       179 6560  181 5536  182 3488  185 5024  186 2976  188 1952  199 7264  203
      6752  205 5728  206 3680  211 6496  213 5472  214 3424  217 4960  218 2912
       220 1888  227 6368  229 5344  230 3296  233 4832  234 2784  236 1760  241
      4576  242 2528  244 1504  248  992  271 7696  279 7440  283 6928  285 5904
       286 3856  295 7312  299 6800  301 5776  302 3728  307 6544  309 5520  310
      3472  313 5008  314 2960  316 1936  327 7248  331 6736  333 5712  334 3664
       339 6480  341 5456  342 3408  345 4944  346 2896  348 1872  355 6352  357
      5328  358 3280  361 4816  362 2768  364 1744  369 4560  370 2512  372 1488
       376  976  391 7216  395 6704  397 5680  398 3632  403 6448  405 5424  406
      3376  409 4912  410 2864  412 1840  419 6320  421 5296  422 3248  425 4784
       426 2736  428 1712  433 4528  434 2480  436 1456  440  944  451 6256  453
      5232  454 3184  457 4720  458 2672  460 1648  465 4464  466 2416  468 1392
       472  880  481 4336  482 2288  484 1264  488  752  527 7688  535 7432  539
      6920  541 5896  542 3848  551 7304  555 6792  557 5768  558 3720  563 6536
       565 5512  566 3464  569 5000  570 2952  572 1928  583 7240  587 6728  589
      5704  590 3656  595 6472  597 5448  598 3400  601 4936  602 2888  604 1864
       611 6344  613 5320  614 3272  617 4808  618 2760  620 1736  625 4552  626
      2504  628 1480  632  968  647 7208  651 6696  653 5672  654 3624  659 6440
       661 5416  662 3368  665 4904  666 2856  668 1832  675 6312  677 5288  678
      3240  681 4776  682 2728  684 1704  689 4520  690 2472  692 1448  696  936
       707 6248  709 5224  710 3176  713 4712  714 2664  716 1640  721 4456  722
      2408  724 1384  728  872  737 4328  738 2280  740 1256  775 7192  779 6680
       781 5656  782 3608  787 6424  789 5400  790 3352  793 4888  794 2840  796
      1816  803 6296  805 5272  806 3224  809 4760  810 2712  812 1688  817 4504
       818 2456  820 1432  824  920  835 6232  837 5208  838 3160  841 4696  842
      2648  844 1624  849 4440  850 2392  852 1368  865 4312  866 2264  868 1240
       899 6200  901 5176  902 3128  905 4664  906 2616  908 1592  913 4408  914
      2360  916 1336  929 4280  930 2232  932 1208  961 4216  962 2168  964 1144
      1039 7684 1047 7428 1051 6916 1053 5892 1054 3844 1063 7300 1067 6788 1069
      5764 1070 3716 1075 6532 1077 5508 1078 3460 1081 4996 1082 2948 1084 1924
      1095 7236 1099 6724 1101 5700 1102 3652 1107 6468 1109 5444 1110 3396 1113
      4932 1114 2884 1116 1860 1123 6340 1125 5316 1126 3268 1129 4804 1130 2756
      1132 1732 1137 4548 1138 2500 1140 1476 1159 7204 1163 6692 1165 5668 1166
      3620 1171 6436 1173 5412 1174 3364 1177 4900 1178 2852 1180 1828 1187 6308
      1189 5284 1190 3236 1193 4772 1194 2724 1196 1700 1201 4516 1202 2468 1204
      1444 1219 6244 1221 5220 1222 3172 1225 4708 1226 2660 1228 1636 1233 4452
      1234 2404 1236 1380 1249 4324 1250 2276 1287 7188 1291 6676 1293 5652 1294
      3604 1299 6420 1301 5396 1302 3348 1305 4884 1306 2836 1308 1812 1315 6292
      1317 5268 1318 3220 1321 4756 1322 2708 1324 1684 1329 4500 1330 2452 1332
      1428 1347 6228 1349 5204 1350 3156 1353 4692 1354 2644 1356 1620 1361 4436
      1362 2388 1377 4308 1378 2260 1411 6196 1413 5172 1414 3124 1417 4660 1418
      2612 1420 1588 1425 4404 1426 2356 1441 4276 1442 2228 1473 4212 1474 2164
      1543 7180 1547 6668 1549 5644 1550 3596 1555 6412 1557 5388 1558 3340 1561
      4876 1562 2828 1564 1804 1571 6284 1573 5260 1574 3212 1577 4748 1578 2700
      1580 1676 1585 4492 1586 2444 1603 6220 1605 5196 1606 3148 1609 4684 1610
      2636 1617 4428 1618 2380 1633 4300 1634 2252 1667 6188 1669 5164 1670 3116
      1673 4652 1674 2604 1681 4396 1682 2348 1697 4268 1698 2220 1729 4204 1730
      2156 1795 6172 1797 5148 1798 3100 1801 4636 1802 2588 1809 4380 1810 2332
      1825 4252 1826 2204 1857 4188 1858 2140 1921 4156 1922 2108 2063 7682 2071
      7426 2075 6914 2077 5890 2078 3842 2087 7298 2091 6786 2093 5762 2094 3714
      2099 6530 2101 5506 2102 3458 2105 4994 2106 2946 2119 7234 2123 6722 2125
      5698 2126 3650 2131 6466 2133 5442 2134 3394 2137 4930 2138 2882 2147 6338
      2149 5314 2150 3266 2153 4802 2154 2754 2161 4546 2162 2498 2183 7202 2187
      6690 2189 5666 2190 3618 2195 6434 2197 5410 2198 3362 2201 4898 2202 2850
      2211 6306 2213 5282 2214 3234 2217 4770 2218 2722 2225 4514 2226 2466 2243
      6242 2245 5218 2246 3170 2249 4706 2250 2658 2257 4450 2258 2402 2273 4322
      2311 7186 2315 6674 2317 5650 2318 3602 2323 6418 2325 5394 2326 3346 2329
      4882 2330 2834 2339 6290 2341 5266 2342 3218 2345 4754 2346 2706 2353 4498
      2354 2450 2371 6226 2373 5202 2374 3154 2377 4690 2378 2642 2385 4434 2401
      4306 2435 6194 2437 5170 2438 3122 2441 4658 2442 2610 2449 4402 2465 4274
      2497 4210 2567 7178 2571 6666 2573 5642 2574 3594 2579 6410 2581 5386 2582
      3338 2585 4874 2586 2826 2595 6282 2597 5258 2598 3210 2601 4746 2602 2698
      2609 4490 2627 6218 2629 5194 2630 3146 2633 4682 2641 4426 2657 4298 2691
      6186 2693 5162 2694 3114 2697 4650 2705 4394 2721 4266 2753 4202 2819 6170
      2821 5146 2822 3098 2825 4634 2833 4378 2849 4250 2881 4186 2945 4154 3079
      7174 3083 6662 3085 5638 3086 3590 3091 6406 3093 5382 3094 3334 3097 4870
      3107 6278 3109 5254 3110 3206 3113 4742 3121 4486 3139 6214 3141 5190 3145
      4678 3153 4422 3169 4294 3203 6182 3205 5158 3209 4646 3217 4390 3233 4262
      3265 4198 3331 6166 3333 5142 3337 4630 3345 4374 3361 4246 3393 4182 3457
      4150 3587 6158 3589 5134 3593 4622 3601 4366 3617 4238 3649 4174 3713 4142
      3841 4126 4111 7681 4119 7425 4123 6913 4125 5889 4135 7297 4139 6785 4141
      5761 4147 6529 4149 5505 4153 4993 4167 7233 4171 6721 4173 5697 4179 6465
      4181 5441 4185 4929 4195 6337 4197 5313 4201 4801 4209 4545 4231 7201 4235
      6689 4237 5665 4243 6433 4245 5409 4249 4897 4259 6305 4261 5281 4265 4769
      4273 4513 4291 6241 4293 5217 4297 4705 4305 4449 4359 7185 4363 6673 4365
      5649 4371 6417 4373 5393 4377 4881 4387 6289 4389 5265 4393 4753 4401 4497
      4419 6225 4421 5201 4425 4689 4483 6193 4485 5169 4489 4657 4615 7177 4619
      6665 4621 5641 4627 6409 4629 5385 4633 4873 4643 6281 4645 5257 4649 4745
      4675 6217 4677 5193 4739 6185 4741 5161 4867 6169 4869 5145 5127 7173 5131
      6661 5133 5637 5139 6405 5141 5381 5155 6277 5157 5253 5187 6213 5251 6181
      5379 6165 5635 6157 6151 7171 6155 6659 6163 6403 6179 6275 6211 5189 4681
      4433 4321 3142 2634 2386 2274 1612 1364 1252  856  744  496
    ] def

    /tab213 [
         3 6144    5 5120    6 3072    9 4608   10 2560   12 1536   17 4352   18
      2304   20 1280   24  768   33 4224   34 2176   36 1152   40  640   48  384
        65 4160   66 2112   68 1088   72  576   80  320   96  192  129 4128  130
      2080  132 1056  136  544  144  288  257 4112  258 2064  260 1040  264  528
       513 4104  514 2056  516 1032 1025 4100 1026 2052 2049 4098 4097 2050 1028
       520  272  160
    ] def

    /chars 10 array def
    0 1 9 {
        /i exch def
        codewords i get dup 1286 le {
            tab513 exch get
        } {
            tab213 exch 1287 sub get
        } ifelse
        chars i 3 -1 roll put
    } for

    9 -1 0 {
        /i exch def
        2 i exp cvi fcs and 0 ne {
            chars i chars i get 8191 xor put
        } if
    } for

    % Conversion from characters to the OneCode encoding
    /barmap [
        7 2 4 3    1 10 0 0   9 12 2 8   5 5 6 11   8 9 3 1
        0 1 5 12   2 5 1 8    4 4 9 11   6 3 8 10   3 9 7 6
        5 11 1 4   8 5 2 12   9 10 0 2   7 1 6 7    3 6 4 9
        0 3 8 6    6 4 2 7    1 1 9 9    7 10 5 2   4 0 3 8
        6 2 0 4    8 11 1 0   9 8 3 12   2 6 7 7    5 1 4 10
        1 12 6 9   7 3 8 0    5 8 9 7    4 6 2 10   3 4 0 5
        8 4 5 7    7 11 1 9   6 0 9 6    0 6 4 8    2 1 3 2
        5 9 8 12   4 11 6 1   9 5 7 4    3 3 1 2    0 7 2 0
        1 3 4 1    6 10 3 5   8 7 9 4    2 11 5 6   0 8 7 12
        4 2 8 1    5 10 3 0   9 3 0 9    6 5 2 4    7 8 1 7
        5 0 4 5    2 3 0 10   6 12 9 2   3 11 1 6   8 8 7 9
        5 4 0 11   1 5 2 2    9 1 4 12   8 3 6 6    7 0 3 7
        4 7 7 5    0 12 1 11  2 9 9 0    6 8 5 3    3 10 8 2
    ] def

    /bbs 65 array def
    /bhs 65 array def
    0 1 64 {
        /i exch def
        /dec chars barmap i 4 mul get get 2 barmap i 4 mul 1 add get exp cvi and 0 ne def
        /asc chars barmap i 4 mul 2 add get get 2 barmap i 4 mul 3 add get exp cvi and 0 ne def
        dec not asc not and {
            bbs i 3 height mul 8 div put
            bhs i 2 height mul 8 div put
        } if
        dec not asc and {
            bbs i 3 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        dec asc not and {
            bbs i 0 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        dec asc and {
            bbs i 0 height mul 8 div put
            bhs i 8 height mul 8 div put
        } if
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /bbs bbs
    /bhs bhs
    /sbs [bhs length 1 sub {1.44 1.872} repeat 1.44]
    /txt txt
    /textxalign (left)
    /textfont /Helvetica
    /textyoffset 1
    /textxoffset -0.3
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /onecode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER onecode--

% --BEGIN ENCODER postnet--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: USPS POSTNET
% --EXAM: 01234
% --EXOP: includetext includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp postnet 0.0 2019110800 61190 60891
%%BeginData:        142 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/postnet {

    20 dict begin

    /options exch def              % We are given an option string
    /barcode exch def              % We are given a barcode string

    /dontdraw false def
    /includetext false def          % Enable/disable text
    /validatecheck false def
    /includecheckintext false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 0.125 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    /barlen barcode length validatecheck {1 sub} if def

    % Validate the input
    barlen 5 ne barlen 9 ne and barlen 11 ne and {
        /bwipp.postnetBadLength (USPS POSTNET must be 5, 9 or 11 digits excluding check digit) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.postnetBadCharacter (USPS POSTNET must contain only digits) //raiseerror exec
        } if
    } forall

    % Create a string of the available characters
    /barchars (0123456789) def

    /checksum 0 def
    0 1 barlen 1 sub {
        /i exch def
        /checksum checksum barcode i get 48 sub add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.postnetBadCheckDigit (Incorrect USPS POSTNET check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    % Create an array containing the character mappings
    /encs
    [ (55222) (22255) (22525) (22552) (25225)
      (25252) (25522) (52225) (52252) (52522)
      (5) (5)
    ] def

    /bhs barlen 5 mul 7 add array def
    /txt barlen 1 add array def

    % Put start character
    /enc encs 10 get def
    /heights enc length array def
    0 1 enc length 1 sub {
        /j exch def
        heights j enc j 1 getinterval cvi height mul 5 div put
    } for
    bhs 0 heights putinterval   % Put encoded digit into sbs

    0 1 barlen 1 sub {
        /i exch def
        /enc encs barcode i get 48 sub get def
        /heights enc length array def
        0 1 enc length 1 sub {
            /j exch def
            heights j enc j 1 getinterval cvi height mul 5 div put
        } for
        bhs i 5 mul 1 add heights putinterval   % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 5 mul 1 add 3.312 mul textyoffset textfont textsize] put
    } for

    % Put the checksum character
    /enc encs checksum get def
    /heights enc length array def
    0 1 enc length 1 sub {
        /j exch def
        heights j enc j 1 getinterval cvi height mul 5 div put
    } for
    bhs barlen 5 mul 1 add heights putinterval

    includecheckintext {
        txt barlen [barchars checksum 1 getinterval barlen 5 mul 1 add 3.312 mul textyoffset textfont textsize] put
    } {
        txt barlen [( ) barlen 5 mul 1 add 72 mul 25 div textyoffset textfont textsize] put
    } ifelse

    % Put end character
    /enc encs 11 get def
    /heights enc length array def
    0 1 enc length 1 sub {
        /j exch def
        heights j enc j 1 getinterval cvi height mul 5 div put
    } for
    bhs barlen 5 mul 6 add heights putinterval

    % Return the arguments
    <<
    /ren //renlinear
    /bhs bhs
    /bbs [bhs length {0} repeat]
    /sbs [bhs length 1 sub {1.44 1.872} repeat 1.44]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /postnet dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER postnet--

% --BEGIN ENCODER planet--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: USPS PLANET
% --EXAM: 01234567890
% --EXOP: includetext includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp planet 0.0 2019110800 61050 60755
%%BeginData:        143 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/planet {

    20 dict begin

    /options exch def              % We are given an option string
    /barcode exch def              % We are given a barcode string

    /dontdraw false def
    /includetext false def          % Enable/disable text
    /validatecheck false def
    /includecheckintext false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 0.125 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    /barlen barcode length validatecheck {1 sub} if def

    % Validate the input
    barlen 11 ne barlen 13 ne and {
        /bwipp.planetBadLength (USPS PLANET must be 11 or 13 digits excluding check digit) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.planetBadCharacter (USPS PLANET must contain only digits) //raiseerror exec
        } if
    } forall

    % Create a string of the available characters
    /barchars (0123456789) def

    % Calculate the checksum
    /checksum 0 def
    0 1 barlen 1 sub {
        /i exch def
        /checksum checksum barcode i get 48 sub add def
    } for
    /checksum 10 checksum 10 mod sub 10 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.planetBadCheckDigit (Incorrect USPS PLANET check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    % Create an array containing the character mappings
    /encs
    [ (22555) (55522) (55252) (55225) (52552)
      (52525) (52255) (25552) (25525) (25255)
      (5) (5)
    ] def

    /bhs barlen 5 mul 7 add array def
    /txt barlen 1 add array def

    % Put start character
    /enc encs 10 get def
    /heights enc length array def
    0 1 enc length 1 sub {
        /j exch def
        heights j enc j 1 getinterval cvi height mul 5 div put
    } for
    bhs 0 heights putinterval   % Put encoded digit into sbs

    0 1 barlen 1 sub {
        /i exch def
        /enc encs barcode i get 48 sub get def
        /heights enc length array def
        0 1 enc length 1 sub {
            /j exch def
            heights j enc j 1 getinterval cvi height mul 5 div put
        } for
        bhs i 5 mul 1 add heights putinterval   % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 5 mul 1 add 3.312 mul textyoffset textfont textsize] put
    } for

    % Put the checksum character
    /enc encs checksum get def
    /heights enc length array def
    0 1 enc length 1 sub {
        /j exch def
        heights j enc j 1 getinterval cvi height mul 5 div put
    } for
    bhs barlen 5 mul 1 add heights putinterval

    includecheckintext {
        txt barlen [barchars checksum 1 getinterval barlen 5 mul 1 add 3.312 mul textyoffset textfont textsize] put
    } {
        txt barlen [( ) barlen 5 mul 1 add 72 mul 25 div textyoffset textfont textsize] put
    } ifelse

    % Put end character
    /enc encs 11 get def
    /heights enc length array def
    0 1 enc length 1 sub {
        /j exch def
        heights j enc j 1 getinterval cvi height mul 5 div put
    } for
    bhs barlen 5 mul 6 add heights putinterval

    % Return the arguments
    <<
    /ren //renlinear
    /bhs bhs
    /bbs [bhs length {0} repeat]
    /sbs [bhs length 1 sub {1.44 1.872} repeat 1.44]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /planet dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER planet--

% --BEGIN ENCODER royalmail--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Royal Mail 4 State Customer Code
% --EXAM: LE28HS9Z
% --EXOP: includetext barcolor=FF0000
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp royalmail 0.0 2019110800 61861 61521
%%BeginData:        147 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/royalmail {

    20 dict begin

    /options exch def              % We are given an option string
    /barcode exch def              % We are given a barcode string

    /dontdraw false def
    /includetext false def          % Enable/disable text
    /validatecheck false def
    /includecheckintext false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 0.175 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create a string of the available characters
    /barchars (ZUVWXY501234B6789AHCDEFGNIJKLMTOPQRS) def
    /charvals 36 dict def
    0 1 35 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.royalmailBadCharacter (RM4SCC must contain only capital letters and digits) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksumrow 0 def
    /checksumcol 0 def
    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        /checksumrow checksumrow indx 6 idiv add def
        /checksumcol checksumcol indx 6 mod add def
    } for
    /checksum checksumrow 6 mod 6 mul checksumcol 6 mod add def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.royalmailBadCheckDigit (Incorrect RM4SCC check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    % Create an array containing the character mappings
    /encs
    [ (3300) (2211) (2301) (2310) (3201) (3210)
      (1122) (0033) (0123) (0132) (1023) (1032)
      (1302) (0213) (0303) (0312) (1203) (1212)
      (1320) (0231) (0321) (0330) (1221) (1230)
      (3102) (2013) (2103) (2112) (3003) (3012)
      (3120) (2031) (2121) (2130) (3021) (3030)
      (2) (3)
    ] def

    /encstr barlen 4 mul 6 add string def
    /txt barlen 1 add array def

    % Put start character
    encstr 0 encs 36 get putinterval

    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        encstr i 4 mul 1 add encs indx get putinterval
        txt i [barcode i 1 getinterval i 4 mul 1 add 3.312 mul textyoffset textfont textsize] put
    } for

    % Put the checksum character
    encstr barlen 4 mul 1 add encs checksum get putinterval
    includecheckintext {
        txt barlen [barchars checksum 1 getinterval barlen 4 mul 1 add 3.312 mul textyoffset textfont textsize] put
    } {
        txt barlen [( ) barlen 4 mul 1 add 3.312 mul textyoffset textfont textsize] put
    } ifelse

    % Put end character
    encstr barlen 4 mul 5 add encs 37 get putinterval

    /bbs encstr length array def
    /bhs encstr length array def
    0 1 encstr length 1 sub {
        /i exch def
        /enc encstr i 1 getinterval def
        enc (0) eq {
            bbs i 3 height mul 8 div put
            bhs i 2 height mul 8 div put
        } if
        enc (1) eq {
            bbs i 0 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        enc (2) eq {
            bbs i 3 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        enc (3) eq {
            bbs i 0 height mul 8 div put
            bhs i 8 height mul 8 div put
        } if
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /bbs bbs
    /bhs bhs
    /sbs [bhs length 1 sub {1.44 1.872} repeat 1.44]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /royalmail dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER royalmail--

% --BEGIN ENCODER auspost--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: AusPost 4 State Customer Code
% --EXAM: 5956439111ABA 9
% --EXOP: includetext custinfoenc=character
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp auspost 0.0 2019110800 72777 72519
%%BeginData:        204 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/auspost {

    20 dict begin

    /options exch def              % We are given an option string
    /barcode exch def              % We are given a barcode string

    /dontdraw false def
    /includetext false def         % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 0.175 def
    /custinfoenc (character) def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create an array containing the character mappings
    /encs
    [ (000) (001) (002) (010) (011) (012) (020) (021)
      (022) (100) (101) (102) (110) (111) (112) (120)
      (121) (122) (200) (201) (202) (210) (211) (212)
      (220) (221) (222) (300) (301) (302) (310) (311)
      (312) (320) (321) (322) (023) (030) (031) (032)
      (033) (103) (113) (123) (130) (131) (132) (133)
      (203) (213) (223) (230) (231) (232) (233) (303)
      (313) (323) (330) (331) (332) (333) (003) (013)
      (00) (01) (02) (10) (11) (12) (20) (21) (22) (30)
      (13) (3)
    ] def

    % Create a string of the available characters
    /barchars (ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz #) def

    /barlen barcode length def
    barcode 0 2 getinterval (11) eq {37} if
    barcode 0 2 getinterval (45) eq {37} if
    barcode 0 2 getinterval (59) eq {52} if
    barcode 0 2 getinterval (62) eq {67} if
    /encstr exch string def
    /txt barlen 2 sub array def

    % Put start character
    encstr 0 encs 74 get putinterval

    % Encode the FCC
    0 1 1 {
        /i exch def
        encs barcode i 1 getinterval cvi 64 add get
        encstr i 2 mul 2 add 3 2 roll putinterval
    } for

    % Encode the DPID
    2 1 9 {
        /i exch def
        encs barcode i 1 getinterval cvi 64 add get
        encstr i 2 mul 2 add 3 2 roll putinterval
        txt i 2 sub [barcode i 1 getinterval i 2 sub 2 mul 6 add 3.312 mul textyoffset textfont textsize] put
    } for

    % Encode the customer information
    custinfoenc (numeric) eq {
        0 1 barlen 11 sub {
            /i exch def
            encs barcode i 10 add 1 getinterval cvi 64 add get
            encstr i 2 mul 22 add 3 2 roll putinterval
            txt i 8 add [barcode i 10 add 1 getinterval i 2 mul 22 add 3.312 mul textyoffset textfont textsize] put
        } for
        /ciflen barlen 10 sub 2 mul def
    } {
        0 1 barlen 11 sub {
            /i exch def
            barcode i 10 add 1 getinterval barchars exch search
            pop
            length /indx exch def
            pop pop
            /enc encs indx get def
            encstr i 3 mul 22 add enc putinterval
            txt i 8 add [barcode i 10 add 1 getinterval i 3 mul 22 add 3.312 mul textyoffset textfont textsize] put
        } for
        /ciflen barlen 10 sub 3 mul def
    } ifelse

    % Add any filler characters
    22 ciflen add 1 encstr length 14 sub {
        encstr exch encs 75 get putinterval
    } for

    % Create the 64x64 Reed-Solomon table
    /rstable 64 64 mul array def
    rstable 0 [ 64 {0} repeat ] putinterval
    rstable 64 [ 0 1 63 {} for ] putinterval
    /prev 1 def
    64 {
        /next prev 1 bitshift def
        next 64 and 0 ne {
            /next next 67 xor def
        } if
        0 1 63 {
            /j exch def
            /nextcell {rstable 64 next mul j add} def
            nextcell rstable 64 prev mul j add get 1 bitshift put
            nextcell get 64 and 0 ne {
                nextcell nextcell get 67 xor put
            } if
        } for
        /prev next def
    } repeat

    % Calculate the Reed-Solomon codes for triples
    /rscodes encstr length 16 sub 3 idiv 4 add array def
    rscodes 0 [ 4 {0} repeat ] putinterval
    2 3 encstr length 16 sub {
        /i exch def
        rscodes rscodes length i 2 sub 3 idiv sub 1 sub
        encstr i 1 getinterval cvi 16 mul
        encstr i 1 add 1 getinterval cvi 4 mul add
        encstr i 2 add 1 getinterval cvi add
        put
    } for
    rscodes length 5 sub -1 0 {
       /i exch def
       0 1 4 {
           /j exch def
           rscodes i j add rscodes i j add get
           rstable 64 [48 17 29 30 1] j get mul rscodes i 4 add get add get
           xor put
       } for
    } for
    /checkcode (000000000000) 12 string copy def
    0 1 3 {
        /i exch def
        /enc rscodes 3 i sub get 4 3 string cvrs def
        checkcode i 3 mul 3 enc length sub add enc putinterval
    } for

    % Put checkcode and end characters
    encstr encstr length 14 sub checkcode putinterval
    encstr encstr length 2 sub encs 74 get putinterval

    /bbs encstr length array def
    /bhs encstr length array def
    0 1 encstr length 1 sub {
        /i exch def
        /enc encstr i 1 getinterval def
        enc (0) eq {
            bbs i 0 height mul 8 div put
            bhs i 8 height mul 8 div put
        } if
        enc (1) eq {
            bbs i 3 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        enc (2) eq {
            bbs i 0 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        enc (3) eq {
            bbs i 3 height mul 8 div put
            bhs i 2 height mul 8 div put
        } if
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /bbs bbs
    /bhs bhs
    /sbs [bhs length 1 sub {1.44 1.872} repeat 1.44]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /auspost dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER auspost--

% --BEGIN ENCODER kix--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Royal Dutch TPG Post KIX
% --EXAM: 1231FZ13XHS
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp kix 0.0 2019110800 57107 56916
%%BeginData:        113 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/kix {

    20 dict begin

    /options exch def              % We are given an option string
    /barcode exch def              % We are given a barcode string

    /dontdraw false def
    /includetext false def          % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 0.175 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create an array containing the character mappings
    /encs
    [ (0033) (0123) (0132) (1023) (1032) (1122)
      (0213) (0303) (0312) (1203) (1212) (1302)
      (0231) (0321) (0330) (1221) (1230) (1320)
      (2013) (2103) (2112) (3003) (3012) (3102)
      (2031) (2121) (2130) (3021) (3030) (3120)
      (2211) (2301) (2310) (3201) (3210) (3300)
    ] def

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ) def
    /charvals 36 dict def
    0 1 35 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.kixBadCharacter (KIX must contain only capital letters and digits) //raiseerror exec
        } if
    } for

    /barlen barcode length def
    /encstr barlen 4 mul string def
    /txt barlen array def

    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        encstr i 4 mul encs indx get putinterval
        txt i [barcode i 1 getinterval i 4 mul 3.312 mul textyoffset textfont textsize] put
    } for

    /bbs encstr length array def
    /bhs encstr length array def
    0 1 encstr length 1 sub {
        /i exch def
        /enc encstr i 1 getinterval def
        enc (0) eq {
            bbs i 3 height mul 8 div put
            bhs i 2 height mul 8 div put
        } if
        enc (1) eq {
            bbs i 0 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        enc (2) eq {
            bbs i 3 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        enc (3) eq {
            bbs i 0 height mul 8 div put
            bhs i 8 height mul 8 div put
        } if
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /bbs bbs
    /bhs bhs
    /sbs [bhs length 1 sub {1.44 1.872} repeat 1.44]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /kix dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER kix--

% --BEGIN ENCODER japanpost--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Japan Post 4 State Customer Code
% --EXAM: 6540123789-A-K-Z
% --EXOP: includetext includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp japanpost 0.0 2019110800 62126 61757
%%BeginData:        164 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/japanpost {

    20 dict begin

    /options exch def              % We are given an option string
    /barcode exch def              % We are given a barcode string

    /dontdraw false def
    /includetext false def          % Enable/disable text
    /includecheckintext false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 0.175 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create an array containing the character mappings
    % 0123456789- C1C2C3C4C5C6C7C8 ST EN
    /encs
    [ (300) (330) (312) (132) (321) (303) (123) (231) (213) (033) (030)
      (120) (102) (210) (012) (201) (021) (003) (333)
      (31) (13)
    ] def

    % Create a string of the available characters
    /barchars (0123456789-ABCDEFGHIJKLMNOPQRSTUVWXYZ) def
    /barlen barcode length def

    /encstr 20 1 add 3 mul 4 add string def
    /digits 20 array def
    /txt barlen 1 add array def

    % Put start character
    encstr 0 encs 19 get putinterval

    /checksum 0 def
    /j 0 def /i 0 def
    0 1 barlen 1 sub {
        /i exch def
        barcode i 1 getinterval barchars exch search
        pop                                  % Discard true leaving pre
        length /indx exch def                % indx is the length of pre
        pop pop                              % Discard match and post
        indx 11 ge indx 37 lt and {          % Insert escape
            j 18 gt {exit} if                % Should fit in 20 chars
                                             % 11-20: C1 (11)
                                             % 21-30: C2 (12)
                                             % 31-36: C3 (13)
            /digit indx 1 sub 10 idiv 10 add def
            encstr j 3 mul 2 add encs digit get putinterval
            /checksum checksum digit add def
            digits j digit put
            /j j 1 add def
        } if
        j 19 gt {exit} if                    % Should fit in 20 chars
        /digit 0 def
        indx 37 eq {
            /digit 14 def                    % space (C14)
        } if
        indx 11 ge indx 37 lt and {
            /digit indx 1 sub 10 mod def
        } if
        indx 11 lt {
            /digit indx def
        } if
        encstr j 3 mul 2 add encs digit get putinterval % space
        /checksum checksum digit add def
        digits j digit put
        txt i [barcode i 1 getinterval j 3 mul 2 add 3.312 mul textyoffset textfont textsize] put
        /j j 1 add def
    } for

    % Fill spaces (c14) at right end
    j 1 20 1 sub {
        /k exch def
        encstr k 3 mul 2 add encs 14 get putinterval
        /checksum checksum 14 add def
        digits k 14 put
    } for

    % Put the checksum character
    /checksum checksum 19 mod 19 exch sub def
    encstr 2 20 3 mul add encs checksum get putinterval

    % Put end character
    encstr 2 21 3 mul add encs 20 get putinterval
    /checkdigit ( ) def
    includecheckintext {
        /checkdigit barchars checksum 1 getinterval def
    } if
    txt i 1 add [ checkdigit 20 3 mul 2 add 3.312 mul textyoffset textfont textsize] put

    % Put end character
    encstr 20 1 add 3 mul 2 add encs 20 get putinterval

    /bbs 21 3 mul 4 add array def
    /bhs bbs length array def
    0 1 bbs length 1 sub {
        /i exch def
        /enc encstr i 1 getinterval def
        /bunit 0 def
        /hunit 0 def
        enc (0) eq {
            /bunit 3 def
            /hunit 2 def
        } if
        enc (1) eq {
            /bunit 0 def
            /hunit 5 def
        } if
        enc (2) eq {
            /bunit 3 def
            /hunit 5 def
        } if
        enc (3) eq {
            /bunit 0 def
            /hunit 8 def
        } if
        bbs i bunit height mul 8 div put
        bhs i hunit height mul 8 div put
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /bbs bbs
    /bhs bhs
    /sbs [bhs length 1 sub {1.44 1.872} repeat 1.44]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /japanpost dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER japanpost--

% --BEGIN ENCODER msi--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: MSI Modified Plessey
% --EXAM: 0123456789
% --EXOP: includetext includecheck includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp msi 0.0 2019110800 67169 66798
%%BeginData:        141 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/msi {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /includecheck false def  % Enable/disable checkdigit
    /includetext false def   % Enable/disable text
    /includecheckintext false def
    /checktype (mod10) def
    /badmod11 false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create an array containing the character mappings
    /encs
    [ (12121212) (12121221) (12122112) (12122121) (12211212)
      (12211221) (12212112) (12212121) (21121212) (21121221)
      (21) (121)
    ] def

    % Create a string of the available characters
    /barchars (0123456789) def

    /barlen barcode length def     % Length of the code
    /txtlen barlen def

    /mod10 {
        /code exch def
        0 0 code {48 sub exch 10 mul add exch} forall pop 2 mul
        0 {1 index 10 mod add exch 10 idiv dup 0 eq {pop exit} if exch} loop
        0 0 code {48 sub add exch} forall exch pop add
        10 mod 10 exch sub 10 mod
        code length 1 add string dup 0 code putinterval dup code length 4 -1 roll 48 add put
    } bind def

    /mod11 {
        /code exch def
        code length 1 sub code {48 sub exch dup 1 sub exch 6 mod 2 add exch} forall pop
        0 code length {3 1 roll mul add} repeat
        11 mod 11 exch sub 11 mod
        dup 10 eq badmod11 and {
            pop code length 2 add string dup 0 code putinterval dup code length (10) putinterval
        } {
            code length 1 add string dup 0 code putinterval dup code length 4 -1 roll 48 add put
        } ifelse
    } bind def

    /ncrmod11 {
        /code exch def
        code length 1 sub code {48 sub exch dup 1 sub exch 8 mod 2 add exch} forall pop
        0 code length {3 1 roll mul add} repeat
        11 mod 11 exch sub 11 mod
        dup 10 eq badmod11 and {
            pop code length 2 add string dup 0 code putinterval dup code length (10) putinterval
        } {
            code length 1 add string dup 0 code putinterval dup code length 4 -1 roll 48 add put
        } ifelse
    } bind def

    % Calculate checksum
    includecheck {
        checktype (mod10) eq      {barcode mod10} if
        checktype (mod1010) eq    {barcode mod10 mod10} if
        checktype (mod11) eq      {barcode mod11} if
        checktype (ncrmod11) eq   {barcode ncrmod11} if
        checktype (mod1110) eq    {barcode mod11 mod10} if
        checktype (ncrmod1110) eq {barcode ncrmod11 mod10} if
        /barcode exch def
        /barlen barcode length def
        includecheckintext {/txtlen barlen def} if
    } if

    /sbs barlen 8 mul 5 add string def
    /txt barlen array def

    % Put start character
    sbs 0 encs 10 get putinterval

    0 1 barlen 1 sub {
        /i exch def
        % Lookup the encoding for the each barcode character
        barcode i 1 getinterval barchars exch search
        pop                                % Discard true leaving pre
        length /indx exch def              % indx is the length of pre
        pop pop                            % Discard seek and post
        /enc encs indx get def             % Get the indxth encoding
        sbs i 8 mul 2 add enc putinterval  % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 12 mul 3 add textyoffset textfont textsize] put
    } for

    % Put the end character
    sbs barlen 8 mul 2 add encs 11 get putinterval

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt 0 txtlen getinterval
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /msi dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER msi--

% --BEGIN ENCODER plessey--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Plessey UK
% --EXAM: 01234ABCD
% --EXOP: includetext includecheckintext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp plessey 0.0 2019110800 63559 63197
%%BeginData:        148 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/plessey {

    20 dict begin                  % Confine variables to local scope

    /options exch def        % We are given an option string
    /barcode exch def        % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /validatecheck false def
    /includecheckintext false def
    /unidirectional false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Create a string of the available characters
    /barchars (0123456789ABCDEF) def
    /charvals 16 dict def
    0 1 15 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.plesseyBadCharacter (Plessey must contain only digits and letters A B C D E F) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {2 sub} if def

    % Calculate the checksums
    /checkbits barlen 4 mul 8 add array def
    checkbits barlen 4 mul [ 0 0 0 0 0 0 0 0 ] putinterval
    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        checkbits i 4 mul [
                indx 1 and
                indx -1 bitshift 1 and
                indx -2 bitshift 1 and
                indx -3 bitshift
        ] putinterval
    } for
    /checksalt [ 1 1 1 1 0 1 0 0 1 ] def
    0 1 barlen 4 mul 1 sub {
        /i exch def
        checkbits i get 1 eq {
            0 1 8 {
                /j exch def
                checkbits i j add checkbits i j add get checksalt j get xor put
            } for
        } if
    } for
    /checkval 0 def
    0 1 7 {
        /i exch def
        /checkval checkval 2 i exp cvi checkbits barlen 4 mul i add get mul add def
    } for
    /checksum1 checkval 15 and def
    /checksum2 checkval -4 bitshift def
    validatecheck {
        barcode barlen get barchars checksum1 get ne
        barcode barlen 1 add get barchars checksum2 get ne or {
            /bwipp.plesseyBadCheckDigits (Incorrect Plessey check digits provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    % Create an array containing the character mappings
    /encs
    [ (14141414) (32141414) (14321414) (32321414)
      (14143214) (32143214) (14323214) (32323214)
      (14141432) (32141432) (14321432) (32321432)
      (14143232) (32143232) (14323232) (32323232)
      (32321432) (541412323) (323)
    ] def

    /sbs barlen 8 mul unidirectional {27} {33} ifelse add string def
    /txt barlen 2 add array def

    % Put start character
    sbs 0 encs 16 get putinterval

    0 1 barlen 1 sub {
        /i exch def
        /indx charvals barcode i 1 getinterval get def
        sbs i 8 mul 8 add encs indx get putinterval
        txt i [barcode i 1 getinterval i 20 mul 20 add textyoffset textfont textsize] put
    } for

    % Put the checksum characters
    sbs barlen 8 mul 8 add encs checksum1 get putinterval
    sbs barlen 8 mul 16 add encs checksum2 get putinterval
    includecheckintext {
        txt barlen [barchars checksum1 1 getinterval barlen 20 mul 20 add textyoffset textfont textsize] put
        txt barlen 1 add [barchars checksum2 1 getinterval barlen 1 add 20 mul 20 add textyoffset textfont textsize] put
    } {
        txt barlen [( ) barlen 20 mul 20 add textyoffset textfont textsize] put
        txt barlen 1 add [( ) barlen 1 add 20 mul 20 add textyoffset textfont textsize] put
    } ifelse

    % Put end character
    sbs barlen 8 mul 24 add encs unidirectional {18} {17} ifelse get putinterval

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /plessey dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER plessey--

% --BEGIN ENCODER telepen--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Telepen
% --EXAM: ABCDEF
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp telepen 0.0 2019110800 64965 64780
%%BeginData:        175 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/telepen {

    20 dict begin                  % Confine variables to local scope

    /options exch def        % We are given an option string
    /barcode exch def        % We are given a barcode string

    /numeric false def
    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 1 def
    /parse false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    % Create an array containing the character mappings
    /encs
    [ (31313131)        (1131313111)     (33313111)       (1111313131)
      (3111313111)      (11333131)       (13133131)       (111111313111)
      (31333111)        (1131113131)     (33113131)       (1111333111)
      (3111113131)      (1113133111)     (1311133111)     (111111113131)
      (3131113111)      (11313331)       (333331)         (111131113111)
      (31113331)        (1133113111)     (1313113111)     (1111113331)
      (31131331)        (113111113111)   (3311113111)     (1111131331)
      (311111113111)    (1113111331)     (1311111331)     (11111111113111)
      (31313311)        (1131311131)     (33311131)       (1111313311)
      (3111311131)      (11333311)       (13133311)       (111111311131)
      (31331131)        (1131113311)     (33113311)       (1111331131)
      (3111113311)      (1113131131)     (1311131131)     (111111113311)
      (3131111131)      (1131131311)     (33131311)       (111131111131)
      (3111131311)      (1133111131)     (1313111131)     (111111131311)
      (3113111311)      (113111111131)   (3311111131)     (111113111311)
      (311111111131)    (111311111311)   (131111111311)   (11111111111131)
      (3131311111)      (11313133)       (333133)         (111131311111)
      (31113133)        (1133311111)     (1313311111)     (1111113133)
      (313333)          (113111311111)   (3311311111)     (11113333)
      (311111311111)    (11131333)       (13111333)       (11111111311111)
      (31311133)        (1131331111)     (33331111)       (1111311133)
      (3111331111)      (11331133)       (13131133)       (111111331111)
      (3113131111)      (1131111133)     (33111133)       (111113131111)
      (3111111133)      (111311131111)   (131111131111)   (111111111133)
      (31311313)        (113131111111)   (3331111111)     (1111311313)
      (311131111111)    (11331313)       (13131313)       (11111131111111)
      (3133111111)      (1131111313)     (33111313)       (111133111111)
      (3111111313)      (111313111111)   (131113111111)   (111111111313)
      (313111111111)    (1131131113)     (33131113)       (11113111111111)
      (3111131113)      (113311111111)   (131311111111)   (111111131113)
      (3113111113)      (11311111111111) (331111111111)   (111113111113)
      (31111111111111)  (111311111113)   (131111111113)   (1111111111111111)
    ] def

    /barlen barcode length def    % Length of the code
    /sbs barlen 16 mul 48 add string def
    /txt barlen array def

    % Put the start character ASCII 95
    /enc encs 95 get def
    sbs 0 enc putinterval
    /l enc length def

    /checksum 0 def
    /i 0 def /j 0 def
    { % loop
        i barlen eq {exit} if
        numeric {  % numeric mode: 00-99 & 0X-9X
            barcode i get 16 gt {
                /np barcode i 2 getinterval def
                np 1 1 getinterval (X) eq {  % X in even position amongst digits
                    /indx np 0 1 getinterval cvi 17 add def
                } {
                    /indx np cvi 27 add def
                } ifelse
                txt j [np j 16 mul 16 add textyoffset textfont textsize] put
                /i i 2 add def
            } {
                /indx barcode i get def
                txt j [( ) j 16 mul 16 add textyoffset textfont textsize] put
                /i i 1 add def
            } ifelse
        } {  % ASCII mode
            /indx barcode i get def
            indx 32 ge indx 126 le and {
                txt j [barcode i 1 getinterval j 16 mul 16 add textyoffset textfont textsize] put
            } {
                txt j [( ) j 16 mul 16 add textyoffset textfont textsize] put
            } ifelse
            /i i 1 add def
        } ifelse
        /checksum checksum indx add def
        /enc encs indx get def
        sbs l enc putinterval          % Put encoded digit into sbs
        /l l enc length add def
        /j j 1 add def
    } loop

    % Put the checksum character
    /checksum 127 checksum 127 mod sub 127 mod def
    /enc encs checksum get def
    sbs l enc putinterval
    /l l enc length add def

    % Put the end character ASCII 122
    /enc encs 122 get def
    sbs l enc putinterval
    /l l enc length add def

    % Shrink sbs and txt to fit exactly
    /sbs sbs 0 l getinterval def
    /txt txt 0 j getinterval def

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    includetext {
        /txt txt
    } if
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /telepen dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER telepen--

% --BEGIN ENCODER telepennumeric--
% --REQUIRES preamble raiseerror renlinear telepen--
% --DESC: Telepen Numeric
% --EXAM: 01234567
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp telepennumeric 0.0 2019110800 51594 55046
%%BeginData:         57 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /telepen dup /uk.co.terryburton.bwipp findresource put
%psc begin
/telepennumeric {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Get the result of encoding with code2of5 with version=industrial
    options (dontdraw) true put
    options (numeric) true put

    /args barcode options //telepen exec def

    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /telepennumeric dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER telepennumeric--

% --BEGIN ENCODER posicode--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: PosiCode
% --EXAM: ABC123
% --EXOP: version=b inkspread=-0.5 parsefnc includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp posicode 0.0 2019110800 109316 108663
%%BeginData:        425 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/posicode {

    20 dict begin                  % Confine variables to local scope

    /options exch def        % We are given an option string
    /barcode exch def        % We are given a barcode string

    /dontdraw false def
    /includetext false def    % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset -8.5 def
    /height 1 def
    /encoding (auto) def
    /version (a) def
    /checkoffset 0 def
    /raw false def
    /parse false def
    /parsefnc false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /encoding encoding cvlit def
    /version version cvlit def
    /checkoffset checkoffset cvi def
    /height height cvr def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Special function characters
    /la0  -1 def  /la1  -2 def  /la2  -3 def
    /sf0  -4 def  /sf1  -5 def  /sf2  -6 def
    /fn1  -7 def  /fn2  -8 def  /fn3  -9 def  /fn4 -10 def

    % Character maps for each state
    <<
    /normal
      [
          %  0    1    2        0    1    2        0    1    2
          [ (0)  (^)  (') ]  [ (1)  (;)   27 ]  [ (2)  (<)   28 ]  % 0-2
          [ (3)  (=)   29 ]  [ (4)  (>)   30 ]  [ (5)  (?)   31 ]  % 3-5
          [ (6)  (@)  (!) ]  [ (7)  ([)  (") ]  [ (8)   92  (#) ]  % 6-8
          [ (9)  (])  (&) ]  [ (A)  (a)    1 ]  [ (B)  (b)    2 ]  % 9-11
          [ (C)  (c)    3 ]  [ (D)  (d)    4 ]  [ (E)  (e)    5 ]  % 12-14
          [ (F)  (f)    6 ]  [ (G)  (g)    7 ]  [ (H)  (h)    8 ]  % 15-17
          [ (I)  (i)    9 ]  [ (J)  (j)   10 ]  [ (K)  (k)   11 ]  % 18-20
          [ (L)  (l)   12 ]  [ (M)  (m)   13 ]  [ (N)  (n)   14 ]  % 21-23
          [ (O)  (o)   15 ]  [ (P)  (p)   16 ]  [ (Q)  (q)   17 ]  % 24-26
          [ (R)  (r)   18 ]  [ (S)  (s)   19 ]  [ (T)  (t)   20 ]  % 27-29
          [ (U)  (u)   21 ]  [ (V)  (v)   22 ]  [ (W)  (w)   23 ]  % 30-32
          [ (X)  (x)   24 ]  [ (Y)  (y)   25 ]  [ (Z)  (z)   26 ]  % 33-35
          [ (-)  (_)   40 ]  [ (.)  (`)   41 ]  [ ( )  127    0 ]  % 36-38
          [ ($)  ({)  (*) ]  [ (/)  (|)  (,) ]  [ (+)  (})  (:) ]  % 39-41
          [ (%)  (~)  fn1 ]  [ la1  la0  fn2 ]  [ sf1  sf0  fn3 ]  % 42-44
          [ sf2  sf2  fn4 ]                                        % 45
      ]
    /limited
      [
          [ (0)  -98  -98 ]  [ (1)  -98   -98 ]  [ (2)  -98  -98 ]  % 0-2
          [ (3)  -98  -98 ]  [ (4)  -98   -98 ]  [ (5)  -98  -98 ]  % 3-5
          [ (6)  -98  -98 ]  [ (7)  -98   -98 ]  [ (8)  -98  -98 ]  % 6-8
          [ (9)  -98  -98 ]  [ (A)  -98   -98 ]  [ (B)  -98  -98 ]  % 9-11
          [ (C)  -98  -98 ]  [ (D)  -98   -98 ]  [ (E)  -98  -98 ]  % 12-14
          [ (F)  -98  -98 ]  [ (G)  -98   -98 ]  [ (H)  -98  -98 ]  % 15-17
          [ (I)  -98  -98 ]  [ (J)  -98   -98 ]  [ (K)  -98  -98 ]  % 18-20
          [ (L)  -98  -98 ]  [ (M)  -98   -98 ]  [ (N)  -98  -98 ]  % 21-23
          [ (O)  -98  -98 ]  [ (P)  -98   -98 ]  [ (Q)  -98  -98 ]  % 24-26
          [ (R)  -98  -98 ]  [ (S)  -98   -98 ]  [ (T)  -98  -98 ]  % 27-29
          [ (U)  -98  -98 ]  [ (V)  -98   -98 ]  [ (W)  -98  -98 ]  % 30-32
          [ (X)  -98  -98 ]  [ (Y)  -98   -98 ]  [ (Z)  -98  -98 ]  % 33-35
          [ (-)  -98  -98 ]  [ (.)  -98   -98 ]                     % 36-37
      ]
    >>
    version (a) eq version (b) eq or {/normal} {/limited} ifelse get
    /charmaps exch def

    % Invert charmaps to give character to value maps for each state
    /charvals [
        charmaps length dict charmaps length dict charmaps length dict
    ] def
    0 1 charmaps length 1 sub {
        /i exch def
        /encs charmaps i get def
        0 1 2 {
            /j exch def
            encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
            charvals j get exch i put
        } for
    } for
    /set0 charvals 0 get def
    /set1 charvals 1 get def
    /set2 charvals 2 get def

    raw {/encoding (raw) def} if

    encoding (raw) eq {
        /cws barlen array def
        /i 0 def /j 0 def
        { % loop
            i barlen eq {exit} if
            /cw barcode i 1 add 3 getinterval cvi def
            cws j cw put
            /i i 4 add def
            /j j 1 add def
        } loop
        /cws cws 0 j getinterval def
        /text () def
    } if

    encoding (auto) eq {

        /fncvals <<
            (FNC1) fn1
            (FNC2) fn2
            (FNC3) fn3
%            (FNC4) fn4        Not user accessible as encoded automatically
        >> def

        % Convert input into bytes accounting for FNC characters
        /msg barlen array def
        /text barlen string def
        /i 0 def /j 0 def {
            i barlen eq {exit} if
            /char barcode i get def
            text j char put
            parsefnc char 94 eq and i barlen 4 sub lt and {
                barcode i 1 add get 94 ne {
                    /char fncvals barcode i 1 add 4 getinterval get def
                    text j ( ) putinterval
                    /i i 4 add def
                } {
                    /i i 1 add def
                } ifelse
            } if
            msg j char put
            /i i 1 add def
            /j j 1 add def
        } loop
        /msg msg 0 j getinterval def
        /msglen msg length def
        /text text 0 j getinterval def

        % Standard and extended ASCII runlength at position
        /numSA [ msglen {0} repeat 0 ] def
        /numEA [ msglen {0} repeat 0 ] def
        msglen 1 sub -1 0 {
            /i exch def
            msg i get 0 ge {
                msg i get 128 ge {
                    numEA i numEA i 1 add get 1 add put
                } {
                    numSA i numSA i 1 add get 1 add put
                } ifelse
            } if
        } for

        % FNC4 codeword insertion for extended ASCII
        /ea false def /msgtmp [] def
        0 1 msglen 1 sub {
            /i exch def
            /c msg i get def
            ea c 128 lt xor not c 0 ge and {  % Other mode required
                ea {numSA} {numEA} ifelse i get dup  % Runlength of other mode
                i add msglen eq {3} {5} ifelse       % Does run terminate symbol
                lt {  % Shift
                    /msgtmp [ msgtmp aload pop fn4 ] def
                } {   % Latch
                    /msgtmp [ msgtmp aload pop fn4 fn4 ] def
                    /ea ea not def
                } ifelse
            } if
            /msgtmp [ msgtmp aload pop c 0 ge {c 127 and} {c} ifelse ] def
        } for
        /msg msgtmp def
        /msglen msg length def

        % Convert the input message to codewords
        /enc {
            exch get cws exch j exch put
            /j j 1 add def
        } bind def

        /cws msglen 2 mul array def
        /i 0 def /j 0 def /cset (set0) def
        {
            i msglen eq {exit} if

            {  % common exit

                % Read next two characters
                /char1 msg i get def
                /char2 i 1 add msglen lt {msg i 1 add get} {-99} ifelse def

                % If current mode is sufficient then directly encode
                cset load char1 known {
                    char1 cset load enc
                    /i i 1 add def
                    exit
                } if

                % If char1 is in set2 then shift encode
                set2 char1 known {
                    sf2 cset load enc
                    char1 set2 enc
                    /i i 1 add def
                    exit
                } if

                % If char2 is also not in this set then latch else shift encode
                cset load char2 known not {
                    cset (set0) eq {
                       la1 cset load enc
                       /cset (set1) def
                    } {
                       la0 cset load enc
                       /cset (set0) def
                    } ifelse
                    exit
                } {
                    cset (set0) eq {
                        sf1 cset load enc
                        char1 set1 enc
                    } {
                        sf0 cset load enc
                        char1 set0 enc
                    } ifelse
                    /i i 1 add def
                    exit
                } ifelse

                exit
            } loop

        } loop
        /cws cws 0 j getinterval def
    } if  % auto encoding

    % Create an array containing the character mappings
    <<   % ";"=11, "<"=12
    /a
        [ (141112) (131212) (121312) (111412) (131113)
          (121213) (111313) (121114) (111214) (111115)
          (181111) (171211) (161311) (151411) (141511)
          (131611) (121711) (111811) (171112) (161212)
          (151312) (141412) (131512) (121612) (111712)
          (161113) (151213) (141313) (131413) (121513)
          (111613) (151114) (141214) (131314) (121414)
          (111514) (141115) (131215) (121315) (111415)
          (131116) (121216) (111316) (121117) (111217)
          (111118) (1<111112) (111111111;1)
        ]
    /b
        [ (151213) (141313) (131413) (121513) (141214)
          (131314) (121414) (131215) (121315) (121216)
          (191212) (181312) (171412) (161512) (151612)
          (141712) (131812) (121912) (181213) (171313)
          (161413) (151513) (141613) (131713) (121813)
          (171214) (161314) (151414) (141514) (131614)
          (121714) (161215) (151315) (141415) (131515)
          (121615) (151216) (141316) (131416) (121516)
          (141217) (131317) (121417) (131218) (121318)
          (121219) (1<121312) (121212121<1)
        ]
    /limiteda
        [ (111411) (111312) (111213) (111114) (121311)
          (121212) (121113) (141111) (131211) (131112)
          (171111) (161211) (151311) (141411) (131511)
          (121611) (111711) (161112) (151212) (141312)
          (131412) (121512) (111612) (151113) (141213)
          (131313) (121413) (111513) (141114) (131214)
          (121314) (111414) (131115) (121215) (111315)
          (121116) (111216) (111117) (151111) (1)
        ]
    /limitedb
        [ (121512) (121413) (121314) (121215) (131412)
          (131313) (131214) (151212) (141312) (141213)
          (181212) (171312) (161412) (151512) (141612)
          (131712) (121812) (171213) (161313) (151413)
          (141513) (131613) (121713) (161214) (151314)
          (141414) (131514) (121614) (151215) (141315)
          (131415) (121515) (141216) (131316) (121416)
          (131217) (121317) (121218) (141212) (1)
        ]
    >>
    version get /encs exch def

    /c2w [
        [ 495 330 210 126  70  35  15   5 ]
        [ 165 120  84  56  35  20  10   4 ]
        [  45  36  28  21  15  10   6   3 ]
        [   9   8   7   6   5   4   3   2 ]
        [   1   1   1   1   1   1   1   1 ]
    ] def
    /v 0 def
    cws {
        /cw exch def
        6 {
            cw v xor 1 and 0 ne {
                /v v 7682 xor def
            } if
            /v v -1 bitshift def
            /cw cw -1 bitshift def
        } repeat
    } forall
    /v v checkoffset add def

    version (limiteda) eq version (limitedb) eq or {
        /v v 1023 and def
        v 824 gt v 853 lt and {
            /v v 292 add def
        } if
    } {
        /v v 1023 and 45 add def
    } ifelse

    /d [ 2 2 2 2 2 2 ] def
    /r 0 def /c 0 def /w 0 def /sum 0 def
    {
        sum v eq {exit} if
        /t sum c2w r get c get add def
        t v eq {
            /w w 1 add def
            d r w 2 add put
            /sum t def
        } if
        t v gt {
            d r w 2 add put
            /r r 1 add def
            /w 0 def
        } if
        t v lt {
            /c c 1 add def
            /w w 1 add def
            /sum t def
        } if
    } loop
    20 0 1 4 {d exch get sub} for
    d exch 5 exch put
    version (b) eq version (limitedb) eq or {
        /d [ d {1 add} forall ] def
    } if
    /cbs (111111111111) 12 string copy def
    5 -1 0 {
        /i exch def
        cbs 5 i sub 2 mul 1 add d i get 47 add put
    } for

    % Concatenate the space bar successions
    /sbs cws length 6 mul 31 add string def
    encs encs length 2 sub get dup
    sbs exch 0 exch putinterval
    length /j exch def
    0 1 cws length 1 sub {
        /i exch def
        sbs j encs cws i get get putinterval
        /j j 6 add def
    } for
    sbs j cbs putinterval
    /j j 12 add def
    encs encs length 1 sub get dup
    sbs exch j exch putinterval
    length j add /j exch def
    /sbs sbs 0 j getinterval def

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    /txt [ [text textxoffset textyoffset textfont textsize] ]
    /textxalign (center)
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /posicode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER posicode--

% --BEGIN ENCODER codablockf--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: Codablock F
% --EXAM: CODABLOCK F 34567890123456789010040digit
% --EXOP: columns=8
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp codablockf 0.0 2019110800 130987 130604
%%BeginData:        522 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/codablockf {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /rows -1 def
    /columns 8 def
    /rowheight 10 def
    /sepheight 1 def
    /parse false def
    /parsefnc false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /rows rows cvi def
    /columns columns cvi def
    /rowheight rowheight cvi def
    /sepheight sepheight cvi def

    columns 4 ge columns 62 le and
    rows 2 ge rows 44 le and rows -1 eq or and {/c columns def} if

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Convert input into bytes accounting for FNC characters
    /swa -1 def  /swb -2 def  /swc -3 def  /sft -4 def
    /fn1 -5 def  /fn2 -6 def  /fn3 -7 def  /fn4 -8 def
    /sta -9 def  /stp -10 def

    % Character maps for each state
    /charmaps [
      %  A    B    C         A    B    C         A    B    C
      [  32   32  (00) ]  [ (!)  (!)  (01) ]  [ (")  (")  (02) ]  % 0-2
      [ (#)  (#)  (03) ]  [ ($)  ($)  (04) ]  [ (%)  (%)  (05) ]  % 3-5
      [ (&)  (&)  (06) ]  [ (')  (')  (07) ]  [  40   40  (08) ]  % 6-8
      [  41   41  (09) ]  [ (*)  (*)  (10) ]  [ (+)  (+)  (11) ]  % 9-11
      [ (,)  (,)  (12) ]  [ (-)  (-)  (13) ]  [ (.)  (.)  (14) ]  % 12-14
      [ (/)  (/)  (15) ]  [ (0)  (0)  (16) ]  [ (1)  (1)  (17) ]  % 15-17
      [ (2)  (2)  (18) ]  [ (3)  (3)  (19) ]  [ (4)  (4)  (20) ]  % 18-20
      [ (5)  (5)  (21) ]  [ (6)  (6)  (22) ]  [ (7)  (7)  (23) ]  % 21-23
      [ (8)  (8)  (24) ]  [ (9)  (9)  (25) ]  [ (:)  (:)  (26) ]  % 24-26
      [ (;)  (;)  (27) ]  [ (<)  (<)  (28) ]  [ (=)  (=)  (29) ]  % 27-29
      [ (>)  (>)  (30) ]  [ (?)  (?)  (31) ]  [ (@)  (@)  (32) ]  % 30-32
      [ (A)  (A)  (33) ]  [ (B)  (B)  (34) ]  [ (C)  (C)  (35) ]  % 33-35
      [ (D)  (D)  (36) ]  [ (E)  (E)  (37) ]  [ (F)  (F)  (38) ]  % 36-38
      [ (G)  (G)  (39) ]  [ (H)  (H)  (40) ]  [ (I)  (I)  (41) ]  % 39-41
      [ (J)  (J)  (42) ]  [ (K)  (K)  (43) ]  [ (L)  (L)  (44) ]  % 42-44
      [ (M)  (M)  (45) ]  [ (N)  (N)  (46) ]  [ (O)  (O)  (47) ]  % 45-47
      [ (P)  (P)  (48) ]  [ (Q)  (Q)  (49) ]  [ (R)  (R)  (50) ]  % 48-50
      [ (S)  (S)  (51) ]  [ (T)  (T)  (52) ]  [ (U)  (U)  (53) ]  % 51-53
      [ (V)  (V)  (54) ]  [ (W)  (W)  (55) ]  [ (X)  (X)  (56) ]  % 54-56
      [ (Y)  (Y)  (57) ]  [ (Z)  (Z)  (58) ]  [ ([)  ([)  (59) ]  % 57-59
      [  92   92  (60) ]  [ (])  (])  (61) ]  [ (^)  (^)  (62) ]  % 60-62
      [ (_)  (_)  (63) ]  [   0  (`)  (64) ]  [   1  (a)  (65) ]  % 63-65
      [   2  (b)  (66) ]  [   3  (c)  (67) ]  [   4  (d)  (68) ]  % 66-68
      [   5  (e)  (69) ]  [   6  (f)  (70) ]  [   7  (g)  (71) ]  % 69-71
      [   8  (h)  (72) ]  [   9  (i)  (73) ]  [  10  (j)  (74) ]  % 72-74
      [  11  (k)  (75) ]  [  12  (l)  (76) ]  [  13  (m)  (77) ]  % 75-77
      [  14  (n)  (78) ]  [  15  (o)  (79) ]  [  16  (p)  (80) ]  % 78-80
      [  17  (q)  (81) ]  [  18  (r)  (82) ]  [  19  (s)  (83) ]  % 81-83
      [  20  (t)  (84) ]  [  21  (u)  (85) ]  [  22  (v)  (86) ]  % 84-86
      [  23  (w)  (87) ]  [  24  (x)  (88) ]  [  25  (y)  (89) ]  % 87-89
      [  26  (z)  (90) ]  [  27  ({)  (91) ]  [  28  (|)  (92) ]  % 90-92
      [  29  (})  (93) ]  [  30  (~)  (94) ]  [  31  127  (95) ]  % 93-95
      [ fn3  fn3  (96) ]  [ fn2  fn2  (97) ]  [ sft  sft  (98) ]  % 96-98
      [ swc  swc  (99) ]  [ swb  fn4  swb  ]  [ fn4  swa  swa  ]  % 99-101
      [ fn1  fn1  fn1  ]  [ sta  sta  sta  ]  [ stp  stp  stp  ]  % 102-104
    ] def

    % Invert charmaps to give character to value maps for each state
    /charvals [ 105 dict 105 dict 105 dict ] def
    0 1 charmaps length 1 sub {
        /i exch def
        /encs charmaps i get def
        0 1 2 {
            /j exch def
            encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
            charvals j get exch i put
        } for
    } for
    /seta charvals 0 get def
    /setb charvals 1 get def
    /setc charvals 2 get def

    /fncvals <<
        (FNC1) fn1
%        (FNC2) fn2      Not permitted for Codablock F
        (FNC3) fn3
%        (FNC4) fn4      Not user accessible as encoded automatically
    >> def
    /msg barlen array def
    /i 0 def /j 0 def {
        i barlen eq {exit} if
        /char barcode i get def
        parsefnc char 94 eq and i barlen 4 sub lt and {
            barcode i 1 add get 94 ne {
                /char fncvals barcode i 1 add 4 getinterval get def
                /i i 4 add def
            } {
                /i i 1 add def
            } ifelse
        } if
        msg j char put
        /i i 1 add def
        /j j 1 add def
    } loop
    /msg msg 0 j getinterval def
    /msglen msg length def

    % FNC4 codeword insertion for extended ASCII
    /msgtmp [] def
    msg {
        /char exch def
        /msgtmp [ msgtmp aload pop char 128 lt {char} {fn4 char 127 and} ifelse ] def
    } forall
    /msg msgtmp def
    /msglen msg length def

    % Determine digit runlength and characters from given position
    /numsscr {
        /n 0 def /s 0 def
        /p exch def {
            p msglen ge {exit} if
            msg p get
            dup setc exch known not {pop exit} if
            fn1 eq {
                % FNC1 in odd position of run like two digits
                s 2 mod 0 eq {/s s 1 add def} {exit} ifelse
            } if
            /n n 1 add def
            /s s 1 add def
            /p p 1 add def
        } loop
        n s
    } bind def

    % Encoding for each alphabet
    /enca {
        seta exch get cws exch j exch put
        /j j 1 add def
    } bind def
    /encb {
        setb exch get cws exch j exch put
        /j j 1 add def
    } bind def
    /encc {
        dup type /arraytype ne {
            setc exch get
        } {
            aload pop 48 sub exch 48 sub 10 mul add
        } ifelse
        cws exch j exch put
        /j j 1 add def
    } bind def

    % Character exclusively in either alphabet A or B
    /anotb {dup seta exch known exch setb exch known not and} bind def
    /bnota {dup setb exch known exch seta exch known not and} bind def

    % Pre-compute relative position of next anotb and next bnota characters
    /nextanotb [ msg length {0} repeat 9999 ] def
    /nextbnota [ msg length {0} repeat 9999 ] def
    msg length 1 sub -1 0 {
        /i exch def
        msg i get anotb {
            nextanotb i 0 put
        } {
            nextanotb i nextanotb i 1 add get 1 add put
        } ifelse
        msg i get bnota {
            nextbnota i 0 put
        } {
            nextbnota i nextbnota i 1 add get 1 add put
        } ifelse
    } for

    % Does a-only come before b-only after given position and vice versa
    /abeforeb {dup nextanotb exch get exch nextbnota exch get lt} bind def
    /bbeforea {dup nextbnota exch get exch nextanotb exch get lt} bind def

    % Add padding to row
    /padrow {
        {
           {  % common exit
               cset (seta) eq {swc enca /cset (setc) def exit} if
               cset (setb) eq {swc encb /cset (setc) def exit} if
               cset (setc) eq {swb encc /cset (setb) def exit} if
           } loop
        } repeat
    } bind def

    % Convert message to codewords
    /cws c 5 add rows -1 ne {rows} {44} ifelse mul array def

    /i 0 def /j 0 def /r 1 def
    /lastrow false def {

        lastrow {exit} if

        % Add start character and code subset selector
        sta enca
        i msglen lt {i numsscr} {-1 -1} ifelse /nums exch def /nchars exch def
        {  % common exit
            msglen 0 eq {
                swb enca
                /cset (setb) def
                exit
            } if
            nums 2 ge {
                swc enca
                /cset (setc) def
                exit
            } if
            i abeforeb {
                sft enca
                /cset (seta) def
                exit
            } if
            swb enca
            /cset (setb) def
            exit
        } loop
        /j j 1 add def  % Skip row indicator position

        % Main encoding loop
        /endofrow false def {
            /rem c 3 add j c 5 add mod sub def  % Codewords to end of row

            i msglen eq endofrow or {exit} if

            i numsscr /nums exch def /nchars exch def

            % Determine switches and shifts
            {  % common exit
                cset (seta) eq cset (setb) eq or nums 4 ge and
                msg i get fn1 ne and {
                    nums 2 mod 0 eq
                    rem 3 ge and {
                        swc cset (seta) eq {enca} {encb} ifelse
                        /cset (setc) def
                        2 {
                            msg i get fn1 eq {
                                fn1 encc
                                /i i 1 add def
                            } {
                                msg i 2 getinterval encc
                                /i i 2 add def
                            } ifelse
                        } repeat
                        exit
                    } if
                    nums 2 mod 0 ne
                    rem 4 ge and {
                        msg i get cset (seta) eq {enca} {encb} ifelse
                        /i i 1 add def
                        swc cset (seta) eq {enca} {encb} ifelse
                        /cset (setc) def
                        2 {
                            msg i get fn1 eq {
                                fn1 encc
                                /i i 1 add def
                            } {
                                msg i 2 getinterval encc
                                /i i 2 add def
                            } ifelse
                        } repeat
                        exit
                    } if
                } if
                cset (setb) eq msg i get anotb and
                rem 2 ge and {
                    i msglen 1 sub lt {
                        i 1 add bbeforea {
                            sft encb
                            msg i get enca
                            /i i 1 add def
                            exit
                        } if
                    } if
                    swa encb
                    /cset (seta) def
                    msg i get enca
                    /i i 1 add def
                    exit
                } if
                cset (seta) eq msg i get bnota and
                rem 2 ge and {
                    i msglen 1 sub lt {
                        i 1 add abeforeb {
                            sft enca
                            msg i get encb
                            /i i 1 add def
                            exit
                        } if
                    } if
                    swb enca
                    /cset (setb) def
                    msg i get encb
                    /i i 1 add def
                    exit
                } if
                cset (setc) eq nums 2 lt and
                rem 2 ge and {
                    i abeforeb {
                        swa encc
                        /cset (seta) def
                        msg i get enca
                        /i i 1 add def
                        exit
                    } if
                    swb encc
                    /cset (setb) def
                    msg i get encb
                    /i i 1 add def
                    exit
                } if

                % No switches or latches so try to encode
                cset (seta) eq seta msg i get known and
                rem 1 ge and {
                    msg i get enca
                    /i i 1 add def
                    exit
                } if
                cset (setb) eq setb msg i get known and
                rem 1 ge and {
                    msg i get encb
                    /i i 1 add def
                    exit
                } if
                cset (setc) eq nums 2 ge and
                rem 1 ge and {
                    msg i get fn1 eq {
                        fn1 encc
                        /i i 1 add def
                    } {
                        msg i 2 getinterval encc
                        /i i 2 add def
                    } ifelse
                    exit
                } if

                % Encoding does not fit in the row
                /endofrow true def
                exit

            } loop  % common exit

        } loop

        % Determine whether this is the final row
        r rows eq rows -1 eq or r 1 gt and i msglen eq and rem 2 ge and {
            rem 2 sub padrow
            /j j 3 add def  % Skip symbol and row checksum character positions
            stp enca
            /lastrow true def
        } {
            rem padrow
            /j j 1 add def  % Skip row checksum character positions
            stp enca
            /r r 1 add def
        } ifelse

    } loop
    /cws cws 0 j getinterval def

    % Maps for row indicators and symbol checksums
    /abmap [
        64 1 95 {} for
         0 1 15 {} for
        26 1 63 {} for
    ] def
    /cmap [ 0 1 85 {} for ] def

    % Add symbol check characters to last row
    /chkmsg msglen array def
    /j 0 def
    0 1 msglen 1 sub {
        /i exch def
        /char msg i get def
        char 0 ge {chkmsg j char put /j j 1 add def} if
        char fn1 eq i 0 ne and {chkmsg j 29 put /j j 1 add def} if
    } for
    /t1 0 def /t2 0 def /k1 0 def /k2 0 def
    0 1 j 1 sub {
        /i exch def
        /t1 chkmsg i get i mul 86 mod def
        /t2 t1 chkmsg i get add 86 mod def
        /k1 k1 t2 add 86 mod def
        /k2 k2 t1 add 86 mod def
    } for
    cws cws length 4 sub cset (setc) ne {abmap} {cmap} ifelse k1 get put
    cws cws length 3 sub cset (setc) ne {abmap} {cmap} ifelse k2 get put

    % Populate row indicators
    cws 2 2 copy 1 sub get 99 ne {abmap} {cmap} ifelse r 2 sub get put
    1 1 r 1 sub {
        /i exch def
        cws i c 5 add mul 2 add 2 copy 1 sub get 99 ne {abmap} {cmap} ifelse i 42 add get put
    } for

    % Calculate row check characters
    0 1 r 1 sub {
        cws exch c 5 add mul c 4 add getinterval /rcws exch def
        /csum rcws 0 get def
        1 1 rcws length 2 sub {
            /i exch def
            /csum csum rcws i get i mul add def
        } for
        rcws rcws length 1 sub csum 103 mod put
    } for

    % Create an array containing the character mappings
    /encs
    [ (212222) (222122) (222221) (121223) (121322) (131222) (122213)
      (122312) (132212) (221213) (221312) (231212) (112232) (122132)
      (122231) (113222) (123122) (123221) (223211) (221132) (221231)
      (213212) (223112) (312131) (311222) (321122) (321221) (312212)
      (322112) (322211) (212123) (212321) (232121) (111323) (131123)
      (131321) (112313) (132113) (132311) (211313) (231113) (231311)
      (112133) (112331) (132131) (113123) (113321) (133121) (313121)
      (211331) (231131) (213113) (213311) (213131) (311123) (311321)
      (331121) (312113) (312311) (332111) (314111) (221411) (431111)
      (111224) (111422) (121124) (121421) (141122) (141221) (112214)
      (112412) (122114) (122411) (142112) (142211) (241211) (221114)
      (413111) (241112) (134111) (111242) (121142) (121241) (114212)
      (124112) (124211) (411212) (421112) (421211) (212141) (214121)
      (412121) (111143) (111341) (131141) (114113) (114311) (411113)
      (411311) (113141) (114131) (311141) (411131) (211412) (2331112)
    ] def

    % Derive the bits for each row
    /rowbits r array def
    0 1 r 1 sub {
        /i exch def
        /sbs [
            cws i c 5 add mul c 5 add getinterval {
                encs exch get {48 sub} forall
            } forall
        ] def
        mark
        0 sbs {1 index 1 eq {{0}} {{1}} ifelse repeat} forall
        counttomark 1 sub array astore exch pop exch pop
        rowbits i 3 -1 roll put
    } for

    % Populate the bitmap
    /symwid c 11 mul 57 add def
    /pixs [
        symwid sepheight mul {1} repeat
        0 1 r 2 sub {
            /i exch def
            rowheight {rowbits i get aload pop} repeat
            sepheight {
                1 1 0 1 0 0 0 0 1 0 0
                symwid 24 sub {1} repeat
                1 1 0 0 0 1 1 1 0 1 0 1 1
            } repeat
        } for
        rowheight {rowbits r 1 sub get aload pop} repeat
        symwid sepheight mul {1} repeat
    ] def

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx symwid
    /pixy pixs length symwid idiv
    /height pixs length symwid idiv 72 div
    /width symwid 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /codablockf dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER codablockf--

% --BEGIN ENCODER code16k--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: Code 16K
% --EXAM: Abcd-1234567890-wxyZ
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp code16k 0.0 2019110800 155924 155364
%%BeginData:        746 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code16k {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /mode -1 def
    /pos -1 def
    /rows 0 def
    /rowheight 8 def
    /sepheight 1 def
    /encoding (auto) def
    /raw false def
    /parse false def
    /parsefnc false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /mode mode cvi def
    /pos pos cvi def
    /rows rows cvi def
    /rowheight rowheight cvi def
    /sepheight sepheight cvi def

    pos -1 ne {/rows 16 def} if

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Convert input into bytes accounting for FNC characters
    /swa  -1 def  /swb  -2 def  /swc  -3 def
    /sa1  -4 def  /sb1  -5 def  /sc1  -6 def
    /sa2  -7 def  /sb2  -8 def  /sc2  -9 def
    /pad -10 def  /sb3 -11 def  /sc3 -12 def
    /fn1 -13 def  /fn2 -14 def  /fn3 -15 def  /fn4 -16 def

    % Character maps for each state
    /charmaps [
      %  A    B    C         A    B    C         A    B    C
      [  32   32  (00) ]  [ (!)  (!)  (01) ]  [ (")  (")  (02) ]  % 0-2
      [ (#)  (#)  (03) ]  [ ($)  ($)  (04) ]  [ (%)  (%)  (05) ]  % 3-5
      [ (&)  (&)  (06) ]  [ (')  (')  (07) ]  [  40   40  (08) ]  % 6-8
      [  41   41  (09) ]  [ (*)  (*)  (10) ]  [ (+)  (+)  (11) ]  % 9-11
      [ (,)  (,)  (12) ]  [ (-)  (-)  (13) ]  [ (.)  (.)  (14) ]  % 12-14
      [ (/)  (/)  (15) ]  [ (0)  (0)  (16) ]  [ (1)  (1)  (17) ]  % 15-17
      [ (2)  (2)  (18) ]  [ (3)  (3)  (19) ]  [ (4)  (4)  (20) ]  % 18-20
      [ (5)  (5)  (21) ]  [ (6)  (6)  (22) ]  [ (7)  (7)  (23) ]  % 21-23
      [ (8)  (8)  (24) ]  [ (9)  (9)  (25) ]  [ (:)  (:)  (26) ]  % 24-26
      [ (;)  (;)  (27) ]  [ (<)  (<)  (28) ]  [ (=)  (=)  (29) ]  % 27-29
      [ (>)  (>)  (30) ]  [ (?)  (?)  (31) ]  [ (@)  (@)  (32) ]  % 30-32
      [ (A)  (A)  (33) ]  [ (B)  (B)  (34) ]  [ (C)  (C)  (35) ]  % 33-35
      [ (D)  (D)  (36) ]  [ (E)  (E)  (37) ]  [ (F)  (F)  (38) ]  % 36-38
      [ (G)  (G)  (39) ]  [ (H)  (H)  (40) ]  [ (I)  (I)  (41) ]  % 39-41
      [ (J)  (J)  (42) ]  [ (K)  (K)  (43) ]  [ (L)  (L)  (44) ]  % 42-44
      [ (M)  (M)  (45) ]  [ (N)  (N)  (46) ]  [ (O)  (O)  (47) ]  % 45-47
      [ (P)  (P)  (48) ]  [ (Q)  (Q)  (49) ]  [ (R)  (R)  (50) ]  % 48-50
      [ (S)  (S)  (51) ]  [ (T)  (T)  (52) ]  [ (U)  (U)  (53) ]  % 51-53
      [ (V)  (V)  (54) ]  [ (W)  (W)  (55) ]  [ (X)  (X)  (56) ]  % 54-56
      [ (Y)  (Y)  (57) ]  [ (Z)  (Z)  (58) ]  [ ([)  ([)  (59) ]  % 57-59
      [  92   92  (60) ]  [ (])  (])  (61) ]  [ (^)  (^)  (62) ]  % 60-62
      [ (_)  (_)  (63) ]  [   0  (`)  (64) ]  [   1  (a)  (65) ]  % 63-65
      [   2  (b)  (66) ]  [   3  (c)  (67) ]  [   4  (d)  (68) ]  % 66-68
      [   5  (e)  (69) ]  [   6  (f)  (70) ]  [   7  (g)  (71) ]  % 69-71
      [   8  (h)  (72) ]  [   9  (i)  (73) ]  [  10  (j)  (74) ]  % 72-74
      [  11  (k)  (75) ]  [  12  (l)  (76) ]  [  13  (m)  (77) ]  % 75-77
      [  14  (n)  (78) ]  [  15  (o)  (79) ]  [  16  (p)  (80) ]  % 78-80
      [  17  (q)  (81) ]  [  18  (r)  (82) ]  [  19  (s)  (83) ]  % 81-83
      [  20  (t)  (84) ]  [  21  (u)  (85) ]  [  22  (v)  (86) ]  % 84-86
      [  23  (w)  (87) ]  [  24  (x)  (88) ]  [  25  (y)  (89) ]  % 87-89
      [  26  (z)  (90) ]  [  27  ({)  (91) ]  [  28  (|)  (92) ]  % 90-92
      [  29  (})  (93) ]  [  30  (~)  (94) ]  [  31  127  (95) ]  % 93-95
      [ fn3  fn3  (96) ]  [ fn2  fn2  (97) ]  [ sb1  sa1  (98) ]  % 96-98
      [ swc  swc  (99) ]  [ swb  fn4  swb  ]  [ fn4  swa  swa  ]  % 99-101
      [ fn1  fn1  fn1  ]  [ pad  pad  pad  ]  [ sb2  sa2  sb1  ]  % 102-104
      [ sc2  sc2  sb2  ]  [ sc3  sc3  sb3  ]                      % 105-106
    ] def

    % Invert charmaps to give character to value maps for each state
    /charvals [ 109 dict 109 dict 109 dict ] def
    0 1 charmaps length 1 sub {
        /i exch def
        /encs charmaps i get def
        0 1 2 {
            /j exch def
            encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
            charvals j get exch i put
        } for
    } for
    /seta charvals 0 get def
    /setb charvals 1 get def
    /setc charvals 2 get def

    raw {/encoding (raw) def} if

    encoding (raw) eq {
        /cws barlen array def
        /i 0 def /j 0 def
        { % loop
            i barlen eq {exit} if
            /cw barcode i 1 add 3 getinterval cvi def
            cws j cw put
            /i i 4 add def
            /j j 1 add def
        } loop
        /cws cws 0 j getinterval def
        /text () def
    } if

    encoding (auto) eq {

        /fncvals <<
            (FNC1) fn1
            (FNC2) fn2
            (FNC3) fn3
%            (FNC4) fn4        Not user accessible as encoded automatically
        >> def
        /msg barlen array def
        /i 0 def /j 0 def {
            i barlen eq {exit} if
            /char barcode i get def
            parsefnc char 94 eq and i barlen 4 sub lt and {
                barcode i 1 add get 94 ne {
                    /char fncvals barcode i 1 add 4 getinterval get def
                    /i i 4 add def
                } {
                    /i i 1 add def
                } ifelse
            } if
            msg j char put
            /i i 1 add def
            /j j 1 add def
        } loop
        /msg msg 0 j getinterval def
        /msglen msg length def

        % Standard and extended ASCII runlength at position
        /numSA [ msglen {0} repeat 0 ] def
        /numEA [ msglen {0} repeat 0 ] def
        msglen 1 sub -1 0 {
            /i exch def
            msg i get 0 ge {
                msg i get 128 ge {
                    numEA i numEA i 1 add get 1 add put
                } {
                    numSA i numSA i 1 add get 1 add put
                } ifelse
            } if
        } for

        % FNC4 codeword insertion for extended ASCII
        /ea false def /msgtmp [] def
        0 1 msglen 1 sub {
            /i exch def
            /c msg i get def
            ea c 128 lt xor not c 0 ge and {  % Other mode required
                ea {numSA} {numEA} ifelse i get dup  % Runlength of other mode
                i add msglen eq {3} {5} ifelse       % Does run terminate symbol
                lt {  % Shift
                    /msgtmp [ msgtmp aload pop fn4 ] def
                } {   % Latch
                    /msgtmp [ msgtmp aload pop fn4 fn4 ] def
                    /ea ea not def
                } ifelse
            } if
            /msgtmp [ msgtmp aload pop c 0 ge {c 127 and} {c} ifelse ] def
        } for
        /msg msgtmp def
        /msglen msg length def

        % Determine digit runlength and characters from given position
        /numsscr {
            /n 0 def /s 0 def
            /p exch def {
                p msglen ge {exit} if
                msg p get
                dup setc exch known not {pop exit} if
                fn1 eq {
                    % FNC1 in odd position of run like two digits
                    s 2 mod 0 eq {/s s 1 add def} {exit} ifelse
                } if
                /n n 1 add def
                /s s 1 add def
                /p p 1 add def
            } loop
            n s
        } bind def

        % Encoding for each alphabet
        /enca {
            seta exch get cws exch j exch put
            /j j 1 add def
        } bind def
        /encb {
            setb exch get cws exch j exch put
            /j j 1 add def
        } bind def
        /encc {
            dup type /arraytype ne {
                setc exch get
            } {
                aload pop 48 sub exch 48 sub 10 mul add
            } ifelse
            cws exch j exch put
            /j j 1 add def
        } bind def

        % Character exclusively in either alphabet A or B
        /anotb {dup seta exch known exch setb exch known not and} bind def
        /bnota {dup setb exch known exch seta exch known not and} bind def

        % Pre-compute relative position of next anotb and next bnota characters
        /nextanotb [ msg length {0} repeat 9999 ] def
        /nextbnota [ msg length {0} repeat 9999 ] def
        msg length 1 sub -1 0 {
            /i exch def
            msg i get anotb {
                nextanotb i 0 put
            } {
                nextanotb i nextanotb i 1 add get 1 add put
            } ifelse
            msg i get bnota {
                nextbnota i 0 put
            } {
                nextbnota i nextbnota i 1 add get 1 add put
            } ifelse
        } for

        % Does a-only come before b-only after given position and vice versa
        /abeforeb {dup nextanotb exch get exch nextbnota exch get lt} bind def
        /bbeforea {dup nextbnota exch get exch nextanotb exch get lt} bind def

        /cws barcode length 2 mul 3 add array def

        % Select mode and encode first characters
        /i 0 def /j 0 def
        {  % common exit
            % extended data length
            pos -1 ne {
                % encode one and two
                cws 0 pos 10 idiv 1 sub put
                cws 1 pos 10 mod 1 sub put
                /j 2 def
                /cset (setb) def
                /mode 7 def
                exit
            } if
            % empty => b
            msglen 0 eq {
                /cset (setb) def
                /mode 1 def
                exit
            } if
            % FNC1 . 2+ nums => c fnc1
            msglen 2 ge {
                msg 0 get fn1 eq 1 numsscr exch pop 2 ge and {
                    /cset (setc) def
                    /mode 4 def
                    /i 1 def
                    exit
                } if
            } if
            % FNC1 => b fnc1
            msg 0 get fn1 eq {
                /cset (setb) def
                /mode 3 def
                /i 1 def
                exit
            } if
            msglen 2 ge {
                % 2+ even nums => c
                0 numsscr exch pop dup 2 ge exch 2 mod 0 eq and {
                    /cset (setc) def
                    /mode 2 def
                    exit
                } if
                % 3+ odd nums => c sb1 encode
                0 numsscr exch pop dup 3 ge exch 2 mod 1 eq and {
                    msg 0 get encb
                    /cset (setc) def
                    /mode 5 def
                    /i 1 def
                    exit
                } if
                % b . 2+ even nums => c sb1 encode
                setb msg 0 get known
                1 numsscr exch pop dup 2 ge exch 2 mod 0 eq and and {
                    msg 0 get encb
                    /cset (setc) def
                    /mode 5 def
                    /i 1 def
                    exit
                } if
                % b . 3+ odd nums => c sb2 encode
                setb msg 0 get known
                1 numsscr exch pop dup 3 ge exch 2 mod 1 eq and and {
                    msg 0 get encb
                    msg 1 get encb
                    /cset (setc) def
                    /mode 6 def
                    /i 2 def
                    exit
                } if
                % b . b . 2+ even nums => c sb2 encode
                setb msg 0 get known
                setb msg 1 get known and
                2 numsscr exch pop dup 2 ge exch 2 mod 0 eq and and {
                    msg 0 get encb
                    msg 1 get encb
                    /cset (setc) def
                    /mode 6 def
                    /i 2 def
                    exit
                } if
            } if
            % anotb before bnota => a
            0 abeforeb {
                /cset (seta) def
                /mode 0 def
                exit
            } if
            % otherwise => b
            /cset (setb) def
            /mode 1 def
            exit
        } loop

        {  % Encode remainder
            i msglen eq {exit} if

            i numsscr /nums exch def /nchars exch def

            % Determine switches and shifts
            {  % common exit
                cset (seta) eq {
                    % bnota . anotb before bnota => sb1 encode
                    i msglen 1 sub lt {
                        msg i get bnota
                        i 1 add abeforeb and {
                            sb1 enca
                            msg i get encb
                            /i i 1 add def
                            exit
                        } if
                    } if
                    % bnota . bnota . anotb before bnota => sb2 encode
                    i msglen 2 sub lt {
                        msg i get bnota
                        msg i 1 add get bnota and
                        i 2 add abeforeb and {
                            sb2 enca
                            msg i get encb
                            msg i 1 add get encb
                            /i i 2 add def
                            exit
                        } if
                    } if
                    % bnota => swb
                    msg i get bnota {
                        swb enca
                        /cset (setb) def
                        exit
                    } if
                    % 4 nums . a => sc2 encode
                    i msglen 4 sub lt {
                        nums 4 eq
                        seta msg i 4 add get known and {
                            sc2 enca
                            2 {
                                msg i get fn1 eq {
                                    fn1 encc
                                    /i i 1 add def
                                } {
                                    msg i 2 getinterval encc
                                    /i i 2 add def
                                } ifelse
                            } repeat
                            exit
                        } if
                    } if
                    % 6 nums . a => sc3 encode
                    i msglen 6 sub lt {
                        nums 6 eq
                        seta msg i 6 add get known and {
                            sc3 enca
                            3 {
                                msg i get fn1 eq {
                                    fn1 encc
                                    /i i 1 add def
                                } {
                                    msg i 2 getinterval encc
                                    /i i 2 add def
                                } ifelse
                            } repeat
                            exit
                        } if
                    } if
                    % 4+ even nums => swc
                    nums 4 ge nums 2 mod 0 eq and {
                        swc enca
                        /cset (setc) def
                        exit
                    } if
                    % otherwise => encode
                    msg i get enca
                    /i i 1 add def
                    exit
                } if
                cset (setb) eq {
                    % anotb . bnota before anotb => sa1 encode
                    i msglen 1 sub lt {
                        msg i get anotb
                        i 1 add bbeforea and {
                            sa1 encb
                            msg i get enca
                            /i i 1 add def
                            exit
                        } if
                    } if
                    % anotb . anotb . bnota before anotb => sa2 encode
                    i msglen 2 sub lt {
                        msg i get anotb
                        msg i 1 add get anotb and
                        i 2 add bbeforea and {
                            sa2 encb
                            msg i get enca
                            msg i 1 add get enca
                            /i i 2 add def
                            exit
                        } if
                    } if
                    % anotb => swa
                    msg i get anotb {
                        swa encb
                        /cset (seta) def
                        exit
                    } if
                    % 4 nums . b => sc2 encode
                    i msglen 4 sub lt {
                        nums 4 eq
                        setb msg i 4 add get known and {
                            sc2 encb
                            2 {
                                msg i get fn1 eq {
                                    fn1 encc
                                    /i i 1 add def
                                } {
                                    msg i 2 getinterval encc
                                    /i i 2 add def
                                } ifelse
                            } repeat
                            exit
                        } if
                    } if
                    % 6 nums . b => sc3 encode
                    i msglen 6 sub lt {
                        nums 6 eq
                        setb msg i 6 add get known and {
                            sc3 encb
                            3 {
                                msg i get fn1 eq {
                                    fn1 encc
                                    /i i 1 add def
                                } {
                                    msg i 2 getinterval encc
                                    /i i 2 add def
                                } ifelse
                            } repeat
                            exit
                        } if
                    } if
                    % 4+ even nums => swc
                    nums 4 ge nums 2 mod 0 eq and {
                        swc encb
                        /cset (setc) def
                        exit
                    } if
                    % otherwise => encode
                    msg i get encb
                    /i i 1 add def
                    exit
                } if
                cset (setc) eq {
                    % 2+ nums => encode
                    nums 2 ge {
                        msg i get fn1 eq {
                            fn1 encc
                            /i i 1 add def
                        } {
                            msg i 2 getinterval encc
                            /i i 2 add def
                        } ifelse
                        exit
                    } if
                    % b . 2+ even nums => sb1 encode
                    i msglen 1 sub lt {
                        setb msg i get known
                        i 1 add numsscr exch pop dup 2 ge exch 2 mod 0 eq and and {
                            sb1 encc
                            msg i get encb
                            /i i 1 add def
                            exit
                        } if
                    } if
                    % b . 3+ odd nums => sb2 encode
                    i msglen 1 sub lt {
                        setb msg i get known
                        i 1 add numsscr exch pop dup 3 ge exch 2 mod 1 eq and and {
                            sb2 encc
                            msg i get encb
                            msg i 1 add get encb
                            /i i 2 add def
                            exit
                        } if
                    } if
                    % b . b . 2+ even nums => sb2 encode
                    i msglen 2 sub lt {
                        setb msg i get known
                        setb msg i 1 add get known and
                        i 2 add numsscr exch pop dup 2 ge exch 2 mod 0 eq and and {
                            sb2 encc
                            msg i get encb
                            msg i 1 add get encb
                            /i i 2 add def
                            exit
                        } if
                    } if
                    % b . b . 3+ odd nums => sb3 encode
                    i msglen 3 sub lt {
                        setb msg i get known
                        setb msg i 1 add get known and
                        i 2 add numsscr exch pop dup 3 ge exch 2 mod 1 eq and and {
                            sb3 encc
                            msg i get encb
                            msg i 1 add get encb
                            msg i 2 add get encb
                            /i i 3 add def
                            exit
                        } if
                    } if
                    % b . b . b . 2+ even nums => sb3 encode
                    i msglen 3 sub lt {
                        setb msg i get known
                        setb msg i 1 add get known and
                        setb msg i 2 add get known and
                        i 3 add numsscr exch pop dup 2 ge exch 2 mod 0 eq and and {
                            sb3 encc
                            msg i get encb
                            msg i 1 add get encb
                            msg i 2 add get encb
                            /i i 3 add def
                            exit
                        } if
                    } if
                    % anotb before bnota => swa
                    i abeforeb {
                        swa encc
                        /cset (seta) def
                        exit
                    } if
                    % otherwise => swb
                    swb encc
                    /cset (setb) def
                    exit
                } if
                exit
            } loop

        } loop
        /cws cws 0 j getinterval def
    } if  % auto encoding

    % Basic metrics for the each symbol
    %     r  dcws
    /metrics [
        [  2    7 ]
        [  3   12 ]
        [  4   17 ]
        [  5   22 ]
        [  6   27 ]
        [  7   32 ]
        [  8   37 ]
        [  9   42 ]
        [ 10   47 ]
        [ 11   52 ]
        [ 12   57 ]
        [ 13   62 ]
        [ 14   67 ]
        [ 15   72 ]
        [ 16   77 ]
    ] def

    % Select metrics of an appropriate symbol
    /urows rows def
    /i 0 def
    { % loop
        /m metrics i get def
        /r    m 0 get def        % Columns in symbol
        /dcws m 1 get def        % Data codewords in symbol
        /okay true def
        urows 0 ne urows r ne and {/okay false def} if
        cws length dcws gt {/okay false def} if
        okay {exit} if
        /i i 1 add def
    } loop

    % Extend cws to ncws codewords by addition of pad characters
    /cws [ cws aload pop dcws cws length sub {103} repeat ] def

    % Add the start character
    /cws [ r 2 sub 7 mul mode add cws aload pop ] def

    % Calculate the check characters
    0 0 1 dcws {dup 2 add exch cws exch get mul add} for
    107 mod /c1 exch def
    0 0 1 dcws {dup 1 add exch cws exch get mul add} for
    c1 dcws 2 add mul add 107 mod /c2 exch def
    /cws [ cws aload pop c1 c2 ] def

    % Create an array containing the character mappings
    /encs
    [ (212222) (222122) (222221) (121223) (121322) (131222) (122213)
      (122312) (132212) (221213) (221312) (231212) (112232) (122132)
      (122231) (113222) (123122) (123221) (223211) (221132) (221231)
      (213212) (223112) (312131) (311222) (321122) (321221) (312212)
      (322112) (322211) (212123) (212321) (232121) (111323) (131123)
      (131321) (112313) (132113) (132311) (211313) (231113) (231311)
      (112133) (112331) (132131) (113123) (113321) (133121) (313121)
      (211331) (231131) (213113) (213311) (213131) (311123) (311321)
      (331121) (312113) (312311) (332111) (314111) (221411) (431111)
      (111224) (111422) (121124) (121421) (141122) (141221) (112214)
      (112412) (122114) (122411) (142112) (142211) (241211) (221114)
      (413111) (241112) (134111) (111242) (121142) (121241) (114212)
      (124112) (124211) (411212) (421112) (421211) (212141) (214121)
      (412121) (111143) (111341) (131141) (114113) (114311) (411113)
      (411311) (113141) (114131) (311141) (411131) (211412) (211214)
      (211232) (211133)
    ] def

    % Start/stop character encodings
    /startencs [
        (3211) (2221) (2122) (1411) (1132) (1231) (1114) (3112)
        (3211) (2221) (2122) (1411) (1132) (1231) (1114) (3112)
    ] def
    /stopencsodd [
        (3211) (2221) (2122) (1411) (1132) (1231) (1114) (3112)
        (1132) (1231) (1114) (3112) (3211) (2221) (2122) (1411)
    ] def
    /stopencseven [
        (2122) (1411) (1132) (1231) (1114) (3112) (1132) (1231)
        (1114) (3112) (3211) (2221) (2122) (1411) (3211) (2221)
    ] def
    pos -1 eq pos 10 idiv 2 mod 1 eq or {
        /stopencs stopencsodd def
    } {
        /stopencs stopencseven def
    } ifelse

    % Derive the bits for each row
    /rowbits r array def
    0 1 r 1 sub {
        /i exch def
        /sbs [
            10
            startencs i get {48 sub} forall
            1
            cws i 5 mul 5 getinterval {
                encs exch get {48 sub} forall
            } forall
            stopencs i get {48 sub} forall
            1
        ] def
        mark
        1 sbs {1 index 0 eq {{1}} {{0}} ifelse repeat} forall
        counttomark 1 sub array astore exch pop exch pop
        rowbits i 3 -1 roll put
    } for

    % Populate the bitmap
    /pixs [
        81 sepheight mul {1} repeat
        0 1 r 2 sub {
            /i exch def
            rowheight {rowbits i get aload pop} repeat
            sepheight {10 {0} repeat 70 {1} repeat 0} repeat
        } for
        rowheight {rowbits r 1 sub get aload pop} repeat
        81 sepheight mul {1} repeat
    ] def

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx 81
    /pixy pixs length 81 idiv
    /height pixs length 81 idiv 72 div
    /width 81 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code16k dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code16k--

% --BEGIN ENCODER code49--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: Code 49
% --EXAM: MULTIPLE ROWS IN CODE 49
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp code49 0.0 2019110800 258029 267580
%%BeginData:       1078 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/code49 {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /mode -1 def
    /pos -1 def
    /rows 0 def
    /rowheight 8 def
    /sepheight 1 def
    /parse false def
    /parsefnc false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /mode mode cvi def
    /pos pos cvi def
    /rows rows cvi def
    /rowheight rowheight cvi def
    /sepheight sepheight cvi def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Convert input into bytes accounting for FNC characters
    /s1 -1 def /s2 -2 def /fn1 -3 def /fn2 -4 def /fn3 -5 def /ns -6 def
    /fncvals <<
        (FNC1) fn1
        (FNC2) fn2
        (FNC3) fn3
    >> def
    /msg barlen array def
    /i 0 def /j 0 def {
        i barlen eq {exit} if
        /char barcode i get def
        parsefnc char 94 eq and i barlen 4 sub lt and {
            barcode i 1 add get 94 ne {
                /char fncvals barcode i 1 add 4 getinterval get def
                /i i 4 add def
            } {
                /i i 1 add def
            } ifelse
        } if
        msg j char put
        /i i 1 add def
        /j j 1 add def
    } loop
    /msg msg 0 j getinterval def
    /msglen msg length def

    % Character encodings
    /charmap [
        (0) (1) (2) (3) (4) (5) (6) (7) (8) (9)
        (A) (B) (C) (D) (E) (F) (G) (H) (I) (J) (K) (L) (M)
        (N) (O) (P) (Q) (R) (S) (T) (U) (V) (W) (X) (Y) (Z)
        (-) (.) ( ) ($) (/) (+) (%)
        s1  s2  fn1 fn2 fn3 ns
    ] def

    % Invert charmap to give character to value map
    /charvals 49 dict def
    0 1 48 {
        /i exch def
        charmap i get
        dup type /stringtype eq {0 get} if  % convert string to ASCII if required
        charvals exch i put
    } for

    % Shifted character encodings
    /combos
    [ (1 ) (1A) (1B) (1C) (1D) (1E) (1F) (1G) (1H) (1I) (1J) (1K) (1L) (1M) (1N) (1O)
      (1P) (1Q) (1R) (1S) (1T) (1U) (1V) (1W) (1X) (1Y) (1Z) (11) (12) (13) (14) (15)
      (  ) (16) (17) (18) ( $) ( %) (19) (10) (1-) (1.) (1$) ( +) (1/) ( -) ( .) ( /)
      ( 0) ( 1) ( 2) ( 3) ( 4) ( 5) ( 6) ( 7) ( 8) ( 9) (1+) (21) (22) (23) (24) (25)
      (26) ( A) ( B) ( C) ( D) ( E) ( F) ( G) ( H) ( I) ( J) ( K) ( L) ( M) ( N) ( O)
      ( P) ( Q) ( R) ( S) ( T) ( U) ( V) ( W) ( X) ( Y) ( Z) (27) (28) (29) (20) (2-)
      (2.) (2A) (2B) (2C) (2D) (2E) (2F) (2G) (2H) (2I) (2J) (2K) (2L) (2M) (2N) (2O)
      (2P) (2Q) (2R) (2S) (2T) (2U) (2V) (2W) (2X) (2Y) (2Z) (2$) (2/) (2+) (2%) (2 )
    ] def
    0 1 127 {
        /i exch def
        combos i get dup 0 get /c1 exch def 1 get /c2 exch def
        c1 49 eq {  % s1 char
            charvals i [ charvals s1 get charvals c2 get ] put
        } if
        c1 50 eq {  % s2 char
            charvals i [ charvals s2 get charvals c2 get ] put
        } if
    } for

    /encodealpha {
        charvals exch get
        dup type /arraytype ne {1 array astore} if
        dup cws exch j exch putinterval
        length j add /j exch def
    } bind def

    /base48 {
        0 exch {48 sub exch 10 mul add} forall
        [ 3 1 roll exch 1 sub {dup 48 mod exch 48 idiv} repeat ]
        [ exch dup length 1 sub -1 0 {1 index exch get exch} for pop ]
        dup cws exch j exch putinterval
        length j add /j exch def
    } bind def

    /encodenumeric {
        /nums exch def
        /pre nums length dup 5 mod dup 2 ne {sub} {sub 5 sub} ifelse def
        0 5 pre 1 sub {nums exch 5 getinterval 3 exch base48} for
        /nums nums pre nums length pre sub getinterval def
        nums length
        dup 1 eq {nums i get encodealpha} if
        dup 3 eq {2 nums base48} if
        dup 4 eq {3 [49 48 nums aload pop] base48} if
        7 eq {
            3 [49 48 nums 0 4 getinterval aload pop] base48
            2 nums 4 3 getinterval base48
        } if
    } bind def

    % Pre-compute alphanumeric and numeric runlengths
    /numericruns [ msglen {0} repeat 0 ] def
    msglen 1 sub -1 0 {
        /i exch def
        msg i get
        dup 48 ge exch 57 le and {
            numericruns i numericruns i 1 add get 1 add put
        } {
            numericruns i 0 put
        } ifelse
    } for

    % Autoselect mode
    mode -1 eq {
        {  % common exit
            pos -1 ne {/mode 3 def exit} if
            numericruns 0 get 5 ge {/mode 2 def exit} if
            charvals msg 0 get get
            dup type /arraytype ne {pop /mode 0 def exit} if
            0 get 43 eq {4} {5} ifelse /mode exch def
            exit
        } loop
    } if

    /cws msglen 2 mul 1 add array def
    /method (alpha) def /i -1 def /j -1 def

    % Handle start for each mode
    mode 0 eq mode 1 eq or {/method (alpha) def /i 0 def /j 0 def} if
    mode 2 eq {/method (numeric) def /i 0 def /j 0 def} if
    mode 3 eq {
        /posval [
            12 22
            13 23 33
            14 24 34 44
            15 25 35 45 55
            16 26 36 46 56 66
            17 27 37 47 57 67 77
            18 28 38 48 58 68 78 88
            19 29 39 49 59 69 79 89 99
        ] def
        cws 0 0 1 43 {dup posval exch get pos ne {pop} if} for 1 add put
        /method (alpha) def /i 0 def /j 1 def
    } if
    mode 4 eq mode 5 eq or {
        cws 0 charvals msg 0 get get 1 get put
        /method (alpha) def /i 1 def /j 1 def
    } if

    % Encode remainder
    {
        i msglen eq {exit} if
        {  % not a loop but common exit point
            method (alpha) eq {
                numericruns i get 5 ge {
                    ns encodealpha
                    /method (numeric) def
                    exit
                } if
                msg i get encodealpha
                /i i 1 add def
                exit
            } if
            method (numeric) eq {
                numericruns i get 5 lt {
                    ns encodealpha
                    /method (alpha) def
                    exit
                } if
                msg i numericruns i get getinterval encodenumeric
                /i i numericruns i get add def
                exit
            } if
        } loop
    } loop
    /cws cws 0 j getinterval def

    % Basic metrics for the each symbol
    %     r dcws
    /metrics [
        [ 2    9 ]
        [ 3   16 ]
        [ 4   23 ]
        [ 5   30 ]
        [ 6   37 ]
        [ 7   42 ]
        [ 8   49 ]
    ] def

    % Select metrics of an appropriate symbol
    /urows rows def
    /i 0 def
    { % loop
        /m metrics i get def
        /r    m 0 get def        % Columns in symbol
        /dcws m 1 get def        % Data codewords in symbol
        /okay true def
        urows 0 ne urows r ne and {/okay false def} if
        cws length dcws gt {/okay false def} if
        okay {exit} if
        /i i 1 add def
    } loop

    % Extend cws to ncws codewords by addition of pad characters
    /cws [ cws aload pop dcws cws length sub {48} repeat ] def

    % Populate code character array and add row check characters
    /ccs r 8 mul array def
    /j 0 def
    0 1 r 2 sub {
        /i exch def
        /cc cws j 7 getinterval def
        ccs i 8 mul cc putinterval
        ccs i 8 mul 7 add 0 cc {add} forall 49 mod put
        /j j 7 add def
    } for
    j dcws lt {
        ccs ccs length 8 sub cws j dcws j sub getinterval putinterval
    } if

    % Place row count character
    /cr7 r 2 sub 7 mul mode add def
    ccs ccs length 2 sub cr7 put

    % Calculate the symbol check characters
    [  1  9 31 26  2 12 17 23 37 18 22  6 27 44 15 43 39
      11 13  5 41 33 36  8  4 32  3 19 40 25 29 10 24 30 ]
    dup [ exch 20 exch 0 32 getinterval aload pop ] /weightx exch def
    dup [ exch 16 exch 1 32 getinterval aload pop ] /weighty exch def
        [ exch 38 exch 2 32 getinterval aload pop ] /weightz exch def
    /calccheck {
        /weights exch def
        /score 0 def
        0 1 r 1 sub 8 mul 2 idiv 1 sub {
            /i exch def
            ccs i 2 mul get 49 mul ccs i 2 mul 1 add get add
            weights i 1 add get mul /score exch score add def
        } for
        score
    } bind def
    /lastrow ccs ccs length 8 sub 8 getinterval def

    % wr1 check character
    r 7 ge {
        cr7 weightz 0 get mul weightz calccheck add 2401 mod
        dup 49 idiv exch 49 mod 2 array astore
        lastrow 0 3 -1 roll putinterval
    } if
    /wr1 lastrow 0 get 49 mul lastrow 1 get add def

    % wr2 check character
    cr7 weighty 0 get mul weighty calccheck add
    wr1 weighty r 4 mul 3 sub get mul add
    2401 mod dup /wr2 exch def
    dup 49 idiv exch 49 mod 2 array astore
    lastrow 2 3 -1 roll putinterval

    % wr3 check character
    cr7 weightx 0 get mul weightx calccheck add
    wr1 weightx r 4 mul 3 sub get mul add
    wr2 weightx r 4 mul 2 sub get mul add
    2401 mod
    dup 49 idiv exch 49 mod 2 array astore
    lastrow 4 3 -1 roll putinterval

    % Place last row check character
    ccs ccs length 8 sub 7 getinterval 0 exch {add} forall 49 mod
    ccs ccs length 1 sub 3 -1 roll put

    /patterns [
        [  % Even parity
            (11521132) (25112131) (14212132) (25121221) (14221222) (12412132) (23321221)
            (12421222) (21521221) (15112222) (15121312) (13312222) (24221311) (13321312)
            (11512222) (22421311) (11521312) (25112311) (14212312) (23312311) (12412312)
            (21512311) (16121131) (14321131) (12521131) (15212131) (15221221) (13412131)
            (13421221) (11612131) (16112221) (16121311) (14312221) (14321311) (12512221)
            (12521311) (15212311) (13412311) (11612311) (11131135) (31131133) (51131131)
            (21122134) (41122132) (21131224) (41131222) (11113135) (31113133) (51113131)
            (11122225) (31122223) (51122221) (11131315) (31131313) (51131311) (21113224)
            (41113222) (21122314) (41122312) (11113315) (31113313) (51113311) (12131134)
            (32131132) (21231133) (41231131) (22122133) (42122131) (11222134) (22131223)
            (42131221) (11231224) (31231222) (12113134) (32113132) (12122224) (32122222)
            (12131314) (32131312) (21231313) (41231311) (22113223) (42113221) (11213224)
            (22122313) (42122311) (11222314) (31222312) (12113314) (32113312) (21213313)
            (41213311) (13131133) (33131131) (22231132) (11331133) (31331131) (23122132)
            (12222133) (23131222) (12231223) (32231221) (21331222) (13113133) (33113131)
            (13122223) (33122221) (11313133) (13131313) (33131311) (11322223) (22231312)
            (11331313) (31331311) (23113222) (12213223) (23122312) (12222313) (32222311)
            (21322312) (13113313) (33113311) (22213312) (11313313) (31313311) (14131132)
            (23231131) (12331132) (21431131) (24122131) (13222132) (24131221) (13231222)
            (11422132) (22331221) (11431222) (14113132) (14122222) (12313132) (14131312)
            (12322222) (23231311) (12331312) (21431311) (24113221) (13213222) (24122311)
            (13222312) (11413222) (22322311) (11422312) (14113312) (23213311) (12313312)
            (21413311) (15131131) (13331131) (14222131) (14231221) (12422131) (12431221)
            (15113131) (15122221) (13313131) (15131311) (13322221) (11513131) (13331311)
            (11522221) (14213221) (14222311) (12413221) (12422311) (15113311) (13313311)
            (11513311) (11141134) (31141132) (21132133) (41132131) (21141223) (41141221)
            (11123134) (31123132) (11132224) (31132222) (11141314) (31141312) (21114133)
            (41114131) (21123223) (41123221) (21132313) (41132311) (11114224) (31114222)
            (11123314) (31123312) (21114313) (41114311) (12141133) (32141131) (21241132)
            (22132132) (11232133) (22141222) (11241223) (31241221) (12123133) (32123131)
            (12132223) (32132221) (12141313) (32141311) (21241312) (22114132) (11214133)
            (22123222) (11223223) (22132312) (11232313) (31232311) (12114223) (32114221)
            (12123313) (32123311) (21223312) (22114312) (11214313) (31214311) (13141132)
            (22241131) (11341132) (23132131) (12232132) (23141221) (12241222) (21341221)
            (13123132) (13132222) (11323132) (13141312) (11332222) (22241311) (11341312)
            (23114131) (12214132) (23123221) (12223222) (23132311) (12232312) (21332311)
            (13114222) (13123312) (11314222) (22223311) (11323312) (23114311) (12214312)
            (21314311) (14141131) (12341131) (13232131) (13241221) (11432131) (14123131)
            (14132221) (12323131) (14141311) (12332221) (12341311) (13214131) (13223221)
            (11414131) (13232311) (11423221) (11432311) (14114221) (14123311) (12314221)
            (12323311) (13214311) (11414311) (11151133) (31151131) (21142132) (21151222)
            (11133133) (31133131) (11142223) (31142221) (11151313) (31151311) (21124132)
            (21133222) (21142312) (11115133) (31115131) (11124223) (31124221) (11133313)
            (31133311) (21115222) (21124312) (12151132) (21251131) (22142131) (11242132)
            (22151221) (11251222) (12133132) (12142222) (12151312) (21251311) (22124131)
            (11224132) (22133221) (11233222) (22142311) (11242312) (12115132) (12124222)
            (12133312) (21233311) (22115221) (11215222) (22124311) (11224312) (13151131)
            (12242131) (12251221) (13133131) (13142221) (11333131) (13151311) (11342221)
            (12224131) (12233221) (12242311) (13115131) (13124221) (11315131) (13133311)
            (11324221) (11333311) (12215221) (12224311) (11161132) (21152131) (21161221)
            (11143132) (11152222) (11161312) (21134131) (21143221) (21152311) (11125132)
            (11134222) (11143312) (21116131) (21125221) (21134311) (12161131) (11252131)
            (12143131) (12152221) (12161311) (11234131) (11243221) (11252311) (12125131)
            (12134221) (12143311) (11216131) (11225221) (11234311) (11111236) (31111234)
            (51111232) (21111325) (41111323) (61111321) (11111416) (31111414) (51111412)
            (31211143) (51211141) (12111235) (32111233) (52111231) (21211234) (41211232)
            (22111324) (42111322) (11211325) (31211323) (51211321) (12111415) (32111413)
            (52111411) (21211414) (41211412) (12211144) (32211142) (21311143) (41311141)
            (13111234) (33111232) (22211233) (42211231) (11311234) (31311232) (23111323)
            (43111321) (12211324) (32211322) (21311323) (41311321) (13111414) (33111412)
            (22211413) (42211411) (11311414) (31311412) (13211143) (33211141) (22311142)
            (11411143) (31411141) (14111233) (34111231) (23211232) (12311233) (32311231)
            (21411232) (24111322) (13211323) (33211321) (22311322) (11411323) (31411321)
            (14111413) (34111411) (23211412) (12311413) (32311411) (21411412) (14211142)
            (23311141) (12411142) (21511141) (15111232) (24211231) (13311232) (22411231)
            (11511232) (25111321) (14211322) (23311321) (12411322) (21511321) (15111412)
            (24211411) (13311412) (22411411) (11511412) (15211141) (13411141) (11611141)
            (16111231) (14311231) (12511231) (15211321) (13411321) (11611321) (16111411)
            (14311411) (12511411) (21121144) (41121142) (11112145) (31112143) (51112141)
            (11121235) (31121233) (51121231) (21112234) (41112232) (21121324) (41121322)
            (11112325) (31112323) (51112321) (11121415) (31121413) (51121411) (21112414)
            (41112412) (22121143) (42121141) (11221144) (31221142) (12112144) (32112142)
            (12121234) (32121232) (21221233) (41221231) (22112233) (42112231) (11212234)
            (22121323) (42121321) (11221324) (31221322) (12112324) (32112322) (12121414)
            (32121412) (21221413) (41221411) (22112413) (42112411) (11212414) (31212412)
            (23121142) (12221143) (32221141) (21321142) (13112143) (33112141) (13121233)
            (33121231) (11312143) (22221232) (11321233) (31321231) (23112232) (12212233)
            (23121322) (12221323) (32221321) (21321322) (13112323) (33112321) (13121413)
            (33121411) (11312323) (22221412) (11321413) (31321411) (23112412) (12212413)
            (32212411) (21312412) (24121141) (13221142) (22321141) (11421142) (14112142)
            (14121232) (12312142) (23221231) (12321232) (21421231) (24112231) (13212232)
            (24121321) (13221322) (11412232) (22321321) (11421322) (14112322) (14121412)
            (12312322) (23221411) (12321412) (21421411) (24112411) (13212412) (22312411)
            (11412412) (14221141) (12421141) (15112141) (15121231) (13312141) (13321231)
            (11512141) (11521231) (14212231) (14221321) (12412231) (12421321) (15112321)
            (15121411) (13312321) (13321411) (11512321) (11521411) (14212411) (12412411)
            (21131143) (41131141) (11122144) (31122142) (11131234) (31131232) (21113143)
            (41113141) (21122233) (41122231) (21131323) (41131321) (11113234) (31113232)
            (11122324) (31122322) (11131414) (31131412) (21113323) (41113321) (21122413)
            (41122411) (11113414) (31113412) (22131142) (11231143) (31231141) (12122143)
            (32122141) (12131233) (32131231) (21231232) (22113142) (11213143) (22122232)
            (11222233) (22131322) (11231323) (31231321) (12113233) (32113231) (12122323)
            (32122321) (12131413) (32131411) (21231412) (22113322) (11213323) (22122412)
            (11222413) (31222411) (12113413) (32113411) (21213412) (23131141) (12231142)
            (21331141) (13122142) (13131232) (11322142) (22231231) (11331232) (23113141)
            (12213142) (23122231) (12222232) (23131321) (12231322) (21331321) (13113232)
            (13122322) (11313232) (13131412) (11322322) (22231411) (11331412) (23113321)
            (12213322) (23122411) (12222412) (21322411) (13113412) (22213411) (11313412)
            (13231141) (11431141) (14122141) (14131231) (12322141) (12331231) (13213141)
            (13222231) (11413141) (13231321) (11422231) (11431321) (14113231) (14122321)
            (12313231) (14131411) (12322321) (12331411) (13213321) (13222411) (11413321)
            (11422411) (14113411) (12313411) (21141142) (11132143) (31132141) (11141233)
            (31141231) (21123142) (21132232) (21141322) (11114143) (31114141) (11123233)
            (31123231) (11132323) (31132321) (11141413) (31141411) (21114232) (21123322)
            (21132412) (11114323) (31114321) (11123413) (31123411) (22141141) (11241142)
            (12132142) (12141232) (21241231) (22123141) (11223142) (22132231) (11232232)
            (22141321) (11241322) (12114142) (12123232) (12132322) (12141412) (21241411)
            (22114231) (11214232) (22123321) (11223322) (22132411) (11232412) (12114322)
            (12123412) (21223411) (12241141) (13132141) (13141231) (11332141) (11341231)
            (12223141) (12232231) (12241321) (13114141) (13123231) (11314141) (13132321)
            (11323231) (13141411) (11332321) (11341411) (12214231) (12223321) (12232411)
            (13114321) (13123411) (11314321) (11323411) (21151141) (11142142) (11151232)
            (21133141) (21142231) (21151321) (11124142) (11133232) (11142322) (11151412)
            (21115141) (21124231) (21133321) (21142411) (11115232) (11124322) (11133412)
            (11251141) (12142141) (12151231) (11233141) (11242231) (11251321) (12124141)
            (12133231) (12142321) (12151411) (11215141) (11224231) (11233321) (11242411)
            (12115231) (12124321) (12133411) (11152141) (11161231) (11134141) (11143231)
            (11152321) (11161411) (11116141) (11125231) (11134321) (11143411) (21111244)
            (41111242) (11111335) (31111333) (51111331) (21111424) (41111422) (11111515)
            (31111513) (51111511) (21211153) (41211151) (22111243) (42111241) (11211244)
            (31211242) (12111334) (32111332) (21211333) (41211331) (22111423) (42111421)
            (11211424) (31211422) (12111514) (32111512) (21211513) (41211511) (22211152)
            (11311153) (31311151) (23111242) (12211243) (32211241) (21311242) (13111333)
            (33111331) (22211332) (11311333) (31311331) (23111422) (12211423) (32211421)
            (21311422) (13111513) (33111511) (22211512) (11311513) (31311511) (23211151)
            (12311152) (21411151) (24111241) (13211242) (22311241) (11411242) (14111332)
            (23211331) (12311332) (21411331) (24111421) (13211422) (22311421) (11411422)
            (14111512) (23211511) (12311512) (21411511) (13311151) (11511151) (14211241)
            (12411241) (15111331) (13311331) (11511331) (14211421) (12411421) (15111511)
            (13311511) (11511511) (31121152) (21112153) (41112151) (21121243) (41121241)
            (11112244) (31112242) (11121334) (31121332) (21112333) (41112331) (21121423)
            (41121421) (11112424) (31112422) (11121514) (31121512) (21112513) (41112511)
            (12121153) (32121151) (21221152) (22112152) (11212153) (22121242) (11221243)
            (31221241) (12112243) (32112241) (12121333) (32121331) (21221332) (22112332)
            (11212333) (22121422) (11221423) (31221421) (12112423) (32112421) (12121513)
            (32121511) (21221512) (22112512) (11212513) (31212511) (13121152) (22221151)
            (11321152) (23112151) (12212152) (23121241) (12221242) (21321241) (13112242)
            (13121332) (11312242) (22221331) (11321332) (23112331) (12212332) (23121421)
            (12221422) (21321421) (13112422) (13121512) (11312422) (22221511) (11321512)
            (23112511) (12212512) (21312511) (14121151) (12321151) (13212151) (13221241)
            (11412151) (11421241) (14112241) (14121331) (12312241) (12321331) (13212331)
            (13221421) (11412331) (11421421) (14112421) (14121511) (12312421) (12321511)
            (13212511) (11412511) (11131153) (31131151) (21122152) (21131242) (11113153)
            (31113151) (11122243) (31122241) (11131333) (31131331) (21113242) (21122332)
            (21131422) (11113333) (31113331) (11122423) (31122421) (11131513) (31131511)
            (21113422) (21122512) (12131152) (21231151) (22122151) (11222152) (22131241)
            (11231242) (12113152) (12122242) (12131332) (21231331) (22113241) (11213242)
            (22122331) (11222332) (22131421) (11231422) (12113332) (12122422) (12131512)
            (21231511) (22113421) (11213422) (22122511) (11222512) (13131151) (11331151)
            (12222151) (12231241) (13113151) (13122241) (11313151) (13131331) (11322241)
            (11331331) (12213241) (12222331) (12231421) (13113331) (13122421) (11313331)
            (13131511) (11322421) (11331511) (12213421) (12222511) (11141152) (21132151)
            (21141241) (11123152) (11132242) (11141332) (21114151) (21123241) (21132331)
            (21141421) (11114242) (11123332) (11132422) (11141512) (21114331) (21123421)
            (21132511) (12141151) (11232151) (11241241) (12123151) (12132241) (12141331)
            (11214151) (11223241) (11232331) (11241421) (12114241) (12123331) (12132421)
            (12141511) (11214331) (11223421) (11232511) (11151151) (11133151) (11142241)
            (11151331) (11115151) (11124241) (11133331) (11142421) (11151511) (11111254)
            (31111252) (21111343) (41111341) (11111434) (31111432) (21111523) (41111521)
            (11111614) (31111612) (31211161) (12111253) (32111251) (21211252) (22111342)
            (11211343) (31211341) (12111433) (32111431) (21211432) (22111522) (11211523)
            (31211521) (12111613) (32111611) (21211612) (12211162) (21311161) (13111252)
            (22211251) (11311252) (23111341) (12211342) (21311341) (13111432) (22211431)
            (11311432) (23111521) (12211522) (21311521) (13111612) (22211611) (11311612)
            (13211161) (11411161) (14111251) (12311251) (13211341) (11411341) (14111431)
            (12311431) (13211521) (11411521) (14111611) (12311611) (21121162) (11112163)
            (31112161) (11121253) (31121251) (21112252) (21121342) (11112343) (31112341)
            (11121433) (31121431) (21112432) (21121522) (11112523) (31112521) (11121613)
            (31121611) (22121161) (11221162) (12112162) (12121252) (21221251) (22112251)
            (11212252) (22121341) (11221342) (12112342) (12121432) (21221431) (22112431)
            (11212432) (22121521) (11221522) (12112522) (12121612) (21221611) (12221161)
            (13112161) (13121251) (11312161) (11321251) (32121115) (52121113) (21221116)
            (41221114) (61221112) (22112116) (42112114) (31212115) (51212113) (13121116)
            (33121114) (22221115) (42221113) (11321116) (31321114) (51321112) (23112115)
            (43112113) (12212116) (32212114) (52212112) (21312115) (41312113) (61312111)
            (14121115) (34121113) (23221114) (43221112) (12321115) (32321113) (52321111)
            (21421114) (41421112) (24112114) (13212115) (33212113) (22312114) (42312112)
            (11412115) (31412113) (51412111) (15121114) (24221113) (13321114) (33321112)
            (22421113) (42421111) (11521114) (31521112) (25112113) (14212114) (34212112)
            (23312113) (43312111) (12412114) (32412112) (21512113) (41512111) (16121113)
            (25221112) (14321113) (34321111) (23421112) (12521113) (32521111) (15212113)
            (24312112) (13412113) (33412111) (22512112) (11612113) (31612111) (31131115)
            (51131113) (21122116) (41122114) (61122112) (31113115) (51113113) (12131116)
            (32131114) (52131112) (21231115) (41231113) (61231111) (22122115) (42122113)
            (11222116) (31222114) (51222112) (12113116) (32113114) (52113112) (21213115)
            (41213113) (61213111) (13131115) (33131113) (22231114) (42231112) (11331115)
            (31331113) (51331111) (23122114) (43122112) (12222115) (32222113) (52222111)
            (21322114) (41322112) (13113115) (33113113) (22213114) (42213112) (11313115)
            (31313113) (51313111) (14131114) (34131112) (23231113) (43231111) (12331114)
            (32331112) (21431113) (41431111) (24122113) (13222114) (33222112) (22322113)
            (42322111) (11422114) (31422112) (14113114) (34113112) (23213113) (43213111)
            (12313114) (32313112) (21413113) (41413111) (15131113) (24231112) (13331113)
            (33331111) (22431112) (25122112) (14222113) (34222111) (23322112) (12422113)
            (32422111) (21522112) (15113113) (24213112) (13313113) (33313111) (22413112)
            (11513113) (31513111) (16131112) (25231111) (14331112) (23431111) (15222112)
            (24322111) (13422112) (22522111) (16113112) (25213111) (14313112) (23413111)
            (12513112) (21613111) (11141116) (31141114) (51141112) (21132115) (41132113)
            (61132111) (11123116) (31123114) (51123112) (21114115) (41114113) (61114111)
            (12141115) (32141113) (52141111) (21241114) (41241112) (22132114) (42132112)
            (11232115) (31232113) (51232111) (12123115) (32123113) (52123111) (21223114)
            (41223112) (22114114) (42114112) (11214115) (31214113) (51214111) (13141114)
            (33141112) (22241113) (42241111) (11341114) (31341112) (23132113) (43132111)
            (12232114) (32232112) (21332113) (41332111) (13123114) (33123112) (22223113)
            (42223111) (11323114) (31323112) (23114113) (43114111) (12214114) (32214112)
            (21314113) (41314111) (14141113) (34141111) (23241112) (12341113) (32341111)
            (24132112) (13232113) (33232111) (22332112) (11432113) (31432111) (14123113)
            (34123111) (23223112) (12323113) (32323111) (21423112) (24114112) (13214113)
            (33214111) (22314112) (11414113) (31414111) (15141112) (24241111) (13341112)
            (25132111) (14232112) (23332111) (12432112) (15123112) (24223111) (13323112)
            (22423111) (11523112) (25114111) (14214112) (23314111) (12414112) (21514111)
            (16141111) (14341111) (15232111) (13432111) (16123111) (14323111) (12523111)
            (15214111) (13414111) (11614111) (11151115) (31151113) (51151111) (21142114)
            (41142112) (11133115) (31133113) (51133111) (21124114) (41124112) (11115115)
            (31115113) (51115111) (12151114) (32151112) (21251113) (41251111) (22142113)
            (42142111) (11242114) (31242112) (12133114) (32133112) (21233113) (41233111)
            (22124113) (42124111) (11224114) (31224112) (12115114) (32115112) (21215113)
            (41215111) (13151113) (33151111) (22251112) (23142112) (12242113) (32242111)
            (21342112) (13133113) (33133111) (22233112) (11333113) (31333111) (23124112)
            (12224113) (32224111) (21324112) (13115113) (33115111) (22215112) (11315113)
            (31315111) (14151112) (23251111) (24142111) (13242112) (22342111) (14133112)
            (23233111) (12333112) (21433111) (24124111) (13224112) (22324111) (11424112)
            (14115112) (23215111) (12315112) (21415111) (15151111) (14242111) (15133111)
            (13333111) (14224111) (12424111) (15115111) (13315111) (11515111) (11161114)
            (31161112) (21152113) (41152111) (11143114) (31143112) (21134113) (41134111)
            (11125114) (31125112) (21116113) (41116111) (12161113) (32161111) (22152112)
            (11252113) (31252111) (12143113) (32143111) (21243112) (22134112) (11234113)
            (31234111) (12125113) (32125111) (21225112) (22116112) (11216113) (31216111)
            (13161112) (23152111) (12252112) (13143112) (22243111) (11343112) (23134111)
            (12234112) (21334111) (13125112) (22225111) (11325112) (23116111) (12216112)
            (21316111) (14161111) (13252111) (14143111) (12343111) (13234111) (11434111)
            (14125111) (12325111) (13216111) (11416111) (31111216) (51111214) (31211125)
            (51211123) (32111215) (52111213) (21211216) (41211214) (61211212) (12211126)
            (32211124) (52211122) (21311125) (41311123) (61311121) (13111216) (33111214)
            (22211215) (42211213) (11311216) (31311214) (51311212) (13211125) (33211123)
            (22311124) (42311122) (11411125) (31411123) (51411121) (14111215) (34111213)
            (23211214) (43211212) (12311215) (32311213) (52311211) (21411214) (41411212)
            (14211124) (34211122) (23311123) (43311121) (12411124) (32411122) (21511123)
            (41511121) (15111214) (24211213) (13311214) (33311212) (22411213) (42411211)
            (11511214) (31511212) (15211123) (24311122) (13411123) (33411121) (22511122)
            (11611123) (31611121) (16111213) (25211212) (14311213) (34311211) (23411212)
            (12511213) (32511211) (21611212) (21121126) (41121124) (61121122) (31112125)
            (51112123) (31121215) (51121213) (21112216) (41112214) (61112212) (22121125)
            (42121123) (11221126) (31221124) (51221122) (12112126) (32112124) (52112122)
            (12121216) (32121214) (52121212) (21221215) (41221213) (61221211) (22112215)
            (42112213) (11212216) (31212214) (51212212) (23121124) (43121122) (12221125)
            (32221123) (52221121) (21321124) (41321122) (13112125) (33112123) (13121215)
            (33121213) (11312125) (22221214) (42221212) (11321215) (31321213) (51321211)
            (23112214) (43112212) (12212215) (32212213) (52212211) (21312214) (41312212)
            (24121123) (13221124) (33221122) (22321123) (42321121) (11421124) (31421122)
            (14112124) (34112122) (14121214) (34121212) (12312124) (23221213) (43221211)
            (12321214) (32321212) (21421213) (41421211) (24112213) (13212214) (33212212)
            (22312213) (42312211) (11412214) (31412212) (25121122) (14221123) (34221121)
            (23321122) (12421123) (32421121) (21521122) (15112123) (15121213) (13312123)
            (24221212) (13321213) (33321211) (11512123) (22421212) (11521213) (31521211)
            (25112212) (14212213) (34212211) (23312212) (12412213) (32412211) (21512212)
            (15221122) (24321121) (13421122) (22521121) (16112122) (16121212) (14312122)
            (25221211) (14321212) (12512122) (23421211) (12521212) (15212212) (24312211)
            (13412212) (22512211) (11612212) (21131125) (41131123) (61131121) (11122126)
            (31122124) (51122122) (11131216) (31131214) (51131212) (21113125) (41113123)
            (61113121) (21122215) (41122213) (61122211) (11113216) (31113214) (51113212)
            (22131124) (42131122) (11231125) (31231123) (51231121) (12122125) (32122123)
            (52122121) (12131215) (32131213) (52131211) (21231214) (41231212) (22113124)
            (42113122) (11213125) (22122214) (42122212) (11222215) (31222213) (51222211)
            (12113215) (32113213) (52113211) (21213214) (41213212) (23131123) (43131121)
            (12231124) (32231122) (21331123) (41331121) (13122124) (33122122) (13131214)
            (33131212) (11322124) (22231213) (42231211) (11331214) (31331212) (23113123)
            (43113121) (12213124) (23122213) (43122211) (12222214) (32222212) (21322213)
            (41322211) (13113214) (33113212) (22213213) (42213211) (11313214) (31313212)
            (24131122) (13231123) (33231121) (22331122) (11431123) (31431121) (14122123)
            (34122121) (14131213) (34131211) (12322123) (23231212) (12331213) (32331211)
            (21431212) (24113122) (13213123) (24122212) (13222213) (33222211) (11413123)
            (22322212) (11422213) (31422211) (14113213) (34113211) (23213212) (12313213)
            (32313211) (21413212) (25131121) (14231122) (23331121) (12431122) (15122122)
            (15131212) (13322122) (24231211) (13331212) (11522122) (22431211) (25113121)
            (14213122) (25122211) (14222212) (12413122) (23322211) (12422212) (21522211)
            (15113212) (24213211) (13313212) (22413211) (11513212) (15231121) (13431121)
            (16122121) (16131211) (14322121) (14331211) (12522121) (15213121) (15222211)
            (13413121) (13422211) (11613121) (16113211) (14313211) (12513211) (21141124)
            (41141122) (11132125) (31132123) (51132121) (11141215) (31141213) (51141211)
            (21123124) (41123122) (21132214) (41132212) (11114125) (31114123) (51114121)
            (11123215) (31123213) (51123211) (21114214) (41114212) (22141123) (42141121)
            (11241124) (31241122) (12132124) (32132122) (12141214) (32141212) (21241213)
            (41241211) (22123123) (42123121) (11223124) (22132213) (42132211) (11232214)
            (31232212) (12114124) (32114122) (12123214) (32123212) (21223213) (41223211)
            (22114213) (42114211) (11214214) (31214212) (23141122) (12241123) (32241121)
            (21341122) (13132123) (33132121) (13141213) (33141211) (11332123) (22241212)
            (11341213) (31341211) (23123122) (12223123) (23132212) (12232213) (32232211)
            (21332212) (13114123) (33114121) (13123213) (33123211) (11314123) (22223212)
            (11323213) (31323211) (23114212) (12214213) (32214211) (21314212) (24141121)
            (13241122) (22341121) (14132122) (14141212) (12332122) (23241211) (12341212)
            (24123121) (13223122) (24132211) (13232212) (11423122) (22332211) (11432212)
            (14114122) (14123212) (12314122) (23223211) (12323212) (21423211) (24114211)
            (13214212) (22314211) (11414212) (14241121) (15132121) (15141211) (13332121)
            (13341211) (14223121) (14232211) (12423121) (12432211) (15114121) (15123211)
            (13314121) (13323211) (11514121) (11523211) (14214211) (12414211) (21151123)
            (41151121) (11142124) (31142122) (11151214) (31151212) (21133123) (41133121)
            (21142213) (41142211) (11124124) (31124122) (11133214) (31133212) (21115123)
            (41115121) (21124213) (41124211) (11115214) (31115212) (22151122) (11251123)
            (31251121) (12142123) (32142121) (12151213) (32151211) (21251212) (22133122)
            (11233123) (22142212) (11242213) (31242211) (12124123) (32124121) (12133213)
            (32133211) (21233212) (22115122) (11215123) (22124212) (11224213) (31224211)
            (12115213) (32115211) (21215212) (23151121) (12251122) (13142122) (13151212)
            (11342122) (22251211) (23133121) (12233122) (23142211) (12242212) (21342211)
            (13124122) (13133212) (11324122) (22233211) (11333212) (23115121) (12215122)
            (23124211) (12224212) (21324211) (13115212) (22215211) (11315212) (13251121)
            (14142121) (14151211) (12342121) (13233121) (13242211) (11433121) (14124121)
            (14133211) (12324121) (12333211) (13215121) (13224211) (11415121) (11424211)
            (14115211) (12315211) (21161122) (11152123) (31152121) (11161213) (31161211)
            (21143122) (21152212) (11134123) (31134121) (11143213) (31143211) (21125122)
            (21134212) (11116123) (31116121) (11125213) (31125211) (22161121) (12152122)
            (12161212) (22143121) (11243122) (22152211) (11252212) (12134122) (12143212)
            (21243211) (22125121) (11225122) (22134211) (11234212) (12116122) (12125212)
            (21225211) (13152121) (13161211) (12243121) (12252211) (13134121) (13143211)
            (11334121) (11343211) (12225121) (12234211) (13116121) (13125211) (11316121)
            (11325211) (21111226) (41111224) (61111222) (31111315) (51111313) (21211135)
            (41211133) (61211131) (22111225) (42111223) (11211226) (31211224) (51211222)
            (12111316) (32111314) (52111312) (21211315) (41211313) (61211311) (22211134)
            (42211132) (11311135) (31311133) (51311131) (23111224) (43111222) (12211225)
            (32211223) (52211221) (21311224) (41311222) (13111315) (33111313) (22211314)
            (42211312) (11311315) (31311313) (51311311) (23211133) (43211131) (12311134)
            (32311132) (21411133) (41411131) (24111223) (13211224) (33211222) (22311223)
            (42311221) (11411224) (31411222) (14111314) (34111312) (23211313) (43211311)
            (12311314) (32311312) (21411313) (41411311) (24211132) (13311133) (33311131)
            (22411132) (11511133) (31511131) (25111222) (14211223) (34211221) (23311222)
            (12411223) (32411221) (21511222) (15111313) (24211312) (13311313) (33311311)
            (22411312) (11511313) (31511311) (25211131) (14311132) (23411131) (12511132)
            (21611131) (15211222) (24311221) (13411222) (22511221) (11611222) (16111312)
            (25211311) (14311312) (23411311) (12511312) (21611311) (31121134) (51121132)
            (21112135) (41112133) (61112131) (21121225) (41121223) (61121221) (11112226)
            (31112224) (51112222) (11121316) (31121314) (51121312) (21112315) (41112313)
            (61112311) (12121135) (32121133) (52121131) (21221134) (41221132) (22112134)
            (42112132) (11212135) (22121224) (42121222) (11221225) (31221223) (51221221)
            (12112225) (32112223) (52112221) (12121315) (32121313) (52121311) (21221314)
            (41221312) (22112314) (42112312) (11212315) (31212313) (51212311) (13121134)
            (33121132) (22221133) (42221131) (11321134) (31321132) (23112133) (43112131)
            (12212134) (23121223) (43121221) (12221224) (32221222) (21321223) (41321221)
            (13112224) (33112222) (13121314) (33121312) (11312224) (22221313) (42221311)
            (11321314) (31321312) (23112313) (43112311) (12212314) (32212312) (21312313)
            (41312311) (14121133) (34121131) (23221132) (12321133) (32321131) (21421132)
            (24112132) (13212133) (24121222) (13221223) (33221221) (11412133) (22321222)
            (11421223) (31421221) (14112223) (34112221) (14121313) (34121311) (12312223)
            (23221312) (12321313) (32321311) (21421312) (24112312) (13212313) (33212311)
            (22312312) (11412313) (31412311) (15121132) (24221131) (13321132) (22421131)
        ] [  % Odd parity
            (22121116) (42121114) (31221115) (51221113) (32112115) (52112113) (21212116)
            (41212114) (61212112) (23121115) (43121113) (12221116) (32221114) (52221112)
            (21321115) (41321113) (61321111) (13112116) (33112114) (22212115) (42212113)
            (11312116) (31312114) (51312112) (24121114) (13221115) (33221113) (22321114)
            (42321112) (11421115) (31421113) (51421111) (14112115) (34112113) (23212114)
            (43212112) (12312115) (32312113) (52312111) (21412114) (41412112) (25121113)
            (14221114) (34221112) (23321113) (43321111) (12421114) (32421112) (21521113)
            (41521111) (15112114) (24212113) (13312114) (33312112) (22412113) (42412111)
            (11512114) (31512112) (15221113) (24321112) (13421113) (33421111) (22521112)
            (16112113) (25212112) (14312113) (34312111) (23412112) (12512113) (32512111)
            (21612112) (21131116) (41131114) (61131112) (31122115) (51122113) (21113116)
            (41113114) (61113112) (22131115) (42131113) (11231116) (31231114) (51231112)
            (12122116) (32122114) (52122112) (21222115) (41222113) (61222111) (22113115)
            (42113113) (11213116) (31213114) (51213112) (23131114) (43131112) (12231115)
            (32231113) (52231111) (21331114) (41331112) (13122115) (33122113) (22222114)
            (42222112) (11322115) (31322113) (51322111) (23113114) (43113112) (12213115)
            (32213113) (52213111) (21313114) (41313112) (24131113) (13231114) (33231112)
            (22331113) (42331111) (11431114) (31431112) (14122114) (34122112) (23222113)
            (43222111) (12322114) (32322112) (21422113) (41422111) (24113113) (13213114)
            (33213112) (22313113) (42313111) (11413114) (31413112) (25131112) (14231113)
            (34231111) (23331112) (12431113) (32431111) (15122113) (24222112) (13322113)
            (33322111) (22422112) (11522113) (31522111) (25113112) (14213113) (34213111)
            (23313112) (12413113) (32413111) (21513112) (15231112) (24331111) (13431112)
            (16122112) (25222111) (14322112) (23422111) (12522112) (15213112) (24313111)
            (13413112) (22513111) (11613112) (21141115) (41141113) (61141111) (11132116)
            (31132114) (51132112) (21123115) (41123113) (61123111) (11114116) (31114114)
            (51114112) (22141114) (42141112) (11241115) (31241113) (51241111) (12132115)
            (32132113) (52132111) (21232114) (41232112) (22123114) (42123112) (11223115)
            (31223113) (51223111) (12114115) (32114113) (52114111) (21214114) (41214112)
            (23141113) (43141111) (12241114) (32241112) (21341113) (41341111) (13132114)
            (33132112) (22232113) (42232111) (11332114) (31332112) (23123113) (43123111)
            (12223114) (32223112) (21323113) (41323111) (13114114) (33114112) (22214113)
            (42214111) (11314114) (31314112) (24141112) (13241113) (33241111) (22341112)
            (14132113) (34132111) (23232112) (12332113) (32332111) (21432112) (24123112)
            (13223113) (33223111) (22323112) (11423113) (31423111) (14114113) (34114111)
            (23214112) (12314113) (32314111) (21414112) (25141111) (14241112) (23341111)
            (15132112) (24232111) (13332112) (22432111) (25123111) (14223112) (23323111)
            (12423112) (21523111) (15114112) (24214111) (13314112) (22414111) (11514112)
            (15241111) (16132111) (14332111) (15223111) (13423111) (16114111) (14314111)
            (12514111) (21151114) (41151112) (11142115) (31142113) (51142111) (21133114)
            (41133112) (11124115) (31124113) (51124111) (21115114) (41115112) (22151113)
            (42151111) (11251114) (31251112) (12142114) (32142112) (21242113) (41242111)
            (22133113) (42133111) (11233114) (31233112) (12124114) (32124112) (21224113)
            (41224111) (22115113) (42115111) (11215114) (31215112) (23151112) (12251113)
            (32251111) (13142113) (33142111) (22242112) (11342113) (31342111) (23133112)
            (12233113) (32233111) (21333112) (13124113) (33124111) (22224112) (11324113)
            (31324111) (23115112) (12215113) (32215111) (21315112) (24151111) (13251112)
            (14142112) (23242111) (12342112) (24133111) (13233112) (22333111) (11433112)
            (14124112) (23224111) (12324112) (21424111) (24115111) (13215112) (22315111)
            (11415112) (14251111) (15142111) (13342111) (14233111) (12433111) (15124111)
            (13324111) (11524111) (14215111) (12415111) (21161113) (41161111) (11152114)
            (31152112) (21143113) (41143111) (11134114) (31134112) (21125113) (41125111)
            (11116114) (31116112) (22161112) (12152113) (32152111) (21252112) (22143112)
            (11243113) (31243111) (12134113) (32134111) (21234112) (22125112) (11225113)
            (31225111) (12116113) (32116111) (21216112) (23161111) (13152112) (22252111)
            (23143111) (12243112) (21343111) (13134112) (22234111) (11334112) (23125111)
            (12225112) (21325111) (13116112) (22216111) (11316112) (14152111) (13243111)
            (14134111) (12334111) (13225111) (11425111) (14116111) (12316111) (41111215)
            (61111213) (21211126) (41211124) (61211122) (22111216) (42111214) (31211215)
            (51211213) (22211125) (42211123) (11311126) (31311124) (51311122) (23111215)
            (43111213) (12211216) (32211214) (52211212) (21311215) (41311213) (61311211)
            (23211124) (43211122) (12311125) (32311123) (52311121) (21411124) (41411122)
            (24111214) (13211215) (33211213) (22311214) (42311212) (11411215) (31411213)
            (51411211) (24211123) (13311124) (33311122) (22411123) (42411121) (11511124)
            (31511122) (25111213) (14211214) (34211212) (23311213) (43311211) (12411214)
            (32411212) (21511213) (41511211) (25211122) (14311123) (34311121) (23411122)
            (12511123) (32511121) (21611122) (15211213) (24311212) (13411213) (33411211)
            (22511212) (11611213) (31611211) (31121125) (51121123) (21112126) (41112124)
            (61112122) (21121216) (41121214) (61121212) (31112215) (51112213) (12121126)
            (32121124) (52121122) (21221125) (41221123) (61221121) (22112125) (42112123)
            (11212126) (22121215) (42121213) (11221216) (31221214) (51221212) (12112216)
            (32112214) (52112212) (21212215) (41212213) (61212211) (13121125) (33121123)
            (22221124) (42221122) (11321125) (31321123) (51321121) (23112124) (43112122)
            (12212125) (23121214) (43121212) (12221215) (32221213) (52221211) (21321214)
            (41321212) (13112215) (33112213) (22212214) (42212212) (11312215) (31312213)
            (51312211) (14121124) (34121122) (23221123) (43221121) (12321124) (32321122)
            (21421123) (41421121) (24112123) (13212124) (24121213) (13221214) (33221212)
            (11412124) (22321213) (42321211) (11421214) (31421212) (14112214) (34112212)
            (23212213) (43212211) (12312214) (32312212) (21412213) (41412211) (15121123)
            (24221122) (13321123) (33321121) (22421122) (11521123) (31521121) (25112122)
            (14212123) (25121212) (14221213) (34221211) (12412123) (23321212) (12421213)
            (32421211) (21521212) (15112213) (24212212) (13312213) (33312211) (22412212)
            (11512213) (31512211) (16121122) (25221121) (14321122) (23421121) (12521122)
            (15212122) (15221212) (13412122) (24321211) (13421212) (11612122) (22521211)
            (16112212) (25212211) (14312212) (23412211) (12512212) (21612211) (11131126)
            (31131124) (51131122) (21122125) (41122123) (61122121) (21131215) (41131213)
            (61131211) (11113126) (31113124) (51113122) (11122216) (31122214) (51122212)
            (21113215) (41113213) (61113211) (12131125) (32131123) (52131121) (21231124)
            (41231122) (22122124) (42122122) (11222125) (22131214) (42131212) (11231215)
            (31231213) (51231211) (12113125) (32113123) (52113121) (12122215) (32122213)
            (52122211) (21222214) (41222212) (22113214) (42113212) (11213215) (31213213)
            (51213211) (13131124) (33131122) (22231123) (42231121) (11331124) (31331122)
            (23122123) (43122121) (12222124) (23131213) (43131211) (12231214) (32231212)
            (21331213) (41331211) (13113124) (33113122) (13122214) (33122212) (11313124)
            (22222213) (42222211) (11322214) (31322212) (23113213) (43113211) (12213214)
            (32213212) (21313213) (41313211) (14131123) (34131121) (23231122) (12331123)
            (32331121) (21431122) (24122122) (13222123) (24131212) (13231213) (33231211)
            (11422123) (22331212) (11431213) (31431211) (14113123) (34113121) (14122213)
            (34122211) (12313123) (23222212) (12322213) (32322211) (21422212) (24113212)
            (13213213) (33213211) (22313212) (11413213) (31413211) (15131122) (24231121)
            (13331122) (22431121) (25122121) (14222122) (25131211) (14231212) (12422122)
            (23331211) (12431212) (15113122) (15122212) (13313122) (24222211) (13322212)
            (11513122) (22422211) (11522212) (25113211) (14213212) (23313211) (12413212)
            (21513211) (16131121) (14331121) (15222121) (15231211) (13422121) (13431211)
            (16113121) (16122211) (14313121) (14322211) (12513121) (12522211) (15213211)
            (13413211) (11613211) (11141125) (31141123) (51141121) (21132124) (41132122)
            (21141214) (41141212) (11123125) (31123123) (51123121) (11132215) (31132213)
            (51132211) (21114124) (41114122) (21123214) (41123212) (11114215) (31114213)
            (51114211) (12141124) (32141122) (21241123) (41241121) (22132123) (42132121)
            (11232124) (22141213) (42141211) (11241214) (31241212) (12123124) (32123122)
            (12132214) (32132212) (21232213) (41232211) (22114123) (42114121) (11214124)
            (22123213) (42123211) (11223214) (31223212) (12114214) (32114212) (21214213)
            (41214211) (13141123) (33141121) (22241122) (11341123) (31341121) (23132122)
            (12232123) (23141212) (12241213) (32241211) (21341212) (13123123) (33123121)
            (13132213) (33132211) (11323123) (22232212) (11332213) (31332211) (23114122)
            (12214123) (23123212) (12223213) (32223211) (21323212) (13114213) (33114211)
            (22214212) (11314213) (31314211) (14141122) (23241121) (12341122) (24132121)
            (13232122) (24141211) (13241212) (11432122) (22341211) (14123122) (14132212)
            (12323122) (23232211) (12332212) (21432211) (24114121) (13214122) (24123211)
            (13223212) (11414122) (22323211) (11423212) (14114212) (23214211) (12314212)
            (21414211) (15141121) (13341121) (14232121) (14241211) (12432121) (15123121)
            (15132211) (13323121) (13332211) (11523121) (14214121) (14223211) (12414121)
            (12423211) (15114211) (13314211) (11514211) (11151124) (31151122) (21142123)
            (41142121) (21151213) (41151211) (11133124) (31133122) (11142214) (31142212)
            (21124123) (41124121) (21133213) (41133211) (11115124) (31115122) (11124214)
            (31124212) (21115213) (41115211) (12151123) (32151121) (21251122) (22142122)
            (11242123) (22151212) (11251213) (31251211) (12133123) (32133121) (12142213)
            (32142211) (21242212) (22124122) (11224123) (22133212) (11233213) (31233211)
            (12115123) (32115121) (12124213) (32124211) (21224212) (22115212) (11215213)
            (31215211) (13151122) (22251121) (23142121) (12242122) (23151211) (12251212)
            (13133122) (13142212) (11333122) (22242211) (11342212) (23124121) (12224122)
            (23133211) (12233212) (21333211) (13115122) (13124212) (11315122) (22224211)
            (11324212) (23115211) (12215212) (21315211) (14151121) (13242121) (13251211)
            (14133121) (14142211) (12333121) (12342211) (13224121) (13233211) (11424121)
            (11433211) (14115121) (14124211) (12315121) (12324211) (13215211) (11415211)
            (11161123) (31161121) (21152122) (21161212) (11143123) (31143121) (11152213)
            (31152211) (21134122) (21143212) (11125123) (31125121) (11134213) (31134211)
            (21116122) (21125212) (12161122) (22152121) (11252122) (22161211) (12143122)
            (12152212) (21252211) (22134121) (11234122) (22143211) (11243212) (12125122)
            (12134212) (21234211) (22116121) (11216122) (22125211) (11225212) (13161121)
            (12252121) (13143121) (13152211) (11343121) (12234121) (12243211) (13125121)
            (13134211) (11325121) (11334211) (12216121) (12225211) (31111225) (51111223)
            (21111316) (41111314) (61111312) (31211134) (51211132) (12111226) (32111224)
            (52111222) (21211225) (41211223) (61211221) (22111315) (42111313) (11211316)
            (31211314) (51211312) (12211135) (32211133) (52211131) (21311134) (41311132)
            (13111225) (33111223) (22211224) (42211222) (11311225) (31311223) (51311221)
            (23111314) (43111312) (12211315) (32211313) (52211311) (21311314) (41311312)
            (13211134) (33211132) (22311133) (42311131) (11411134) (31411132) (14111224)
            (34111222) (23211223) (43211221) (12311224) (32311222) (21411223) (41411221)
            (24111313) (13211314) (33211312) (22311313) (42311311) (11411314) (31411312)
            (14211133) (34211131) (23311132) (12411133) (32411131) (21511132) (15111223)
            (24211222) (13311223) (33311221) (22411222) (11511223) (31511221) (25111312)
            (14211313) (34211311) (23311312) (12411313) (32411311) (21511312) (15211132)
            (24311131) (13411132) (22511131) (11611132) (16111222) (25211221) (14311222)
            (23411221) (12511222) (21611221) (15211312) (24311311) (13411312) (22511311)
            (11611312) (21121135) (41121133) (61121131) (11112136) (31112134) (51112132)
            (11121226) (31121224) (51121222) (21112225) (41112223) (61112221) (21121315)
            (41121313) (61121311) (11112316) (31112314) (51112312) (22121134) (42121132)
            (11221135) (31221133) (51221131) (12112135) (32112133) (52112131) (12121225)
            (32121223) (52121221) (21221224) (41221222) (22112224) (42112222) (11212225)
            (22121314) (42121312) (11221315) (31221313) (51221311) (12112315) (32112313)
            (52112311) (21212314) (41212312) (23121133) (43121131) (12221134) (32221132)
            (21321133) (41321131) (13112134) (33112132) (13121224) (33121222) (11312134)
            (22221223) (42221221) (11321224) (31321222) (23112223) (43112221) (12212224)
            (23121313) (43121311) (12221314) (32221312) (21321313) (41321311) (13112314)
            (33112312) (22212313) (42212311) (11312314) (31312312) (24121132) (13221133)
            (33221131) (22321132) (11421133) (31421131) (14112133) (34112131) (14121223)
            (34121221) (12312133) (23221222) (12321223) (32321221) (21421222) (24112222)
            (13212223) (24121312) (13221313) (33221311) (11412223) (22321312) (11421313)
            (31421311) (14112313) (34112311) (23212312) (12312313) (32312311) (21412312)
            (25121131) (14221132) (23321131) (12421132) (21521131) (15112132) (15121222)
            (13312132) (24221221) (13321222) (11512132) (22421221) (11521222) (25112221)
            (14212222) (25121311) (14221312) (12412222) (23321311) (12421312) (21521311)
            (15112312) (24212311) (13312312) (22412311) (11512312) (15221131) (13421131)
            (16112131) (16121221) (14312131) (14321221) (12512131) (12521221) (15212221)
            (15221311) (13412221) (13421311) (11612221) (16112311) (14312311) (12512311)
            (21131134) (41131132) (11122135) (31122133) (51122131) (11131225) (31131223)
            (51131221) (21113134) (41113132) (21122224) (41122222) (21131314) (41131312)
            (11113225) (31113223) (51113221) (11122315) (31122313) (51122311) (21113314)
            (41113312) (22131133) (42131131) (11231134) (31231132) (12122134) (32122132)
            (12131224) (32131222) (21231223) (41231221) (22113133) (42113131) (11213134)
            (22122223) (42122221) (11222224) (22131313) (42131311) (11231314) (31231312)
            (12113224) (32113222) (12122314) (32122312) (21222313) (41222311) (22113313)
            (42113311) (11213314) (31213312) (23131132) (12231133) (32231131) (21331132)
            (13122133) (33122131) (13131223) (33131221) (11322133) (22231222) (11331223)
            (31331221) (23113132) (12213133) (23122222) (12222223) (23131312) (12231313)
            (32231311) (21331312) (13113223) (33113221) (13122313) (33122311) (11313223)
            (22222312) (11322313) (31322311) (23113312) (12213313) (32213311) (21313312)
            (24131131) (13231132) (22331131) (11431132) (14122132) (14131222) (12322132)
            (23231221) (12331222) (21431221) (24113131) (13213132) (24122221) (13222222)
            (24131311) (11413132) (13231312) (11422222) (22331311) (11431312) (14113222)
            (14122312) (12313222) (23222311) (12322312) (21422311) (24113311) (13213312)
            (22313311) (11413312) (14231131) (12431131) (15122131) (15131221) (13322131)
            (13331221) (11522131) (14213131) (14222221) (12413131) (14231311) (12422221)
            (12431311) (15113221) (15122311) (13313221) (13322311) (11513221) (11522311)
            (14213311) (12413311) (21141133) (41141131) (11132134) (31132132) (11141224)
            (31141222) (21123133) (41123131) (21132223) (41132221) (21141313) (41141311)
            (11114134) (31114132) (11123224) (31123222) (11132314) (31132312) (21114223)
            (41114221) (21123313) (41123311) (11114314) (31114312) (22141132) (11241133)
            (31241131) (12132133) (32132131) (12141223) (32141221) (21241222) (22123132)
            (11223133) (22132222) (11232223) (22141312) (11241313) (31241311) (12114133)
            (32114131) (12123223) (32123221) (12132313) (32132311) (21232312) (22114222)
            (11214223) (22123312) (11223313) (31223311) (12114313) (32114311) (21214312)
            (23141131) (12241132) (21341131) (13132132) (13141222) (11332132) (22241221)
            (11341222) (23123131) (12223132) (23132221) (12232222) (23141311) (12241312)
            (21341311) (13114132) (13123222) (11314132) (13132312) (11323222) (22232311)
            (11332312) (23114221) (12214222) (23123311) (12223312) (21323311) (13114312)
            (22214311) (11314312) (13241131) (14132131) (14141221) (12332131) (12341221)
            (13223131) (13232221) (11423131) (13241311) (11432221) (14114131) (14123221)
            (12314131) (14132311) (12323221) (12332311) (13214221) (13223311) (11414221)
            (11423311) (14114311) (12314311) (21151132) (11142133) (31142131) (11151223)
            (31151221) (21133132) (21142222) (21151312) (11124133) (31124131) (11133223)
            (31133221) (11142313) (31142311) (21115132) (21124222) (21133312) (11115223)
            (31115221) (11124313) (31124311) (22151131) (11251132) (12142132) (12151222)
            (21251221) (22133131) (11233132) (22142221) (11242222) (22151311) (11251312)
            (12124132) (12133222) (12142312) (21242311) (22115131) (11215132) (22124221)
            (11224222) (22133311) (11233312) (12115222) (12124312) (21224311) (12251131)
            (13142131) (13151221) (11342131) (12233131) (12242221) (12251311) (13124131)
            (13133221) (11324131) (13142311) (11333221) (11342311) (12215131) (12224221)
            (12233311) (13115221) (13124311) (11315221) (11324311) (21161131) (11152132)
            (11161222) (21143131) (21152221) (21161311) (11134132) (11143222) (11152312)
            (21125131) (21134221) (21143311) (11116132) (11125222) (11134312) (12152131)
            (12161221) (11243131) (11252221) (12134131) (12143221) (12152311) (11225131)
            (11234221) (11243311) (12116131) (12125221) (12134311) (21111235) (41111233)
            (61111231) (11111326) (31111324) (51111322) (21111415) (41111413) (61111411)
            (21211144) (41211142) (22111234) (42111232) (11211235) (31211233) (51211231)
            (12111325) (32111323) (52111321) (21211324) (41211322) (22111414) (42111412)
            (11211415) (31211413) (51211411) (22211143) (42211141) (11311144) (31311142)
            (23111233) (43111231) (12211234) (32211232) (21311233) (41311231) (13111324)
            (33111322) (22211323) (42211321) (11311324) (31311322) (23111413) (43111411)
            (12211414) (32211412) (21311413) (41311411) (23211142) (12311143) (32311141)
            (21411142) (24111232) (13211233) (33211231) (22311232) (11411233) (31411231)
            (14111323) (34111321) (23211322) (12311323) (32311321) (21411322) (24111412)
            (13211413) (33211411) (22311412) (11411413) (31411411) (24211141) (13311142)
            (22411141) (11511142) (25111231) (14211232) (23311231) (12411232) (21511231)
            (15111322) (24211321) (13311322) (22411321) (11511322) (25111411) (14211412)
            (23311411) (12411412) (21511411) (14311141) (12511141) (15211231) (13411231)
            (11611231) (16111321) (14311321) (12511321) (15211411) (13411411) (11611411)
            (31121143) (51121141) (21112144) (41112142) (21121234) (41121232) (11112235)
            (31112233) (51112231) (11121325) (31121323) (51121321) (21112324) (41112322)
            (21121414) (41121412) (11112415) (31112413) (51112411) (12121144) (32121142)
            (21221143) (41221141) (22112143) (42112141) (11212144) (22121233) (42121231)
            (11221234) (31221232) (12112234) (32112232) (12121324) (32121322) (21221323)
            (41221321) (22112323) (42112321) (11212324) (22121413) (42121411) (11221414)
            (31221412) (12112414) (32112412) (21212413) (41212411) (13121143) (33121141)
            (22221142) (11321143) (31321141) (23112142) (12212143) (23121232) (12221233)
            (32221231) (21321232) (13112233) (33112231) (13121323) (33121321) (11312233)
            (22221322) (11321323) (31321321) (23112322) (12212323) (23121412) (12221413)
            (32221411) (21321412) (13112413) (33112411) (22212412) (11312413) (31312411)
            (14121142) (23221141) (12321142) (21421141) (24112141) (13212142) (24121231)
            (13221232) (11412142) (22321231) (11421232) (14112232) (14121322) (12312232)
            (23221321) (12321322) (21421321) (24112321) (13212322) (24121411) (13221412)
            (11412322) (22321411) (11421412) (14112412) (23212411) (12312412) (21412411)
            (15121141) (13321141) (11521141) (14212141) (14221231) (12412141) (12421231)
            (15112231) (15121321) (13312231) (13321321) (11512231) (11521321) (14212321)
            (14221411) (12412321) (12421411) (15112411) (13312411) (11512411) (11131144)
            (31131142) (21122143) (41122141) (21131233) (41131231) (11113144) (31113142)
            (11122234) (31122232) (11131324) (31131322) (21113233) (41113231) (21122323)
            (41122321) (21131413) (41131411) (11113324) (31113322) (11122414) (31122412)
            (21113413) (41113411) (12131143) (32131141) (21231142) (22122142) (11222143)
            (22131232) (11231233) (31231231) (12113143) (32113141) (12122233) (32122231)
            (12131323) (32131321) (21231322) (22113232) (11213233) (22122322) (11222323)
            (22131412) (11231413) (31231411) (12113323) (32113321) (12122413) (32122411)
            (21222412) (22113412) (11213413) (31213411) (13131142) (22231141) (11331142)
            (23122141) (12222142) (23131231) (12231232) (21331231) (13113142) (13122232)
            (11313142) (13131322) (11322232) (22231321) (11331322) (23113231) (12213232)
            (23122321) (12222322) (23131411) (12231412) (21331411) (13113322) (13122412)
            (11313322) (22222411) (11322412) (23113411) (12213412) (21313411) (14131141)
            (12331141) (13222141) (13231231) (11422141) (11431231) (14113141) (14122231)
            (12313141) (14131321) (12322231) (12331321) (13213231) (13222321) (11413231)
            (13231411) (11422321) (11431411) (14113321) (14122411) (12313321) (12322411)
            (13213411) (11413411) (11141143) (31141141) (21132142) (21141232) (11123143)
            (31123141) (11132233) (31132231) (11141323) (31141321) (21114142) (21123232)
            (21132322) (21141412) (11114233) (31114231) (11123323) (31123321) (11132413)
            (31132411) (21114322) (21123412) (12141142) (21241141) (22132141) (11232142)
            (22141231) (11241232) (12123142) (12132232) (12141322) (21241321) (22114141)
            (11214142) (22123231) (11223232) (22132321) (11232322) (22141411) (11241412)
            (12114232) (12123322) (12132412) (21232411) (22114321) (11214322) (22123411)
            (11223412) (13141141) (11341141) (12232141) (12241231) (13123141) (13132231)
            (11323141) (13141321) (11332231) (11341321) (12214141) (12223231) (12232321)
            (12241411) (13114231) (13123321) (11314231) (13132411) (11323321) (11332411)
            (12214321) (12223411) (11151142) (21142141) (21151231) (11133142) (11142232)
            (11151322) (21124141) (21133231) (21142321) (21151411) (11115142) (11124232)
            (11133322) (11142412) (21115231) (21124321) (21133411) (12151141) (11242141)
            (11251231) (12133141) (12142231) (12151321) (11224141) (11233231) (11242321)
            (11251411) (12115141) (12124231) (12133321) (12142411) (11215231) (11224321)
            (11233411) (11161141) (11143141) (11152231) (11161321) (11125141) (11134231)
            (11143321) (11152411) (11111245) (31111243) (51111241) (21111334) (41111332)
            (11111425) (31111423) (51111421) (21111514) (41111512) (31211152) (12111244)
            (32111242) (21211243) (41211241) (22111333) (42111331) (11211334) (31211332)
            (12111424) (32111422) (21211423) (41211421) (22111513) (42111511) (11211514)
            (31211512) (12211153) (32211151) (21311152) (13111243) (33111241) (22211242)
            (11311243) (31311241) (23111332) (12211333) (32211331) (21311332) (13111423)
            (33111421) (22211422) (11311423) (31311421) (23111512) (12211513) (32211511)
            (21311512) (13211152) (22311151) (11411152) (14111242) (23211241) (12311242)
            (21411241) (24111331) (13211332) (22311331) (11411332) (14111422) (23211421)
            (12311422) (21411421) (24111511) (13211512) (22311511) (11411512) (14211151)
            (12411151) (15111241) (13311241) (11511241) (14211331) (12411331) (15111421)
            (13311421) (11511421) (14211511) (12411511) (21121153) (41121151) (11112154)
            (31112152) (11121244) (31121242) (21112243) (41112241) (21121333) (41121331)
            (11112334) (31112332) (11121424) (31121422) (21112423) (41112421) (21121513)
            (41121511) (11112514) (31112512) (22121152) (11221153) (31221151) (12112153)
            (32112151) (12121243) (32121241) (21221242) (22112242) (11212243) (22121332)
            (11221333) (31221331) (12112333) (32112331) (12121423) (32121421) (21221422)
            (22112422) (11212423) (22121512) (11221513) (31221511) (12112513) (32112511)
            (21212512) (23121151) (12221152) (21321151) (13112152) (13121242) (11312152)
            (22221241) (11321242) (23112241) (12212242) (23121331) (12221332) (21321331)
            (13112332) (13121422) (11312332) (22221421) (11321422) (23112421) (12212422)
            (23121511) (12221512) (21321511) (13112512) (22212511) (11312512) (13221151)
            (11421151) (14112151) (14121241) (12312151) (12321241) (13212241) (13221331)
            (11412241) (11421331) (14112331) (14121421) (12312331) (12321421) (13212421)
            (13221511) (11412421) (11421511) (14112511) (12312511) (21131152) (11122153)
            (31122151) (11131243) (31131241) (21113152) (21122242) (21131332) (11113243)
            (31113241) (11122333) (31122331) (11131423) (31131421) (21113332) (21122422)
            (21131512) (11113423) (31113421) (11122513) (31122511) (22131151) (11231152)
            (12122152) (12131242) (21231241) (22113151) (11213152) (22122241) (11222242)
            (22131331) (11231332) (12113242) (12122332) (12131422) (21231421) (22113331)
            (11213332) (22122421) (11222422) (22131511) (11231512) (12113422) (12122512)
            (21222511) (12231151) (13122151) (13131241) (11322151) (11331241) (12213151)
            (12222241) (12231331) (13113241) (13122331) (11313241) (13131421) (11322331)
            (11331421) (12213331) (12222421) (12231511) (13113421) (13122511) (11313421)
            (11322511) (21141151) (11132152) (11141242) (21123151) (21132241) (21141331)
            (11114152) (11123242) (11132332) (11141422) (21114241) (21123331) (21132421)
            (21141511) (11114332) (11123422) (11132512) (11241151) (12132151) (12141241)
            (11223151) (11232241) (11241331) (12114151) (12123241) (12132331) (12141421)
            (11214241) (11223331) (11232421) (11241511) (12114331) (12123421) (12132511)
            (11142151) (11151241) (11124151) (11133241) (11142331) (11151421) (11115241)
            (11124331) (11133421) (11142511) (21111253) (41111251) (11111344) (31111342)
            (21111433) (41111431) (11111524) (31111522) (21111613) (41111611) (21211162)
            (22111252) (11211253) (31211251) (12111343) (32111341) (21211342) (22111432)
            (11211433) (31211431) (12111523) (32111521) (21211522) (22111612) (11211613)
            (31211611) (22211161) (11311162) (23111251) (12211252) (21311251) (13111342)
            (22211341) (11311342) (23111431) (12211432) (21311431) (13111522) (22211521)
            (11311522) (23111611) (12211612) (21311611) (12311161) (13211251) (11411251)
            (14111341) (12311341) (13211431) (11411431) (14111521) (12311521) (13211611)
            (11411611) (31121161) (21112162) (21121252) (11112253) (31112251) (11121343)
            (31121341) (21112342) (21121432) (11112433) (31112431) (11121523) (31121521)
            (21112522) (21121612) (12121162) (21221161) (22112161) (11212162) (22121251)
            (11221252) (12112252) (12121342) (21221341) (22112341) (11212342) (22121431)
            (11221432) (12112432) (12121522) (21221521) (22112521) (11212522) (22121611)
            (11221612) (13121161) (11321161) (12212161) (12221251) (13112251) (13121341)
            (11312251) (11321341) (12212341) (12221431) (13112431) (13121521) (11312431)
            (11321521) (12212521) (12221611) (11131162) (21122161) (21131251) (11113162)
        ]
    ] def

    /parity [
        (1001) (0101) (1100) (0011) (1010) (0110) (1111) (0000)
    ] def

    % Derive the bits for each row
    /rowbits r array def
    0 1 r 1 sub {
        /i exch def
        /p i r 1 sub ne {parity i get} {(0000)} ifelse def
        /ccrow ccs i 8 mul 8 getinterval def
        /scrow [
            0 2 7 {ccrow exch 2 getinterval aload pop exch 49 mul add} for
        ] def
        /sbs [
            10 1 1
            0 1 3 {
                /j exch def
                patterns p j get 48 sub get scrow j get get {48 sub} forall
            } for
            4 1
        ] def
        mark
        1 sbs {1 index 0 eq {{1}} {{0}} ifelse repeat} forall
        counttomark 1 sub array astore exch pop exch pop
        rowbits i 3 -1 roll put
    } for

    % Populate the bitmap
    /pixs [
        81 sepheight mul {1} repeat
        0 1 r 2 sub {
            /i exch def
            rowheight {rowbits i get aload pop} repeat
            sepheight {10 {0} repeat 70 {1} repeat 0} repeat
        } for
        rowheight {rowbits r 1 sub get aload pop} repeat
        81 sepheight mul {1} repeat
    ] def

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx 81
    /pixy pixs length 81 idiv
    /height pixs length 81 idiv 72 div
    /width 81 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /code49 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER code49--

% --BEGIN ENCODER channelcode--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Channel Code
% --EXAM: 3493
% --EXOP: height=0.5 includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp channelcode 0.0 2019110800 125424 124333
%%BeginData:        250 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
%psc /channelcode {
%psc 
%psc     20 dict begin                 % Confine variables to local scope
%psc 
%psc     /options exch def       % We are given an option string
%psc     /barcode exch def       % We are given a barcode string
%psc 
%psc     /dontdraw false def
%psc     /shortfinder false def
%psc     /includetext false def
%psc     /includecheck false def
%psc     /height 1 def
%psc 
%psc     % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
%psc     options {def} forall
%psc 
%psc     /height height cvr def
%psc 
%psc     % Validate the input
%psc     barcode length 2 lt barcode length 7 gt or {
%psc         /bwipp.channelcodeBadLength (Channel Code must be 2 to 7 digits) //raiseerror exec
%psc     } if
%psc     barcode {
%psc         dup 48 lt exch 57 gt or {
%psc             /bwipp.channelcodeBadCharacter (Channel Code must contain only digits) //raiseerror exec
%psc         } if
%psc     } forall
%psc     barcode cvi [ 26 292 3493 44072 576688 7742862 ] barcode length 2 sub get gt {
%psc         /bwipp.channelcodeTooBig (The Channel Code value is too big for the number of channels) //raiseerror exec
%psc     } if
%psc 
%psc     % Tail-call optimisation FTW!
%psc     /loops1 { /s2max s1max 1 add s1 sub def  /b1 1 def
%psc               s1 1 eq {nextb1} {loopb1} ifelse                             } bind def
%psc     /loopb1 { /b2max b1max 1 add b1 sub def  /s2 1 def  loops2             } bind def
%psc     /loops2 { /s3max s2max 1 add s2 sub def  /b2 1 def
%psc               s1 b1 add s2 add 3 eq {nextb2} {loopb2} ifelse               } bind def
%psc     /loopb2 { /b3max b2max 1 add b2 sub def  /s3 1 def  loops3             } bind def
%psc     /loops3 { /s4max s3max 1 add s3 sub def  /b3 1 def
%psc               b1 s2 add b2 add s3 add 4 eq {nextb3} {loopb3} ifelse        } bind def
%psc     /loopb3 { /b4max b3max 1 add b3 sub def  /s4 1 def  loops4             } bind def
%psc     /loops4 { /s5max s4max 1 add s4 sub def  /b4 1 def
%psc               b2 s3 add b3 add s4 add 4 eq {nextb4} {loopb4} ifelse        } bind def
%psc     /loopb4 { /b5max b4max 1 add b4 sub def  /s5 1 def  loops5             } bind def
%psc     /loops5 { /s6max s5max 1 add s5 sub def  /b5 1 def
%psc               b3 s4 add b4 add s5 add 4 eq {nextb5} {loopb5} ifelse        } bind def
%psc     /loopb5 { /b6max b5max 1 add b5 sub def  /s6 1 def  loops6             } bind def
%psc     /loops6 { /s7max s6max 1 add s6 sub def  /b6 1 def
%psc               b4 s5 add b5 add s6 add 4 eq {nextb6} {loopb6} ifelse        } bind def
%psc     /loopb6 { /b7max b6max 1 add b6 sub def  /s7 1 def  loops7             } bind def
%psc     /loops7 { /s8 s7max 1 add s7 sub def     /b7 1 def
%psc               b5 s6 add b6 add s7 add 4 eq {nextb7} {loopb7} ifelse        } bind def
%psc     /loopb7 { /b8 b7max 1 add b7 sub def
%psc               b6 s7 add b7 add s8 add b8 add 5 eq {nextb7} {chkchr} ifelse } bind def
%psc     /chkchr {
%psc         value target eq {
%psc             [s1 b1 s2 b2 s3 b3 s4 b4 s5 b5 s6 b6 s7 b7 s8 b8] exit
%psc         } if
%psc         /value value 1 add def
%psc         nextb7
%psc     } bind def
%psc     /nextb7 { /b7 b7 1 add def  b7 b7max le {loopb7} {nexts7} ifelse } bind def
%psc     /nexts7 { /s7 s7 1 add def  s7 s7max le {loops7} {nextb6} ifelse } bind def
%psc     /nextb6 { /b6 b6 1 add def  b6 b6max le {loopb6} {nexts6} ifelse } bind def
%psc     /nexts6 { /s6 s6 1 add def  s6 s6max le {loops6} {nextb5} ifelse } bind def
%psc     /nextb5 { /b5 b5 1 add def  b5 b5max le {loopb5} {nexts5} ifelse } bind def
%psc     /nexts5 { /s5 s5 1 add def  s5 s5max le {loops5} {nextb4} ifelse } bind def
%psc     /nextb4 { /b4 b4 1 add def  b4 b4max le {loopb4} {nexts4} ifelse } bind def
%psc     /nexts4 { /s4 s4 1 add def  s4 s4max le {loops4} {nextb3} ifelse } bind def
%psc     /nextb3 { /b3 b3 1 add def  b3 b3max le {loopb3} {nexts3} ifelse } bind def
%psc     /nexts3 { /s3 s3 1 add def  s3 s3max le {loops3} {nextb2} ifelse } bind def
%psc     /nextb2 { /b2 b2 1 add def  b2 b2max le {loopb2} {nexts2} ifelse } bind def
%psc     /nexts2 { /s2 s2 1 add def  s2 s2max le {loops2} {nextb1} ifelse } bind def
%psc     /nextb1 { /b1 b1 1 add def  b1 b1max le {loopb1} {nexts1} ifelse } bind def
%psc     /nexts1 { /s1 s1 1 add def  s1 s1max le {loops1} if              } bind def
%psc 
%psc     /memo [  % Accelerate generation of bar patterns
%psc         [  % CH3
%psc             [       0  [1 1 1 1 1 2 1 2]  [1 1 1 1 1 1 1 3]  [1 1 1 1 1 3 2]  [1 1 1 1 1 3 3] ]
%psc         ]
%psc         [  % CH4
%psc             [       0  [1 1 1 1 2 1 1 3]  [1 1 1 1 1 1 1 4]  [1 1 1 1 4 3 3]  [1 1 1 1 4 4 4] ]
%psc         ]
%psc         [  % CH5
%psc             [       0  [1 1 1 2 1 1 2 3]  [1 1 1 1 1 1 1 5]  [1 1 1 5 4 4 4]  [1 1 1 5 5 5 5] ]
%psc         ]
%psc         [  % CH6
%psc             [       0  [1 1 2 1 1 2 1 4]  [1 1 1 1 1 1 1 6]  [1 1 6 5 5 5 4]  [1 1 6 6 6 6 6] ]
%psc         ]
%psc         [  % CH7
%psc             [       0  [1 2 1 1 2 1 1 5]  [1 1 1 1 1 1 1 7]  [1 7 6 6 6 5 5]  [1 7 7 7 7 7 7] ]
%psc             [  150000  [1 3 1 1 2 4 1 1]  [1 1 3 1 2 3 2 1]  [1 7 5 5 5 4 1]  [1 7 7 5 5 4 2] ]
%psc             [  300000  [1 1 4 2 1 1 1 3]  [1 2 4 1 1 1 2 2]  [1 7 7 4 3 3 3]  [1 7 6 3 3 3 3] ]
%psc             [  450000  [1 1 4 1 1 4 1 1]  [1 3 2 1 2 1 2 2]  [1 7 7 4 4 4 1]  [1 7 5 4 4 3 3] ]
%psc         ]
%psc         [  % CH8
%psc             [       0  [2 1 1 2 1 1 2 5]  [1 1 1 1 1 1 1 8]  [8 7 7 7 6 6 6]  [8 8 8 8 8 8 8] ]
%psc             [  150000  [2 1 1 2 1 1 5 2]  [1 1 2 1 5 2 1 2]  [8 7 7 7 6 6 6]  [8 8 8 7 7 3 2] ]
%psc             [  300000  [2 1 1 4 2 2 2 1]  [1 1 4 2 1 2 1 3]  [8 7 7 7 4 3 2]  [8 8 8 5 4 4 3] ]
%psc             [  450000  [2 2 2 1 1 3 1 3]  [1 1 2 1 1 2 4 3]  [8 7 6 5 5 5 3]  [8 8 8 7 7 7 6] ]
%psc             [  600000  [2 3 1 1 4 2 1 1]  [1 1 3 1 3 1 2 3]  [8 7 5 5 5 2 1]  [8 8 8 6 6 4 4] ]
%psc             [  750000  [2 1 3 1 2 3 2 1]  [1 2 1 1 3 4 1 2]  [8 7 7 5 5 4 2]  [8 8 7 7 7 5 2] ]
%psc             [  900000  [2 2 1 4 1 2 2 1]  [1 2 1 2 1 5 1 2]  [8 7 6 6 3 3 2]  [8 8 7 7 6 6 2] ]
%psc             [ 1050000  [2 4 1 1 1 2 2 2]  [1 2 1 2 1 3 1 4]  [8 7 4 4 4 4 3]  [8 8 7 7 6 6 4] ]
%psc             [ 1200000  [2 2 1 5 2 1 1 1]  [1 3 1 3 2 1 1 3]  [8 7 6 6 2 1 1]  [8 8 6 6 4 3 3] ]
%psc             [ 1350000  [2 2 1 3 3 1 1 2]  [1 4 1 2 1 1 4 1]  [8 7 6 6 4 2 2]  [8 8 5 5 4 4 4] ]
%psc             [ 1500000  [3 1 2 2 2 1 1 3]  [1 1 1 1 2 2 4 3]  [8 6 6 5 4 3 3]  [8 8 8 8 8 7 6] ]
%psc             [ 1650000  [3 2 1 2 3 1 2 1]  [1 1 1 1 3 2 4 2]  [8 6 5 5 4 2 2]  [8 8 8 8 8 6 5] ]
%psc             [ 1800000  [3 1 1 3 2 3 1 1]  [1 2 1 1 3 4 2 1]  [8 6 6 6 4 3 1]  [8 8 7 7 7 5 2] ]
%psc             [ 1950000  [3 2 1 2 1 2 2 2]  [1 2 4 1 2 2 1 2]  [8 6 5 5 4 4 3]  [8 8 7 4 4 3 2] ]
%psc             [ 2100000  [3 1 2 1 4 2 1 1]  [1 4 1 2 1 1 2 3]  [8 6 6 5 5 2 1]  [8 8 5 5 4 4 4] ]
%psc             [ 2250000  [4 1 1 4 1 1 2 1]  [1 1 4 2 1 1 1 4]  [8 5 5 5 2 2 2]  [8 8 8 5 4 4 4] ]
%psc             [ 2400000  [4 3 1 2 1 2 1 1]  [1 2 4 2 2 2 1 1]  [8 5 3 3 2 2 1]  [8 8 7 4 3 2 1] ]
%psc             [ 2550000  [5 1 1 1 1 1 3 2]  [1 2 2 4 3 1 1 1]  [8 4 4 4 4 4 4]  [8 8 7 6 3 1 1] ]
%psc             [ 2700000  [1 1 3 6 1 1 1 1]  [2 1 1 2 1 1 6 1]  [8 8 8 6 1 1 1]  [8 7 7 7 6 6 6] ]
%psc             [ 2850000  [1 1 1 2 2 3 2 3]  [2 1 3 3 2 1 1 2]  [8 8 8 8 7 6 4]  [8 7 7 5 3 2 2] ]
%psc             [ 3000000  [1 2 3 3 3 1 1 1]  [2 1 1 1 5 1 2 2]  [8 8 7 5 3 1 1]  [8 7 7 7 7 3 3] ]
%psc             [ 3150000  [1 3 1 2 2 2 3 1]  [2 1 1 3 2 1 3 2]  [8 8 6 6 5 4 3]  [8 7 7 7 5 4 4] ]
%psc             [ 3300000  [1 5 1 1 3 1 1 2]  [2 1 1 4 3 2 1 1]  [8 8 4 4 4 2 2]  [8 7 7 7 4 2 1] ]
%psc             [ 3450000  [1 1 2 2 2 5 1 1]  [2 2 2 2 3 1 1 2]  [8 8 8 7 6 5 1]  [8 7 6 5 4 2 2] ]
%psc             [ 3600000  [1 2 1 1 3 4 2 1]  [2 2 3 1 1 1 2 3]  [8 8 7 7 7 5 2]  [8 7 6 4 4 4 4] ]
%psc             [ 3750000  [1 1 2 1 1 5 3 1]  [2 3 1 1 4 1 2 1]  [8 8 8 7 7 7 3]  [8 7 5 5 5 2 2] ]
%psc             [ 3900000  [1 3 1 2 4 2 1 1]  [2 3 3 1 1 1 2 2]  [8 8 6 6 5 2 1]  [8 7 5 3 3 3 3] ]
%psc             [ 4050000  [1 3 1 2 3 1 2 2]  [2 6 2 1 1 1 1 1]  [8 8 6 6 5 3 3]  [8 7 2 1 1 1 1] ]
%psc             [ 4200000  [2 1 1 2 1 2 2 4]  [2 1 3 1 3 3 1 1]  [8 7 7 7 6 6 5]  [8 7 7 5 5 3 1] ]
%psc             [ 4350000  [2 2 1 4 1 2 2 1]  [2 1 4 1 3 1 2 1]  [8 7 6 6 3 3 2]  [8 7 7 4 4 2 2] ]
%psc             [ 4500000  [2 1 1 1 2 1 3 4]  [2 2 2 1 2 1 3 2]  [8 7 7 7 7 6 6]  [8 7 6 5 5 4 4] ]
%psc             [ 4650000  [2 4 2 1 2 2 1 1]  [2 2 2 1 2 1 2 3]  [8 7 4 3 3 2 1]  [8 7 6 5 5 4 4] ]
%psc             [ 4800000  [2 3 2 1 1 2 2 2]  [2 4 1 2 1 1 3 1]  [8 7 5 4 4 4 3]  [8 7 4 4 3 3 3] ]
%psc             [ 4950000  [3 2 2 1 2 1 1 3]  [2 1 1 2 1 1 1 6]  [8 6 5 4 4 3 3]  [8 7 7 7 6 6 6] ]
%psc             [ 5100000  [3 2 1 1 1 3 3 1]  [2 2 3 2 1 1 3 1]  [8 6 5 5 5 5 3]  [8 7 6 4 3 3 3] ]
%psc             [ 5250000  [4 1 2 1 2 2 1 2]  [2 1 4 1 2 1 1 3]  [8 5 5 4 4 3 2]  [8 7 7 4 4 3 3] ]
%psc             [ 5400000  [5 1 2 1 2 1 1 2]  [2 2 1 1 4 1 3 1]  [8 4 4 3 3 2 2]  [8 7 6 6 6 3 3] ]
%psc             [ 5550000  [1 1 4 4 1 2 1 1]  [3 1 2 1 1 3 2 2]  [8 8 8 5 2 2 1]  [8 6 6 5 5 5 3] ]
%psc             [ 5700000  [1 2 1 1 2 1 3 4]  [3 1 4 1 2 2 1 1]  [8 8 7 7 7 6 6]  [8 6 6 3 3 2 1] ]
%psc             [ 5850000  [1 1 3 3 2 2 2 1]  [3 2 1 1 2 1 4 1]  [8 8 8 6 4 3 2]  [8 6 5 5 5 4 4] ]
%psc             [ 6000000  [1 4 3 1 1 2 1 2]  [3 2 2 1 2 2 1 2]  [8 8 5 3 3 3 2]  [8 6 5 4 4 3 2] ]
%psc             [ 6150000  [2 1 1 4 1 2 1 3]  [3 1 1 2 1 2 1 4]  [8 7 7 7 4 4 3]  [8 6 6 6 5 5 4] ]
%psc             [ 6300000  [2 2 2 1 3 2 2 1]  [3 1 4 1 3 1 1 1]  [8 7 6 5 5 3 2]  [8 6 6 3 3 1 1] ]
%psc             [ 6450000  [2 5 1 3 1 1 1 1]  [3 2 1 1 2 3 1 2]  [8 7 3 3 1 1 1]  [8 6 5 5 5 4 2] ]
%psc             [ 6600000  [3 2 3 1 2 1 2 1]  [3 1 3 2 2 1 1 2]  [8 6 5 3 3 2 2]  [8 6 6 4 3 2 2] ]
%psc             [ 6750000  [4 1 2 2 1 1 3 1]  [3 2 1 3 1 1 3 1]  [8 5 5 4 3 3 3]  [8 6 5 5 3 3 3] ]
%psc             [ 6900000  [1 2 1 4 2 2 2 1]  [4 1 1 2 2 2 2 1]  [8 8 7 7 4 3 2]  [8 5 5 5 4 3 2] ]
%psc             [ 7050000  [1 2 5 2 1 2 1 1]  [4 2 1 3 2 1 1 1]  [8 8 7 3 2 2 1]  [8 5 4 4 2 1 1] ]
%psc             [ 7200000  [2 2 2 1 3 1 3 1]  [4 1 3 1 3 1 1 1]  [8 7 6 5 5 3 3]  [8 5 5 3 3 1 1] ]
%psc             [ 7350000  [3 1 4 2 1 1 1 2]  [4 2 2 1 1 1 2 2]  [8 6 6 3 2 2 2]  [8 5 4 3 3 3 3] ]
%psc             [ 7500000  [1 1 1 4 1 1 3 3]  [5 2 1 2 2 1 1 1]  [8 8 8 8 5 5 5]  [8 4 3 3 2 1 1] ]
%psc             [ 7650000  [5 2 1 2 1 2 1 1]  [5 2 2 1 1 2 1 1]  [8 4 3 3 2 2 1]  [8 4 3 2 2 2 1] ]
%psc         ]
%psc     ] def
%psc 
%psc     /encode {
%psc         /chan exch def
%psc         /target exch def
%psc 
%psc         % Lookup memoized starting value close to the target
%psc         memo chan 3 sub get {
%psc             /m exch def
%psc             m 0 get target gt {exit} if
%psc             /mv    m 0 get def
%psc             /mb    m 1 get def
%psc             /ms    m 2 get def
%psc             /mbmax m 3 get def
%psc             /msmax m 4 get def
%psc         } forall
%psc         /value mv def
%psc         mb    aload pop [/b8 /b7 /b6 /b5 /b4 /b3 /b2 /b1] {exch def} forall
%psc         ms    aload pop [/s8 /s7 /s6 /s5 /s4 /s3 /s2 /s1] {exch def} forall
%psc         mbmax aload pop [/b7max /b6max /b5max /b4max /b3max /b2max /b1max] {exch def} forall
%psc         msmax aload pop [/s7max /s6max /s5max /s4max /s3max /s2max /s1max] {exch def} forall
%psc 
%psc         1 {chkchr} repeat 8 chan sub 2 mul dup 16 exch sub getinterval
%psc 
%psc     } bind def
%psc 
%psc     /barlen barcode length def
%psc 
%psc     % Determine finder
%psc     /finder shortfinder { [ 1 1 1 1 1 ] } { [ 1 1 1 1 1 1 1 1 1 ] } ifelse def
%psc 
%psc     % Encode the main data
%psc     /data barcode cvi barlen 1 add encode def
%psc 
%psc     % Determine check data
%psc     /check [] def
%psc     includecheck {
%psc         /mod23 [
%psc             [] []
%psc             [ 13 12  4  9  3  1 ]
%psc             [  8  2 12  3 18 16  4  1 ]
%psc             [ 11 16 17  8 20  4 10  2  5  1 ]
%psc             [  1  4 16 18  3 12  2  8  9 13  6  1 ]
%psc             [ 20 16 22 13 15 12  5  4 17  9 21  3  7  1 ]
%psc             [  2  6 18  8  1  3  9  4 12 13 16  2  6 18  8  1 ]
%psc         ] barlen get def
%psc         0
%psc         0 1 data length 1 sub {
%psc             dup data exch get 1 sub exch mod23 exch get mul add
%psc         } for
%psc         23 mod 3 encode /check exch def
%psc     } if
%psc 
%psc     % Construct the symbol
%psc     /sbs [
%psc         finder aload pop
%psc         data aload pop
%psc         check aload pop
%psc     ] def
%psc 
%psc     % Create the human readable text
%psc     /txt barlen array def
%psc     0 1 barlen 1 sub {
%psc         /i exch def
%psc         txt i [barcode i 1 getinterval 0 0 () 0] put
%psc     } for
%psc 
%psc     % Return the arguments
%psc     <<
%psc     /ren //renlinear
%psc     /sbs sbs
%psc     /bhs [sbs length 1 add 2 idiv {height} repeat]
%psc     /bbs [sbs length 1 add 2 idiv {0} repeat]
%psc     /txt txt
%psc     /textxalign (center)
%psc     /opt options
%psc     >>
%psc 
%psc     dontdraw not //renlinear if
%psc 
%psc     end
%psc 
%psc }
%psc [/barcode] {null def} forall
%psc bind def
%psc /channelcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER channelcode--

% --BEGIN ENCODER flattermarken--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Flattermarken
% --EXAM: 11099
% --EXOP: inkspread=-0.25 showborder borderleft=0 borderright=0
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp flattermarken 0.0 2019110800 53805 53752
%%BeginData:         95 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/flattermarken {

    20 dict begin                 % Confine variable to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /includetext false def   % Enable/disable text
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /height 0.3 def

    % Validate the input
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.flattermarkenBadCharacter (Flattermarken must contain only digits) //raiseerror exec
        } if
    } forall

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /height height cvr def

    % Validate the input
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.flattermarkenBadCharacter (Flattermarken must contain only digits) //raiseerror exec
        } if
    } forall

    % Create an array containing the character mappings
    /encs
    [ (0018) (0117) (0216) (0315) (0414) (0513) (0612) (0711) (0810)
      (0900)
    ] def

    % Create a string of the available characters
    /barchars (1234567890) def

    /barlen barcode length def            % Length of the code

    /sbs barlen 4 mul string def
    /txt barlen array def

    0 1 barlen 1 sub {
        /i exch def
        % Lookup the encoding for the each barcode character
        barcode i 1 getinterval barchars exch search
        pop                                 % Discard true leaving pre
        length /indx exch def               % indx is the length of pre
        pop pop                             % Discard seek and post
        /enc encs indx get def              % Get the indxth encoding
        sbs i 4 mul enc putinterval         % Put encoded digit into sbs
        txt i [barcode i 1 getinterval i 9 mul textyoffset textfont textsize] put
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [sbs {48 sub} forall]
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    /txt txt
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /flattermarken dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER flattermarken--

% --BEGIN ENCODER raw--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Custom 1D symbology
% --EXAM: 331132131313411122131311333213114131131221323
% --EXOP: height=0.5
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp raw 0.0 2019110800 49511 49415
%%BeginData:         54 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/raw {

    20 dict begin                  % Confine variables to local scope

    /options exch def        % We are given an option string
    /barcode exch def        % We are given a barcode string

    /dontdraw false def
    /height 1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /height height cvr def

    % Validate input
    barcode {
        dup 49 lt exch 57 gt or {
            /bwipp.rawBadCharacter (Raw must contain only digits 1 to 9) //raiseerror exec
        } if
    } forall

    % Return the arguments
    <<
    /ren //renlinear
    /sbs [barcode {48 sub} forall]
    /bhs [barcode length 1 add 2 idiv {height} repeat]
    /bbs [barcode length 1 add 2 idiv {0} repeat]
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /raw dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER raw--

% --BEGIN ENCODER daft--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Custom 4 state symbology
% --EXAM: FATDAFTDAD
% --EXOP:
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp daft 0.0 2019110800 52765 52642
%%BeginData:         78 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/daft {

    20 dict begin

    /options exch def              % We are given an option string
    /barcode exch def              % We are given a barcode string

    /dontdraw false def
    /height 0.175 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /height height cvr def

    barcode {
        dup 68 ne exch dup 65 ne exch dup 70 ne exch 84 ne and and and {
            /bwipp.daftBadCharacter (DAFT must contain only characters D, A, F and T) //raiseerror exec
        } if
    } forall

    /barlen barcode length def

    /bbs barlen array def
    /bhs barlen array def
    0 1 barlen 1 sub {
        /i exch def
        /enc barcode i 1 getinterval def
        enc (D) eq {
            bbs i 0 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        enc (A) eq {
            bbs i 3 height mul 8 div put
            bhs i 5 height mul 8 div put
        } if
        enc (F) eq {
            bbs i 0 height mul 8 div put
            bhs i 8 height mul 8 div put
        } if
        enc (T) eq {
            bbs i 3 height mul 8 div put
            bhs i 2 height mul 8 div put
        } if
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /bbs bbs
    /bhs bhs
    /sbs [bhs length 1 sub {1.44 1.872} repeat 1.44]
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /daft dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER daft--

% --BEGIN ENCODER symbol--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Miscellaneous symbols
% --EXAM: fima
% --EXOP: backgroundcolor=DD000011
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp symbol 0.0 2019110800 52369 52217
%%BeginData:         74 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc begin
/symbol {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /symbols <<
        /fima {
            /sbs [2.25 2.25 2.25 11.25 2.25 11.25 2.25 2.25 2.25] def
            /bhs [.625 .625 .625 .625 .625] def
            /bbs [0 0 0 0 0] def
        } bind
        /fimb {
            /sbs [2.25 6.75 2.25 2.25 2.25 6.25 2.25 2.25 2.25 6.75 2.25] def
            /bhs [.625 .625 .625 .625 .625 .625] def
            /bbs [0 0 0 0 0 0] def
        } bind
        /fimc {
            /sbs [2.25 2.25 2.25 6.75 2.25 6.75 2.25 6.75 2.25 2.25 2.25] def
            /bhs [.625 .625 .625 .625 .625 .625] def
            /bbs [0 0 0 0 0 0] def
        } bind
        /fimd {
            /sbs [2.25 2.25 2.25 2.25 2.25 6.75 2.25 6.75 2.25 2.25 2.25 2.25 2.25] def
            /bhs [.625 .625 .625 .625 .625 .625 .625] def
            /bbs [0 0 0 0 0 0 0] def
        } bind
    >> def

    % Valiate input
    symbols barcode known not {
        /bwipp.symbolUnknownSymbol (Unknown symbol name provided) //raiseerror exec
    } if

    symbols barcode get exec

    % Return the arguments
    <<
    /ren //renlinear
    /sbs sbs
    /bhs bhs
    /bbs bbs
    /opt options
    >>

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /symbol dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER symbol--

% --BEGIN ENCODER pdf417--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: PDF417
% --EXAM: This is PDF417
% --EXOP: columns=2
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp pdf417 0.0 2019110800 190201 189590
%%BeginData:        875 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/pdf417 {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /compact false def
    /eclevel -1 def
    /columns 0 def
    /rows 0 def
    /rowmult 3 def
    /encoding (auto) def
    /ccc false def
    /raw false def
    /parse false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /eclevel eclevel cvi def
    /columns columns cvi def
    /rows rows cvi def
    /rowmult rowmult cvr def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    raw {/encoding (raw) def} if

    % Convert input into array of codewords
    encoding (raw) eq {
        /datcws barcode length array def
        /i 0 def /j 0 def
        { % loop
            i barcode length eq {exit} if
            /cw barcode i 1 add 3 getinterval cvi def
            datcws j cw put
            /i i 4 add def
            /j j 1 add def
        } loop
        /datcws datcws 0 j getinterval def
    } if

    /barcode [ barcode {} forall ] def
    /barlen barcode length def

    ccc {/encoding (ccc) def} if

    /encb {
        /in exch def
        /inlen in length def
        /out inlen 6 idiv 5 mul inlen 6 mod add array def
        0 1 inlen 6 idiv 1 sub {
            /k exch def
            /msbs [ in k 6 mul 3 getinterval aload pop ] def
            /mscs [
                msbs aload pop exch 256 mul add exch 65536 mul add
                3 {dup 900 mod exch 900 idiv} repeat
            ] def
            /lsbs [ in k 6 mul 3 add 3 getinterval aload pop ] def
            /lscs [
                lsbs aload pop exch 256 mul add exch 65536 mul add
                3 {dup 900 mod exch 900 idiv} repeat
            ] def
            lscs 0 get mscs 0 get 316 mul add
            out k 5 mul 4 add 2 index 900 mod put
            900 idiv lscs 1 get add mscs 0 get 641 mul add mscs 1 get 316 mul add
            out k 5 mul 3 add 2 index 900 mod put
            900 idiv lscs 2 get add mscs 0 get 20 mul add mscs 1 get 641 mul add mscs 2 get 316 mul add
            out k 5 mul 2 add 2 index 900 mod put
            900 idiv lscs 3 get add mscs 1 get 20 mul add mscs 2 get 641 mul add
            out k 5 mul 1 add 2 index 900 mod put
            900 idiv mscs 2 get 20 mul add
            out k 5 mul 3 -1 roll 900 mod put
        } for
        /rem inlen 6 mod def
        rem 0 ne {
            out out length rem sub
            [ in inlen rem sub rem getinterval aload pop ]
            putinterval
        } if
        out
    } bind def

    encoding (byte) eq encoding (ccc) eq or {
        /datcws barlen 6 idiv 5 mul barlen 6 mod add 1 add array def
        datcws 0 barlen 6 mod 0 eq {924} {901} ifelse put
        datcws 1 barcode encb putinterval
        encoding (ccc) eq {/datcws [920 datcws aload pop] def} if
    } if

    encoding (auto) eq {

        % Modes and text submodes
        /T 0 def  /N 1 def  /B 2 def
        /A 0 def  /L 1 def  /M 2 def  /P 3 def

        % Special function characters for mode switching
        /tl -1 def  /nl -2 def  /bl -3 def  /bl6 -4 def  /bs -5 def

        % Special function characters for text mode
        /al -6 def  /ll -7 def  /ml -8 def  /pl -9 def  /as -10 def  /ps -11 def

        % Character maps for each state
        /charmaps [
          %  A    L    M    P
          [ (A)  (a)  (0)  (;) ]  % 0
          [ (B)  (b)  (1)  (<) ]  % 1
          [ (C)  (c)  (2)  (>) ]  % 2
          [ (D)  (d)  (3)  (@) ]  % 3
          [ (E)  (e)  (4)  ([) ]  % 4
          [ (F)  (f)  (5)   92 ]  % 5
          [ (G)  (g)  (6)  (]) ]  % 6
          [ (H)  (h)  (7)  (_) ]  % 7
          [ (I)  (i)  (8)  (`) ]  % 8
          [ (J)  (j)  (9)  (~) ]  % 9
          [ (K)  (k)  (&)  (!) ]  % 10
          [ (L)  (l)   13   13 ]  % 11
          [ (M)  (m)    9    9 ]  % 12
          [ (N)  (n)  (,)  (,) ]  % 13
          [ (O)  (o)  (:)  (:) ]  % 14
          [ (P)  (p)  (#)   10 ]  % 15
          [ (Q)  (q)  (-)  (-) ]  % 16
          [ (R)  (r)  (.)  (.) ]  % 17
          [ (S)  (s)  ($)  ($) ]  % 18
          [ (T)  (t)  (/)  (/) ]  % 19
          [ (U)  (u)  (+)  (") ]  % 20
          [ (V)  (v)  (%)  (|) ]  % 21
          [ (W)  (w)  (*)  (*) ]  % 22
          [ (X)  (x)  (=)   40 ]  % 23
          [ (Y)  (y)  (^)   41 ]  % 24
          [ (Z)  (z)   pl  (?) ]  % 25
          [ ( )  ( )  ( )  ({) ]  % 26
          [  ll   as   ll  (}) ]  % 27
          [  ml   ml   al  (') ]  % 28
          [  ps   ps   ps   al ]  % 29
        ] def

        % Invert charmaps to give character to value maps for each state
        /charvals [ 30 dict 30 dict 30 dict 30 dict ] def
        /alltext 104 dict def
        0 1 charmaps length 1 sub {
          /i exch def
          /encs charmaps i get def
          0 1 3 {
            /j exch def
            encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
            dup charvals j get exch i put
            alltext exch -1 put
          } for
        } for

        /e 10000 def  % "Empty"

        /latlen [  % Bit length of latch between submodes
        % To:  A  L  M  P      From
            [  0  1  1  2 ]  % A
            [  2  0  1  2 ]  % L
            [  1  1  0  1 ]  % M
            [  1  2  2  0 ]  % P
        ] def

        /latseq [  % Latch sequences between submodes
        % To: A       L       M       P               From
            [ []      [ll]    [ml]    [ml pl]    ]  % A
            [ [ml al] []      [ml]    [ml pl]    ]  % L
            [ [al]    [ll]    []      [pl]       ]  % M
            [ [al]    [al ll] [al ml] []         ]  % P
        ] def

        /shftlen [  % Bit length of shift to submode
        % To:  A  L  M  P      From
            [  e  e  e  1 ]  % A
            [  1  e  e  1 ]  % L
            [  e  e  e  1 ]  % M
            [  e  e  e  e ]  % P
        ] def

        % Determine runlengths of digits
        /numdigits [ barlen {0} repeat 0 ] def
        /numtext   [ barlen {0} repeat 0 ] def
        /numbytes  [ barlen {0} repeat 0 ] def
        barlen 1 sub -1 0 {
            /i exch def
            barcode i get dup 48 ge exch 57 le and {
                numdigits i numdigits i 1 add get 1 add put
            } if
            alltext barcode i get known numdigits i get 13 lt and {
                numtext i numtext i 1 add get 1 add put
            } if
            numtext i get 5 lt numdigits i get 13 lt and {
                numbytes i numbytes i 1 add get 1 add put
            } if
        } for
        /numdigits numdigits 0 barlen getinterval def
        /numtext   numtext   0 barlen getinterval def
        /numbytes  numbytes  0 barlen getinterval def

        /seq [] def /seqlen 0 def /state T def /p 0 def {  % loop
            p barlen eq {exit} if
            /n numdigits p get def
            n 13 ge {
                /seq [
                    seq aload pop
                    nl
                    [ barcode p n getinterval aload pop ]
                ] def
                /state N def
                /p p n add def
                /seqlen seqlen 1 add n add def
            } {  % next
            /t numtext p get def
            t 5 ge {
                /seq [
                    seq aload pop
                    state T ne {tl} if
                    [ barcode p t getinterval aload pop ]
                ] def
                /state T def
                /p p t add def
                /seqlen seqlen 1 add t add def  % ish
            } {  % next
            /b numbytes p get def
            b 1 eq state T eq and {
                /seq [
                    seq aload pop
                    bs
                    [ barcode p get ]
                ] def
                /p p b add def
                /seqlen seqlen 2 add def
            } {  % next
                /seq [
                    seq aload pop
                    b 6 mod 0 ne {bl} {bl6} ifelse
                    [ barcode p b getinterval aload pop ]
                ] def
                /state B def
                /p p b add def
                /seqlen seqlen 1 add b add def
            } ifelse } ifelse } ifelse
        } loop

        /latchcws <<
            tl 900  bl 901  bl6 924  nl 902  bs 913
        >> def

        % Submode encoding functions
        /enca {charvals A get exch get} bind def
        /encl {charvals L get exch get} bind def
        /encm {charvals M get exch get} bind def
        /encp {charvals P get exch get} bind def
        /textencfuncs [ /enca /encl /encm /encp ] def

        /addtotext {
            text exch l exch put
            /l l 1 add def
        } bind def

        /enct {

            /in exch def

            /curlen [  e  e  e  e ] def
            curlen submode 0 put
            /curseq [ [] [] [] [] ] def

            % Derive the optimal sequences ending in each submode
            in {

                /char exch def

                % Check for optimisations in the current sequences by latching from x to y
                {  % loop
                    /imp false def
                    [ A L M P ] {
                        /x exch def
                        [ A L M P ] {
                            /y exch def
                            /cost curlen x get latlen x get y get add def
                            cost curlen y get lt {
                                curlen y cost put
                                curseq y [
                                    curseq x get aload pop
                                    latseq x get y get aload pop
                                ] put
                                /imp true def
                            } if
                        } forall
                    } forall
                    imp not {exit} if  % Repeat unless no improvement
                } loop

                % Determine optimal next sequences for each valid encoding
                /nxtlen [ e e e e ] def
                /nxtseq 4 array def

                [ A L M P ] {
                    /x exch def

                    { % loop for common exit

                        charvals x get char known not {exit} if

                        % Extend directly
                        /cost curlen x get 1 add def
                        cost nxtlen x get lt {
                            nxtlen x cost put
                            nxtseq x [ curseq x get aload pop char ] put
                        } if

                        % Optimise for direct shifts from y to x
                        [ A L M P ] {
                            /y exch def
                            x y ne {
                                /cost curlen y get shftlen y get x get add 1 add def
                                cost nxtlen y get lt {
                                    nxtlen y cost put
                                    nxtseq y [
                                        curseq y get aload pop
                                        x A eq {as} {ps} ifelse
                                        char
                                    ] put
                                } if
                            } if
                        } forall

                        exit
                    } loop

                } forall

                /curlen nxtlen def
                /curseq nxtseq def

            } forall

            % Select the optimal sequence
            /minseq e def
            [ A L M P ] {
                /k exch def
                curlen k get minseq lt {
                    /minseq curlen k get def
                    /txtseq curseq k get def
                } if
            } forall

            % Encode the sequence
            /text minseq array def
            /k 0 def /l 0 def {
                k txtseq length ge {exit} if

                /char txtseq k get def

                % Encode character
                char textencfuncs submode get load exec addtotext
                /k k 1 add def

                % Encode shifted next character
                char as eq char ps eq or {
                    txtseq k get char as eq {enca} {encp} ifelse addtotext
                    /k k 1 add def
                } if

                % Latches to new submode
                char al eq {/submode A def} if
                char ll eq {/submode L def} if
                char ml eq {/submode M def} if
                char pl eq {/submode P def} if
            } loop

            text length 2 mod 1 eq {
                submode P eq {
                    /pad al encp def
                    /submode A def
                } {
                    /pad ps textencfuncs submode get load exec def
                } ifelse
                /text [ text aload pop pad ] def
            } if

            /out text length 2 idiv array def
            0 1 out length 1 sub {
                /k exch def
                out k text k 2 mul get 30 mul text k 2 mul 1 add get add put
            } for

            out

        } bind def

        /encn {
            /in exch def
            /out [] def
            0 44 in length 1 sub {
                /k exch def
                /gmod [
                    1 in k in length k sub dup 44 gt {pop 44} if getinterval
                    {48 sub} forall
                ] def
                /cwn [] def {
                    /dv 900 def
                    /gmul [] def /val 0 def {
                        gmod length 0 eq {exit} if
                        /val val 10 mul gmod 0 get add def
                        /gmod gmod 1 gmod length 1 sub getinterval def
                        val dv lt {
                            gmul length 0 ne {
                                /gmul [ gmul aload pop 0 ] def
                            } if
                        } {
                            /gmul [ gmul aload pop val dv idiv ] def
                        } ifelse
                        /val val dv mod def
                    } loop
                    /dv val def
                    /cwn [ dv cwn aload pop ] def
                    /gmod gmul def
                    gmul length 0 eq {exit} if
                } loop
                /out [ out aload pop cwn aload pop ] def
            } for
            out
        } bind def

        /encfuncs [ /enct /encn /encb ] def

        /addtocws {
            dup datcws j 3 -1 roll putinterval
            length j add /j exch def
        } bind def

        % Encode the sequence
        /state T def /submode A def
        /datcws seqlen array def
        /i 0 def /j 0 def {
            i seq length ge {exit} if
            /chars seq i get def
            chars type /arraytype eq {  % Encode data according to mode
                chars encfuncs state get load exec addtocws
            } {  % Encode the latch to new state or byte shift
                [ latchcws chars get ] addtocws
                chars tl eq {/state T def /submode A def} if
                chars nl eq {/state N def} if
                chars bl eq chars bl6 eq or {/state B def} if
                chars bs eq {
                    /i i 1 add def
                    seq i get encb addtocws
                } if
            } ifelse
            /i i 1 add def
        } loop
        /datcws datcws 0 j getinterval def
    } if

    % Determine the error correction level if unspecified
    /m datcws length def
    eclevel -1 eq {
        m  40 le              {/eclevel 2 def} if
        m  41 ge m 160 le and {/eclevel 3 def} if
        m 161 ge m 320 le and {/eclevel 4 def} if
        m 321 ge              {/eclevel 5 def} if
    } if

    % Reduce the error level so that it does not cause an excessive number of codewords
    /maxeclevel 928 1 sub m sub ln 2 ln div cvi 1 sub def
    eclevel maxeclevel gt {/eclevel maxeclevel def} if
    /k 2 eclevel 1 add exp cvi def

    % To determine size of matrix, number of columns if given by user...
    columns 0 eq {/columns m k add 3 div sqrt round cvi def} if
    columns 1 ge columns 30 le and {/c columns def} if

    % ... and rows is greater of those required and that given by user within limits
    /r m k add 1 add columns div ceiling cvi def  % Required
    r rows lt rows 90 le and {/r rows def} if
    r 3 lt {/r 3 def} if

    % Opportunistically raise the error level if a better fit to the matrix is possible
    /maxeclevel c r mul 1 sub m sub ln 2 ln div cvi 1 sub 8 2 copy gt {exch} if pop def
    maxeclevel eclevel gt {
      /eclevel maxeclevel def
      /k 2 eclevel 1 add exp cvi def
    } if

    % Create codewords array with one extra working space element and add padding
    /n c r mul k sub def
    /cws c r mul 1 add array def
    cws 0 n put
    cws 1 datcws putinterval
    cws m 1 add [ n m sub 1 sub {900} repeat ] putinterval
    cws n [ k {0} repeat 0 ] putinterval

    % Calculate the log and anti-log tables
    /rsalog [ 1 928 {dup 3 mul 929 mod} repeat ] def
    /rslog 929 array def
    1 1 928 {dup rsalog exch get exch rslog 3 1 roll put} for

    % Function to calculate the product in the field
    /rsprod {
        2 copy 0 ne exch 0 ne and {
            rslog exch get exch rslog exch get add 928 mod rsalog exch get
        } {
            pop pop 0
        } ifelse
    } bind def

    % Generate the coefficients
    /coeffs [ 1 k {0} repeat ] def
    1 1 k {
        /i exch def
        coeffs i coeffs i 1 sub get put
        i 1 sub -1 1 {
            /j exch def
            coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod add 929 mod put
        } for
        coeffs 0 coeffs 0 get rsalog i get rsprod put
    } for
    /coeffs coeffs 0 coeffs length 1 sub getinterval def
    coeffs length 1 sub -2 0 {coeffs exch 2 copy get 929 exch sub put} for

    % Derive the error codewords
    0 1 n 1 sub {
        /t exch cws exch get cws n get add 929 mod def
        0 1 k 1 sub {
            /j exch def
            cws n j add cws n j add 1 add get 929 t coeffs k j sub 1 sub get mul 929 mod sub add 929 mod put
        } for
    } for
    n 1 n k add { dup cws exch 929 cws 5 -1 roll get sub 929 mod put } for

    % Trim the working space from the end of the codewords
    /cws cws 0 cws length 1 sub getinterval def

    % Base 10 encoding of the bar space successions for the codewords in each cluster
    /clusters [
        [
            120256 125680 128380 120032 125560 128318 108736 119920 108640  86080 108592  86048
            110016 120560 125820 109792 120440 125758  88256 109680  88160  89536 110320 120700
             89312 110200 120638  89200 110140  89840 110460  89720 110398  89980 128506 119520
            125304 128190 107712 119408 125244 107616 119352  84032 107568 119324  84000 107544
             83984 108256 119672 125374  85184 108144 119612  85088 108088 119582  85040 108060
             85728 108408 119742  85616 108348  85560 108318  85880 108478  85820  85790 107200
            119152 125116 107104 119096 125086  83008 107056 119068  82976 107032  82960  82952
             83648 107376 119228  83552 107320 119198  83504 107292  83480  83468  83824 107452
             83768 107422  83740  83900 106848 118968 125022  82496 106800 118940  82464 106776
            118926  82448 106764  82440 106758  82784 106936 119006  82736 106908  82712 106894
             82700  82694 106974  82830  82240 106672 118876  82208 106648 118862  82192 106636
             82184 106630  82180  82352  82328  82316  82080 118830 106572 106566  82050 117472
            124280 127678 103616 117360 124220 103520 117304 124190  75840 103472  75808 104160
            117624 124350  76992 104048 117564  76896 103992  76848  76824  77536 104312 117694
             77424 104252  77368  77340  77688 104382  77628  77758 121536 126320 128700 121440
            126264 128670 111680 121392 126236 111648 121368 126222 111632 121356 103104 117104
            124092 112320 103008 117048 124062 112224 121656 126366  93248  74784 102936 117006
             93216 112152  93200  75456 103280 117180  93888  75360 103224 117150  93792 112440
            121758  93744  75288  93720  75632 103356  94064  75576 103326  94008 112542  93980
             75708  94140  75678  94110 121184 126136 128606 111168 121136 126108 111136 121112
            126094 111120 121100 111112 111108 102752 116920 123998 111456 102704 116892  91712
             74272 121244 116878  91680  74256 102668  91664 111372 102662  74244  74592 102840
            116958  92000  74544 102812  91952 111516 102798  91928  74508  74502  74680 102878
             92088  74652  92060  74638  92046  92126 110912 121008 126044 110880 120984 126030
            110864 120972 110856 120966 110852 110850  74048 102576 116828  90944  74016 102552
            116814  90912 111000 121038  90896  73992 102534  90888 110982  90884  74160 102620
             91056  74136 102606  91032 111054  91020  74118  91014  91100  91086 110752 120920
            125998 110736 120908 110728 120902 110724 110722  73888 102488 116782  90528  73872
            102476  90512 110796 102470  90504  73860  90500  73858  73944  90584  90572  90566
            120876 120870 110658 102444  73800  90312  90308  90306 101056 116080 123580 100960
            116024  70720 100912 115996  70688 100888  70672  70664  71360 101232 116156  71264
            101176 116126  71216 101148  71192  71180  71536 101308  71480 101278  71452  71612
             71582 118112 124600 127838 105024 118064 124572 104992 118040 124558 104976 118028
            104968 118022 100704 115896 123486 105312 100656 115868  79424  70176 118172 115854
             79392 105240 100620  79376  70152  79368  70496 100792 115934  79712  70448 118238
             79664 105372 100750  79640  70412  79628  70584 100830  79800  70556  79772  70542
             70622  79838 122176 126640 128860 122144 126616 128846 122128 126604 122120 126598
            122116 104768 117936 124508 113472 104736 126684 124494 113440 122264 126670 113424
            104712 117894 113416 122246 104706  69952 100528 115804  78656  69920 100504 115790
             96064  78624 104856 117966  96032 113560 122318 100486  96016  78600 104838  96008
             69890  70064 100572  78768  70040 100558  96176  78744 104910  96152 113614  70022
             78726  70108  78812  70094  96220  78798 122016 126552 128814 122000 126540 121992
            126534 121988 121986 104608 117848 124462 113056 104592 126574 113040 122060 117830
            113032 104580 113028 104578 113026  69792 100440 115758  78240  69776 100428  95136
             78224 104652 100422  95120 113100  69764  95112  78212  69762  78210  69848 100462
             78296  69836  95192  78284  69830  95180  78278  69870  95214 121936 126508 121928
            126502 121924 121922 104528 117804 112848 104520 117798 112840 121958 112836 104514
            112834  69712 100396  78032  69704 100390  94672  78024 104550  94664 112870  69698
             94660  78018  94658  78060  94700  94694 126486 121890 117782 104484 104482  69672
             77928  94440  69666  77922  99680  68160  99632  68128  99608 115342  68112  99596
             68104  99590  68448  99768 115422  68400  99740  68376  99726  68364  68358  68536
             99806  68508  68494  68574 101696 116400 123740 101664 116376 101648 116364 101640
            116358 101636  67904  99504 115292  72512  67872 116444 115278  72480 101784 116430
             72464  67848  99462  72456 101766  67842  68016  99548  72624  67992  99534  72600
            101838  72588  67974  68060  72668  68046  72654 118432 124760 127918 118416 124748
            118408 124742 118404 118402 101536 116312 105888 101520 116300 105872 118476 116294
            105864 101508 105860 101506 105858  67744  99416  72096  67728 116334  80800  72080
            101580  99398  80784 105932  67716  80776  72068  67714  72066  67800  99438  72152
             67788  80856  72140  67782  80844  72134  67822  72174  80878 126800 128940 126792
            128934 126788 126786 118352 124716 122576 126828 124710 122568 126822 122564 118338
            122562 101456 116268 105680 101448 116262 114128 105672 118374 114120 122598 101442
            114116 105666 114114  67664  99372  71888  67656  99366  80336  71880 101478  97232
             80328 105702  67650  97224 114150  71874  97220  67692  71916  67686  80364  71910
             97260  80358  97254 126760 128918 126756 126754 118312 124694 122472 126774 122468
            118306 122466 101416 116246 105576 101412 113896 105572 101410 113892 105570 113890
             67624  99350  71784 101430  80104  71780  67618  96744  80100  71778  96740  80098
             96738  71798  96758 126738 122420 122418 105524 113780 113778  71732  79988  96500
             96498  66880  66848  98968  66832  66824  66820  66992  66968  66956  66950  67036
             67022 100000  99984 115532  99976 115526  99972  99970  66720  98904  69024 100056
             98892  69008 100044  69000 100038  68996  66690  68994  66776  98926  69080 100078
             69068  66758  69062  66798  69102 116560 116552 116548 116546  99920 102096 116588
            115494 102088 116582 102084  99906 102082  66640  68816  66632  98854  73168  68808
             66628  73160  68804  66626  73156  68802  66668  68844  66662  73196  68838  73190
            124840 124836 124834 116520 118632 124854 118628 116514 118626  99880 115478 101992
            116534 106216 101988  99874 106212 101986 106210  66600  98838  68712  99894  72936
             68708  66594  81384  72932  68706  81380  72930  66614  68726  72950  81398 128980
            128978 124820 126900 124818 126898 116500 118580 116498 122740 118578 122738  99860
            101940  99858 106100 101938 114420
        ] [
            128352 129720 125504 128304 129692 125472 128280 129678 125456 128268 125448 128262
            125444 125792 128440 129758 120384 125744 128412 120352 125720 128398 120336 125708
            120328 125702 120324 120672 125880 128478 110144 120624 125852 110112 120600 125838
            110096 120588 110088 120582 110084 110432 120760 125918  89664 110384 120732  89632
            110360 120718  89616 110348  89608 110342  89952 110520 120798  89904 110492  89880
            110478  89868  90040 110558  90012  89998 125248 128176 129628 125216 128152 129614
            125200 128140 125192 128134 125188 125186 119616 125360 128220 119584 125336 128206
            119568 125324 119560 125318 119556 119554 108352 119728 125404 108320 119704 125390
            108304 119692 108296 119686 108292 108290  85824 108464 119772  85792 108440 119758
             85776 108428  85768 108422  85764  85936 108508  85912 108494  85900  85894  85980
             85966 125088 128088 129582 125072 128076 125064 128070 125060 125058 119200 125144
            128110 119184 125132 119176 125126 119172 119170 107424 119256 125166 107408 119244
            107400 119238 107396 107394  83872 107480 119278  83856 107468  83848 107462  83844
             83842  83928 107502  83916  83910  83950 125008 128044 125000 128038 124996 124994
            118992 125036 118984 125030 118980 118978 106960 119020 106952 119014 106948 106946
             82896 106988  82888 106982  82884  82882  82924  82918 124968 128022 124964 124962
            118888 124982 118884 118882 106728 118902 106724 106722  82408 106742  82404  82402
            124948 124946 118836 118834 106612 106610 124224 127664 129372 124192 127640 129358
            124176 127628 124168 127622 124164 124162 117568 124336 127708 117536 124312 127694
            117520 124300 117512 124294 117508 117506 104256 117680 124380 104224 117656 124366
            104208 117644 104200 117638 104196 104194  77632 104368 117724  77600 104344 117710
             77584 104332  77576 104326  77572  77744 104412  77720 104398  77708  77702  77788
             77774 128672 129880  93168 128656 129868  92664 128648 129862  92412 128644 128642
            124064 127576 129326 126368 124048 129902 126352 128716 127558 126344 124036 126340
            124034 126338 117152 124120 127598 121760 117136 124108 121744 126412 124102 121736
            117124 121732 117122 121730 103328 117208 124142 112544 103312 117196 112528 121804
            117190 112520 103300 112516 103298 112514  75680 103384 117230  94112  75664 103372
             94096 112588 103366  94088  75652  94084  75650  75736 103406  94168  75724  94156
             75718  94150  75758 128592 129836  91640 128584 129830  91388 128580  91262 128578
            123984 127532 126160 123976 127526 126152 128614 126148 123970 126146 116944 124012
            121296 116936 124006 121288 126182 121284 116930 121282 102864 116972 111568 102856
            116966 111560 121318 111556 102850 111554  74704 102892  92112  74696 102886  92104
            111590  92100  74690  92098  74732  92140  74726  92134 128552 129814  90876 128548
             90750 128546 123944 127510 126056 128566 126052 123938 126050 116840 123958 121064
            116836 121060 116834 121058 102632 116854 111080 121078 111076 102626 111074  74216
            102646  91112  74212  91108  74210  91106  74230  91126 128532  90494 128530 123924
            126004 123922 126002 116788 120948 116786 120946 102516 110836 102514 110834  73972
             90612  73970  90610 128522 123914 125978 116762 120890 102458 110714 123552 127320
            129198 123536 127308 123528 127302 123524 123522 116128 123608 127342 116112 123596
            116104 123590 116100 116098 101280 116184 123630 101264 116172 101256 116166 101252
            101250  71584 101336 116206  71568 101324  71560 101318  71556  71554  71640 101358
             71628  71622  71662 127824 129452  79352 127816 129446  79100 127812  78974 127810
            123472 127276 124624 123464 127270 124616 127846 124612 123458 124610 115920 123500
            118224 115912 123494 118216 124646 118212 115906 118210 100816 115948 105424 100808
            115942 105416 118246 105412 100802 105410  70608 100844  79824  70600 100838  79816
            105446  79812  70594  79810  70636  79852  70630  79846 129960  95728 113404 129956
             95480 113278 129954  95356  95294 127784 129430  78588 128872 129974  95996  78462
            128868 127778  95870 128866 123432 127254 124520 123428 126696 128886 123426 126692
            124514 126690 115816 123446 117992 115812 122344 117988 115810 122340 117986 122338
            100584 115830 104936 100580 113640 104932 100578 113636 104930 113634  70120 100598
             78824  70116  96232  78820  70114  96228  78818  96226  70134  78838 129940  94968
            113022 129938  94844  94782 127764  78206 128820 127762  95102 128818 123412 124468
            123410 126580 124466 126578 115764 117876 115762 122100 117874 122098 100468 104692
            100466 113140 104690 113138  69876  78324  69874  95220  78322  95218 129930  94588
             94526 127754 128794 123402 124442 126522 115738 117818 121978 100410 104570 112890
             69754  78074  94714  94398 123216 127148 123208 127142 123204 123202 115408 123244
            115400 123238 115396 115394  99792 115436  99784 115430  99780  99778  68560  99820
             68552  99814  68548  68546  68588  68582 127400 129238  72444 127396  72318 127394
            123176 127126 123752 123172 123748 123170 123746 115304 123190 116456 115300 116452
            115298 116450  99560 115318 101864  99556 101860  99554 101858  68072  99574  72680
             68068  72676  68066  72674  68086  72694 129492  80632 105854 129490  80508  80446
            127380  72062 127924 127378  80766 127922 123156 123700 123154 124788 123698 124786
            115252 116340 115250 118516 116338 118514  99444 101620  99442 105972 101618 105970
             67828  72180  67826  80884  72178  80882  97008 114044  96888 113982  96828  96798
            129482  80252 130010  97148  80190  97086 127370 127898 128954 123146 123674 124730
            126842 115226 116282 118394 122618  99386 101498 105722 114170  67706  71930  80378
             96632 113854  96572  96542  80062  96702  96444  96414  96350 123048 123044 123042
            115048 123062 115044 115042  99048 115062  99044  99042  67048  99062  67044  67042
             67062 127188  68990 127186 123028 123316 123026 123314 114996 115572 114994 115570
             98932 100084  98930 100082  66804  69108  66802  69106 129258  73084  73022 127178
            127450 123018 123290 123834 114970 115514 116602  98874  99962 102138  66682  68858
             73210  81272 106174  81212  81182  72894  81342  97648 114364  97592 114334  97564
             97550  81084  97724  81054  97694  97464 114270  97436  97422  80990  97502  97372
             97358  97326 114868 114866  98676  98674  66292  66290 123098 114842 115130  98618
             99194  66170  67322  69310  73404  73374  81592 106334  81564  81550  73310  81630
             97968 114524  97944 114510  97932  97926  81500  98012  81486  97998  97880 114478
             97868  97862  81454  97902  97836  97830  69470  73564  73550  81752 106414  81740
             81734  73518  81774  81708  81702
        ] [
            109536 120312  86976 109040 120060  86496 108792 119934  86256 108668  86136 129744
             89056 110072 129736  88560 109820 129732  88312 109694 129730  88188 128464 129772
             89592 128456 129766  89340 128452  89214 128450 125904 128492 125896 128486 125892
            125890 120784 125932 120776 125926 120772 120770 110544 120812 110536 120806 110532
             84928 108016 119548  84448 107768 119422  84208 107644  84088 107582  84028 129640
             85488 108284 129636  85240 108158 129634  85116  85054 128232 129654  85756 128228
             85630 128226 125416 128246 125412 125410 119784 125430 119780 119778 108520 119798
            108516 108514  83424 107256 119166  83184 107132  83064 107070  83004  82974 129588
             83704 107390 129586  83580  83518 128116  83838 128114 125172 125170 119284 119282
            107508 107506  82672 106876  82552 106814  82492  82462 129562  82812  82750 128058
            125050 119034  82296 106686  82236  82206  82366  82108  82078  76736 103920 117500
             76256 103672 117374  76016 103548  75896 103486  75836 129384  77296 104188 129380
             77048 104062 129378  76924  76862 127720 129398  77564 127716  77438 127714 124392
            127734 124388 124386 117736 124406 117732 117730 104424 117750 104420 104418 112096
            121592 126334  92608 111856 121468  92384 111736 121406  92272 111676  92216 111646
             92188  75232 103160 117118  93664  74992 103036  93424 112252 102974  93304  74812
             93244  74782  93214 129332  75512 103294 129908 129330  93944  75388 129906  93820
             75326  93758 127604  75646 128756 127602  94078 128754 124148 126452 124146 126450
            117236 121844 117234 121842 103412 103410  91584 111344 121212  91360 111224 121150
             91248 111164  91192 111134  91164  91150  74480 102780  91888  74360 102718  91768
            111422  91708  74270  91678 129306  74620 129850  92028  74558  91966 127546 128634
            124026 126202 116986 121338 102906  90848 110968 121022  90736 110908  90680 110878
             90652  90638  74104 102590  91000  74044  90940  74014  90910  74174  91070  90480
            110780  90424 110750  90396  90382  73916  90556  73886  90526  90296 110686  90268
             90254  73822  90334  90204  90190  71136 101112 116094  70896 100988  70776 100926
             70716  70686 129204  71416 101246 129202  71292  71230 127348  71550 127346 123636
            123634 116212 116210 101364 101362  79296 105200 118140  79072 105080 118078  78960
            105020  78904 104990  78876  78862  70384 100732  79600  70264 100670  79480 105278
             79420  70174  79390 129178  70524 129466  79740  70462  79678 127290 127866 123514
            124666 115962 118266 100858 113376 122232 126654  95424 113264 122172  95328 113208
            122142  95280 113180  95256 113166  95244  78560 104824 117950  95968  78448 104764
             95856 113468 104734  95800  78364  95772  78350  95758  70008 100542  78712  69948
             96120  78652  69918  96060  78622  96030  70078  78782  96190  94912 113008 122044
             94816 112952 122014  94768 112924  94744 112910  94732  94726  78192 104636  95088
             78136 104606  95032 113054  95004  78094  94990  69820  78268  69790  95164  78238
             95134  94560 112824 121950  94512 112796  94488 112782  94476  94470  78008 104542
             94648  77980  94620  77966  94606  69726  78046  94686  94384 112732  94360 112718
             94348  94342  77916  94428  77902  94414  94296 112686  94284  94278  77870  94318
             94252  94246  68336  99708  68216  99646  68156  68126  68476  68414 127162 123258
            115450  99834  72416 101752 116414  72304 101692  72248 101662  72220  72206  67960
             99518  72568  67900  72508  67870  72478  68030  72638  80576 105840 118460  80480
            105784 118430  80432 105756  80408 105742  80396  80390  72048 101564  80752  71992
            101534  80696  71964  80668  71950  80654  67772  72124  67742  80828  72094  80798
            114016 122552 126814  96832 113968 122524  96800 113944 122510  96784 113932  96776
            113926  96772  80224 105656 118366  97120  80176 105628  97072 114076 105614  97048
             80140  97036  80134  97030  71864 101470  80312  71836  97208  80284  71822  97180
             80270  97166  67678  71902  80350  97246  96576 113840 122460  96544 113816 122446
             96528 113804  96520 113798  96516  96514  80048 105564  96688  80024 105550  96664
            113870  96652  80006  96646  71772  80092  71758  96732  80078  96718  96416 113752
            122414  96400 113740  96392 113734  96388  96386  79960 105518  96472  79948  96460
             79942  96454  71726  79982  96494  96336 113708  96328 113702  96324  96322  79916
             96364  79910  96358  96296 113686  96292  96290  79894  96310  66936  99006  66876
             66846  67006  68976 100028  68920  99998  68892  68878  66748  69052  66718  69022
             73056 102072 116574  73008 102044  72984 102030  72972  72966  68792  99934  73144
             68764  73116  68750  73102  66654  68830  73182  81216 106160 118620  81184 106136
            118606  81168 106124  81160 106118  81156  81154  72880 101980  81328  72856 101966
             81304 106190  81292  72838  81286  68700  72924  68686  81372  72910  81358 114336
            122712 126894 114320 122700 114312 122694 114308 114306  81056 106072 118574  97696
             81040 106060  97680 114380 106054  97672  81028  97668  81026  97666  72792 101934
             81112  72780  97752  81100  72774  97740  81094  97734  68654  72814  81134  97774
            114256 122668 114248 122662 114244 114242  80976 106028  97488  80968 106022  97480
            114278  97476  80962  97474  72748  81004  72742  97516  80998  97510 114216 122646
            114212 114210  80936 106006  97384  80932  97380  80930  97378  72726  80950  97398
            114196 114194  80916  97332  80914  97330  66236  66206  67256  99166  67228  67214
             66142  67294  69296 100188  69272 100174  69260  69254  67164  69340  67150  69326
             73376 102232 116654  73360 102220  73352 102214  73348  73346  69208 100142  73432
            102254  73420  69190  73414  67118  69230  73454 106320 118700 106312 118694 106308
            106306  73296 102188  81616 106348 102182  81608  73284  81604  73282  81602  69164
             73324  69158  81644  73318  81638 122792 126934 122788 122786 106280 118678 114536
            106276 114532 106274 114530  73256 102166  81512  73252  98024  81508  73250  98020
             81506  98018  69142  73270  81526  98038 122772 122770 106260 114484 106258 114482
             73236  81460  73234  97908  81458  97906 122762 106250 114458  73226  81434  97850
             66396  66382  67416  99246  67404  67398  66350  67438  69456 100268  69448 100262
             69444  69442  67372  69484  67366  69478 102312 116694 102308 102306  69416 100246
             73576 102326  73572  69410  73570  67350  69430  73590 118740 118738 102292 106420
            102290 106418  69396  73524  69394  81780  73522  81778 118730 102282 106394  69386
             73498  81722  66476  66470  67496  99286  67492  67490  66454  67510 100308 100306
             67476  69556  67474  69554 116714
        ]
    ] def

    % Return the 17 bits for a codeword in a given cluster
    /cwtobits {
        clusters exch get exch get /v exch def
        [ 17 {0} repeat v 2 17 string cvrs {48 sub} forall ]
        dup length 17 sub 17 getinterval
    } bind def

    % Populate bitmap for the image
    compact {
        /rwid 17 c mul 17 add 17 add 1 add def
    } {
        /rwid 17 c mul 17 add 17 add 17 add 18 add def
    } ifelse
    /pixs rwid r mul array def

   0 1 r 1 sub {
        /i exch def

        i 3 mod 0 eq {
            /lcw i 3 idiv 30 mul r 1 sub 3 idiv add def
            /rcw i 3 idiv 30 mul c add 1 sub def
        } if
        i 3 mod 1 eq {
            /lcw i 3 idiv 30 mul eclevel 3 mul add r 1 sub 3 mod add def
            /rcw i 3 idiv 30 mul r 1 sub 3 idiv add def
        } if
        i 3 mod 2 eq {
            /lcw i 3 idiv 30 mul c add 1 sub def
            /rcw i 3 idiv 30 mul eclevel 3 mul add r 1 sub 3 mod add def
        } if

        pixs rwid i mul [
            1 1 1 1 1 1 1 1 0 1 0 1 0 1 0 0 0
            lcw i 3 mod cwtobits {} forall
            cws c i mul c getinterval { i 3 mod cwtobits {} forall } forall
            compact {
                1
            } {
                rcw i 3 mod cwtobits {} forall
                1 1 1 1 1 1 1 0 1 0 0 0 1 0 1 0 0 1
            } ifelse
        ] putinterval

    } for

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx rwid
    /pixy r
    /height r 72 div rowmult mul
    /width rwid 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /pdf417 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER pdf417--

% --BEGIN ENCODER pdf417compact--
% --REQUIRES preamble raiseerror renmatrix pdf417--
% --DESC: Compact PDF417
% --EXAM: This is compact PDF417
% --EXOP: columns=2
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp pdf417compact 0.0 2019110800 50740 53809
%%BeginData:         45 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /pdf417 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/pdf417compact {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Get the result of encoding with pdf417 with compact option
    options (dontdraw) true put
    options (compact) true put

    /args barcode options //pdf417 exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /pdf417compact dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER pdf417compact--

% --BEGIN ENCODER micropdf417--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: MicroPDF417
% --EXAM: MicroPDF417
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp micropdf417 0.0 2019110800 201307 200278
%%BeginData:        961 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/micropdf417 {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /version (unset) def
    /columns 0 def
    /rows 0 def
    /rowmult 2 def
    /encoding (auto) def
    /cca false def
    /ccb false def
    /raw false def
    /parse false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    version (unset) ne {
        version (x) search
        pop /columns exch def
        pop /rows exch def
    } if

    /columns columns cvi def
    /rows rows cvi def
    /rowmult rowmult cvr def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    raw {/encoding (raw) def} if
    cca {/encoding (cca) def} if

    % Convert input into array of codewords
    encoding (raw) eq encoding (cca) eq or {
        /datcws barcode length array def
        /i 0 def /j 0 def
        { % loop
            i barcode length eq {exit} if
            /cw barcode i 1 add 3 getinterval cvi def
            datcws j cw put
            /i i 4 add def
            /j j 1 add def
        } loop
        /datcws datcws 0 j getinterval def
    } if

    /barcode [ barcode {} forall ] def
    /barlen barcode length def

    ccb {/encoding (ccb) def} if

    /encb {
        /in exch def
        /inlen in length def
        /out inlen 6 idiv 5 mul inlen 6 mod add array def
        0 1 inlen 6 idiv 1 sub {
            /k exch def
            /msbs [ in k 6 mul 3 getinterval aload pop ] def
            /mscs [
                msbs aload pop exch 256 mul add exch 65536 mul add
                3 {dup 900 mod exch 900 idiv} repeat
            ] def
            /lsbs [ in k 6 mul 3 add 3 getinterval aload pop ] def
            /lscs [
                lsbs aload pop exch 256 mul add exch 65536 mul add
                3 {dup 900 mod exch 900 idiv} repeat
            ] def
            lscs 0 get mscs 0 get 316 mul add
            out k 5 mul 4 add 2 index 900 mod put
            900 idiv lscs 1 get add mscs 0 get 641 mul add mscs 1 get 316 mul add
            out k 5 mul 3 add 2 index 900 mod put
            900 idiv lscs 2 get add mscs 0 get 20 mul add mscs 1 get 641 mul add mscs 2 get 316 mul add
            out k 5 mul 2 add 2 index 900 mod put
            900 idiv lscs 3 get add mscs 1 get 20 mul add mscs 2 get 641 mul add
            out k 5 mul 1 add 2 index 900 mod put
            900 idiv mscs 2 get 20 mul add
            out k 5 mul 3 -1 roll 900 mod put
        } for
        /rem inlen 6 mod def
        rem 0 ne {
            out out length rem sub
            [ in inlen rem sub rem getinterval aload pop ]
            putinterval
        } if
        out
    } bind def

    encoding (byte) eq encoding (ccb) eq or {
        /datcws barlen 6 idiv 5 mul barlen 6 mod add 1 add array def
        datcws 0 barlen 6 mod 0 eq {924} {901} ifelse put
        datcws 1 barcode encb putinterval
        encoding (ccb) eq {/datcws [920 datcws aload pop] def} if
    } if

    encoding (auto) eq {

        % Modes and text submodes
        /T 0 def  /N 1 def  /B 2 def
        /A 0 def  /L 1 def  /M 2 def  /P 3 def

        % Special function characters for mode switching
        /tl -1 def  /nl -2 def  /bl -3 def  /bl6 -4 def  /bs -5 def

        % Special function characters for text mode
        /al -6 def  /ll -7 def  /ml -8 def  /pl -9 def  /as -10 def  /ps -11 def

        % Character maps for each state
        /charmaps [
          %  A    L    M    P
          [ (A)  (a)  (0)  (;) ]  % 0
          [ (B)  (b)  (1)  (<) ]  % 1
          [ (C)  (c)  (2)  (>) ]  % 2
          [ (D)  (d)  (3)  (@) ]  % 3
          [ (E)  (e)  (4)  ([) ]  % 4
          [ (F)  (f)  (5)   92 ]  % 5
          [ (G)  (g)  (6)  (]) ]  % 6
          [ (H)  (h)  (7)  (_) ]  % 7
          [ (I)  (i)  (8)  (`) ]  % 8
          [ (J)  (j)  (9)  (~) ]  % 9
          [ (K)  (k)  (&)  (!) ]  % 10
          [ (L)  (l)   13   13 ]  % 11
          [ (M)  (m)    9    9 ]  % 12
          [ (N)  (n)  (,)  (,) ]  % 13
          [ (O)  (o)  (:)  (:) ]  % 14
          [ (P)  (p)  (#)   10 ]  % 15
          [ (Q)  (q)  (-)  (-) ]  % 16
          [ (R)  (r)  (.)  (.) ]  % 17
          [ (S)  (s)  ($)  ($) ]  % 18
          [ (T)  (t)  (/)  (/) ]  % 19
          [ (U)  (u)  (+)  (") ]  % 20
          [ (V)  (v)  (%)  (|) ]  % 21
          [ (W)  (w)  (*)  (*) ]  % 22
          [ (X)  (x)  (=)   40 ]  % 23
          [ (Y)  (y)  (^)   41 ]  % 24
          [ (Z)  (z)   pl  (?) ]  % 25
          [ ( )  ( )  ( )  ({) ]  % 26
          [  ll   as   ll  (}) ]  % 27
          [  ml   ml   al  (') ]  % 28
          [  ps   ps   ps   al ]  % 29
        ] def

        % Invert charmaps to give character to value maps for each state
        /charvals [ 30 dict 30 dict 30 dict 30 dict ] def
        /alltext 104 dict def
        0 1 charmaps length 1 sub {
          /i exch def
          /encs charmaps i get def
          0 1 3 {
            /j exch def
            encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
            dup charvals j get exch i put
            alltext exch -1 put
          } for
        } for

        /e 10000 def  % "Empty"

        /latlen [  % Bit length of latch between submodes
        % To:  A  L  M  P      From
            [  0  1  1  2 ]  % A
            [  2  0  1  2 ]  % L
            [  1  1  0  1 ]  % M
            [  1  2  2  0 ]  % P
        ] def

        /latseq [  % Latch sequences between submodes
        % To: A       L       M       P               From
            [ []      [ll]    [ml]    [ml pl]    ]  % A
            [ [ml al] []      [ml]    [ml pl]    ]  % L
            [ [al]    [ll]    []      [pl]       ]  % M
            [ [al]    [al ll] [al ml] []         ]  % P
        ] def

        /shftlen [  % Bit length of shift to submode
        % To:  A  L  M  P      From
            [  e  e  e  1 ]  % A
            [  1  e  e  1 ]  % L
            [  e  e  e  1 ]  % M
            [  e  e  e  e ]  % P
        ] def

        % Determine runlengths of digits
        /numdigits [ barlen {0} repeat 0 ] def
        /numtext   [ barlen {0} repeat 0 ] def
        /numbytes  [ barlen {0} repeat 0 ] def
        barlen 1 sub -1 0 {
            /i exch def
            barcode i get dup 48 ge exch 57 le and {
                numdigits i numdigits i 1 add get 1 add put
            } if
            alltext barcode i get known numdigits i get 13 lt and {
                numtext i numtext i 1 add get 1 add put
            } if
            numtext i get 5 lt numdigits i get 13 lt and {
                numbytes i numbytes i 1 add get 1 add put
            } if
        } for
        /numdigits numdigits 0 barlen getinterval def
        /numtext   numtext   0 barlen getinterval def
        /numbytes  numbytes  0 barlen getinterval def

        /seq [] def /seqlen 0 def /state B def /p 0 def {  % loop
            p barlen eq {exit} if
            /n numdigits p get def
            n 13 ge {
                /seq [
                    seq aload pop
                    nl
                    [ barcode p n getinterval aload pop ]
                ] def
                /state N def
                /p p n add def
                /seqlen seqlen 1 add n add def
            } {  % next
            /t numtext p get def
            t 5 ge {
                /seq [
                    seq aload pop
                    state T ne {tl} if
                    [ barcode p t getinterval aload pop ]
                ] def
                /state T def
                /p p t add def
                /seqlen seqlen 1 add t add def  % ish
            } {  % next
            /b numbytes p get def
            b 1 eq state T eq and {
                /seq [
                    seq aload pop
                    bs
                    [ barcode p get ]
                ] def
                /p p b add def
                /seqlen seqlen 2 add def
            } {  % next
                /seq [
                    seq aload pop
                    b 6 mod 0 ne {bl} {bl6} ifelse
                    [ barcode p b getinterval aload pop ]
                ] def
                /state B def
                /p p b add def
                /seqlen seqlen 1 add b add def
            } ifelse } ifelse } ifelse
        } loop

        /latchcws <<
            tl 900  bl 901  bl6 924  nl 902  bs 913
        >> def

        % Submode encoding functions
        /enca {charvals A get exch get} bind def
        /encl {charvals L get exch get} bind def
        /encm {charvals M get exch get} bind def
        /encp {charvals P get exch get} bind def
        /textencfuncs [ /enca /encl /encm /encp ] def

        /addtotext {
            text exch l exch put
            /l l 1 add def
        } bind def

        /enct {

            /in exch def

            /curlen [  e  e  e  e ] def
            curlen submode 0 put
            /curseq [ [] [] [] [] ] def

            % Derive the optimal sequences ending in each submode
            in {

                /char exch def

                % Check for optimisations in the current sequences by latching from x to y
                {  % loop
                    /imp false def
                    [ A L M P ] {
                        /x exch def
                        [ A L M P ] {
                            /y exch def
                            /cost curlen x get latlen x get y get add def
                            cost curlen y get lt {
                                curlen y cost put
                                curseq y [
                                    curseq x get aload pop
                                    latseq x get y get aload pop
                                ] put
                                /imp true def
                            } if
                        } forall
                    } forall
                    imp not {exit} if  % Repeat unless no improvement
                } loop

                % Determine optimal next sequences for each valid encoding
                /nxtlen [ e e e e ] def
                /nxtseq 4 array def

                [ A L M P ] {
                    /x exch def

                    { % loop for common exit

                        charvals x get char known not {exit} if

                        % Extend directly
                        /cost curlen x get 1 add def
                        cost nxtlen x get lt {
                            nxtlen x cost put
                            nxtseq x [ curseq x get aload pop char ] put
                        } if

                        % Optimise for direct shifts from y to x
                        [ A L M P ] {
                            /y exch def
                            x y ne {
                                /cost curlen y get shftlen y get x get add 1 add def
                                cost nxtlen y get lt {
                                    nxtlen y cost put
                                    nxtseq y [
                                        curseq y get aload pop
                                        x A eq {as} {ps} ifelse
                                        char
                                    ] put
                                } if
                            } if
                        } forall

                        exit
                    } loop

                } forall

                /curlen nxtlen def
                /curseq nxtseq def

            } forall

            % Select the optimal sequence
            /minseq e def
            [ A L M P ] {
                /k exch def
                curlen k get minseq lt {
                    /minseq curlen k get def
                    /txtseq curseq k get def
                } if
            } forall

            % Encode the sequence
            /text minseq array def
            /k 0 def /l 0 def {
                k txtseq length ge {exit} if

                /char txtseq k get def

                % Encode character
                char textencfuncs submode get load exec addtotext
                /k k 1 add def

                % Encode shifted next character
                char as eq char ps eq or {
                    txtseq k get char as eq {enca} {encp} ifelse addtotext
                    /k k 1 add def
                } if

                % Latches to new submode
                char al eq {/submode A def} if
                char ll eq {/submode L def} if
                char ml eq {/submode M def} if
                char pl eq {/submode P def} if
            } loop

            text length 2 mod 1 eq {
                submode P eq {
                    /pad al encp def
                    /submode A def
                } {
                    /pad ps textencfuncs submode get load exec def
                } ifelse
                /text [ text aload pop pad ] def
            } if

            /out text length 2 idiv array def
            0 1 out length 1 sub {
                /k exch def
                out k text k 2 mul get 30 mul text k 2 mul 1 add get add put
            } for

            out

        } bind def

        /encn {
            /in exch def
            /out [] def
            0 44 in length 1 sub {
                /k exch def
                /gmod [
                    1 in k in length k sub dup 44 gt {pop 44} if getinterval
                    {48 sub} forall
                ] def
                /cwn [] def {
                    /dv 900 def
                    /gmul [] def /val 0 def {
                        gmod length 0 eq {exit} if
                        /val val 10 mul gmod 0 get add def
                        /gmod gmod 1 gmod length 1 sub getinterval def
                        val dv lt {
                            gmul length 0 ne {
                                /gmul [ gmul aload pop 0 ] def
                            } if
                        } {
                            /gmul [ gmul aload pop val dv idiv ] def
                        } ifelse
                        /val val dv mod def
                    } loop
                    /dv val def
                    /cwn [ dv cwn aload pop ] def
                    /gmod gmul def
                    gmul length 0 eq {exit} if
                } loop
                /out [ out aload pop cwn aload pop ] def
            } for
            out
        } bind def

        /encfuncs [ /enct /encn /encb ] def

        /addtocws {
            dup datcws j 3 -1 roll putinterval
            length j add /j exch def
        } bind def

        % Encode the sequence
        /state T def /submode A def
        /datcws seqlen array def
        /i 0 def /j 0 def {
            i seq length ge {exit} if
            /chars seq i get def
            chars type /arraytype eq {  % Encode data according to mode
                chars encfuncs state get load exec addtocws
            } {  % Encode the latch to new state or byte shift
                [ latchcws chars get ] addtocws
                chars tl eq {/state T def /submode A def} if
                chars nl eq {/state N def} if
                chars bl eq chars bl6 eq or {/state B def} if
                chars bs eq {
                    /i i 1 add def
                    seq i get encb addtocws
                } if
            } ifelse
            /i i 1 add def
        } loop
        /datcws datcws 0 j getinterval def
    } if

    % Basic metrics for the each symbol
    %     c  r ecw  rl rc rr
    /metrics [
        [ 1 11   7   1  0  9 ]
        [ 1 14   7   8  0  8 ]
        [ 1 17   7  36  0 36 ]
        [ 1 20   8  19  0 19 ]
        [ 1 24   8   9  0 17 ]
        [ 1 28   8  25  0 33 ]
        [ 2  8   8   1  0  1 ]
        [ 2 11   9   1  0  9 ]
        [ 2 14   9   8  0  8 ]
        [ 2 17  10  36  0 36 ]
        [ 2 20  11  19  0 19 ]
        [ 2 23  13   9  0 17 ]
        [ 2 26  15  27  0 35 ]
        [ 3  6  12   1  1  1 ]
        [ 3  8  14   7  7  7 ]
        [ 3 10  16  15 15 15 ]
        [ 3 12  18  25 25 25 ]
        [ 3 15  21  37 37 37 ]
        [ 3 20  26   1 17 33 ]
        [ 3 26  32   1  9 17 ]
        [ 3 32  38  21 29 37 ]
        [ 3 38  44  15 31 47 ]
        [ 3 44  50   1 25 49 ]
        [ 4  4   8  47 19 43 ]
        [ 4  6  12   1  1  1 ]
        [ 4  8  14   7  7  7 ]
        [ 4 10  16  15 15 15 ]
        [ 4 12  18  25 25 25 ]
        [ 4 15  21  37 37 37 ]
        [ 4 20  26   1 17 33 ]
        [ 4 26  32   1  9 17 ]
        [ 4 32  38  21 29 37 ]
        [ 4 38  44  15 31 47 ]
        [ 4 44  50   1 25 49 ]
    ] def

    % Basic metrics for the each symbol
    %     c  r ecw  rl rc rr
    /ccametrics [
        [ 2  5   4  39  0 19 ]
        [ 2  6   4   1  0 33 ]
        [ 2  7   5  32  0 12 ]
        [ 2  8   5   8  0 40 ]
        [ 2  9   6  14  0 46 ]
        [ 2 10   6  43  0 23 ]
        [ 2 12   7  20  0 52 ]
        [ 3  4   4  11 43 23 ]
        [ 3  5   5   1 33 13 ]
        [ 3  6   6   5 37 17 ]
        [ 3  7   7  15 47 27 ]
        [ 3  8   7  21  1 33 ]
        [ 4  3   4  40 20 52 ]
        [ 4  4   5  43 23  3 ]
        [ 4  5   6  46 26  6 ]
        [ 4  6   7  34 14 46 ]
        [ 4  7   8  29  9 41 ]
    ] def
    cca {/metrics ccametrics def} if

    % Select metrics of an appropriate symbol
    /urows rows def
    /ucols columns def
    /i 0 def
    { % loop
        /m metrics i get def
        /c    m 0 get def        % Columns in symbol
        /r    m 1 get def        % Rows in symbol
        /k    m 2 get def        % Error correction codewords
        /rapl m 3 get def        % Left row address pattern
        /rapc m 4 get def        % Centre row address pattern
        /rapr m 5 get def        % Right row address pattern
        /ncws r c mul k sub def  % Data codewords
        /okay true def
        datcws length ncws gt     {/okay false def} if
        urows 0 ne urows r ne and {/okay false def} if
        ucols 0 ne ucols c ne and {/okay false def} if
        okay {exit} if
        /i i 1 add def
    } loop
    /m datcws length def

    % Create codewords array with one extra working space element and add padding
    /n c r mul k sub def
    /cws c r mul 1 add array def
    cws 0 datcws putinterval
    cws m [ n m sub {900} repeat ] putinterval
    cws n [ k {0} repeat 0 ] putinterval

    % Calculate the log and anti-log tables
    /rsalog [ 1 928 {dup 3 mul 929 mod} repeat ] def
    /rslog 929 array def
    1 1 928 {dup rsalog exch get exch rslog 3 1 roll put} for

    % Function to calculate the product in the field
    /rsprod {
        2 copy 0 ne exch 0 ne and {
            rslog exch get exch rslog exch get add 928 mod rsalog exch get
        } {
            pop pop 0
        } ifelse
    } bind def

    % Generate the coefficients
    /coeffs [ 1 k {0} repeat ] def
    1 1 k {
        /i exch def
        coeffs i coeffs i 1 sub get put
        i 1 sub -1 1 {
            /j exch def
            coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod add 929 mod put
        } for
        coeffs 0 coeffs 0 get rsalog i get rsprod put
    } for
    /coeffs coeffs 0 coeffs length 1 sub getinterval def
    coeffs length 1 sub -2 0 {coeffs exch 2 copy get 929 exch sub put} for

    % Derive the error codewords
    0 1 n 1 sub {
        /t exch cws exch get cws n get add 929 mod def
        0 1 k 1 sub {
            /j exch def
            cws n j add cws n j add 1 add get 929 t coeffs k j sub 1 sub get mul 929 mod sub add 929 mod put
        } for
    } for
    n 1 n k add { dup cws exch 929 cws 5 -1 roll get sub 929 mod put } for

    % Trim the working space from the end of the codewords
    /cws cws 0 cws length 1 sub getinterval def

    % Base 10 encoding of the bar space successions for the codewords in each cluster
    /clusters [
        [
            120256 125680 128380 120032 125560 128318 108736 119920 108640  86080 108592  86048
            110016 120560 125820 109792 120440 125758  88256 109680  88160  89536 110320 120700
             89312 110200 120638  89200 110140  89840 110460  89720 110398  89980 128506 119520
            125304 128190 107712 119408 125244 107616 119352  84032 107568 119324  84000 107544
             83984 108256 119672 125374  85184 108144 119612  85088 108088 119582  85040 108060
             85728 108408 119742  85616 108348  85560 108318  85880 108478  85820  85790 107200
            119152 125116 107104 119096 125086  83008 107056 119068  82976 107032  82960  82952
             83648 107376 119228  83552 107320 119198  83504 107292  83480  83468  83824 107452
             83768 107422  83740  83900 106848 118968 125022  82496 106800 118940  82464 106776
            118926  82448 106764  82440 106758  82784 106936 119006  82736 106908  82712 106894
             82700  82694 106974  82830  82240 106672 118876  82208 106648 118862  82192 106636
             82184 106630  82180  82352  82328  82316  82080 118830 106572 106566  82050 117472
            124280 127678 103616 117360 124220 103520 117304 124190  75840 103472  75808 104160
            117624 124350  76992 104048 117564  76896 103992  76848  76824  77536 104312 117694
             77424 104252  77368  77340  77688 104382  77628  77758 121536 126320 128700 121440
            126264 128670 111680 121392 126236 111648 121368 126222 111632 121356 103104 117104
            124092 112320 103008 117048 124062 112224 121656 126366  93248  74784 102936 117006
             93216 112152  93200  75456 103280 117180  93888  75360 103224 117150  93792 112440
            121758  93744  75288  93720  75632 103356  94064  75576 103326  94008 112542  93980
             75708  94140  75678  94110 121184 126136 128606 111168 121136 126108 111136 121112
            126094 111120 121100 111112 111108 102752 116920 123998 111456 102704 116892  91712
             74272 121244 116878  91680  74256 102668  91664 111372 102662  74244  74592 102840
            116958  92000  74544 102812  91952 111516 102798  91928  74508  74502  74680 102878
             92088  74652  92060  74638  92046  92126 110912 121008 126044 110880 120984 126030
            110864 120972 110856 120966 110852 110850  74048 102576 116828  90944  74016 102552
            116814  90912 111000 121038  90896  73992 102534  90888 110982  90884  74160 102620
             91056  74136 102606  91032 111054  91020  74118  91014  91100  91086 110752 120920
            125998 110736 120908 110728 120902 110724 110722  73888 102488 116782  90528  73872
            102476  90512 110796 102470  90504  73860  90500  73858  73944  90584  90572  90566
            120876 120870 110658 102444  73800  90312  90308  90306 101056 116080 123580 100960
            116024  70720 100912 115996  70688 100888  70672  70664  71360 101232 116156  71264
            101176 116126  71216 101148  71192  71180  71536 101308  71480 101278  71452  71612
             71582 118112 124600 127838 105024 118064 124572 104992 118040 124558 104976 118028
            104968 118022 100704 115896 123486 105312 100656 115868  79424  70176 118172 115854
             79392 105240 100620  79376  70152  79368  70496 100792 115934  79712  70448 118238
             79664 105372 100750  79640  70412  79628  70584 100830  79800  70556  79772  70542
             70622  79838 122176 126640 128860 122144 126616 128846 122128 126604 122120 126598
            122116 104768 117936 124508 113472 104736 126684 124494 113440 122264 126670 113424
            104712 117894 113416 122246 104706  69952 100528 115804  78656  69920 100504 115790
             96064  78624 104856 117966  96032 113560 122318 100486  96016  78600 104838  96008
             69890  70064 100572  78768  70040 100558  96176  78744 104910  96152 113614  70022
             78726  70108  78812  70094  96220  78798 122016 126552 128814 122000 126540 121992
            126534 121988 121986 104608 117848 124462 113056 104592 126574 113040 122060 117830
            113032 104580 113028 104578 113026  69792 100440 115758  78240  69776 100428  95136
             78224 104652 100422  95120 113100  69764  95112  78212  69762  78210  69848 100462
             78296  69836  95192  78284  69830  95180  78278  69870  95214 121936 126508 121928
            126502 121924 121922 104528 117804 112848 104520 117798 112840 121958 112836 104514
            112834  69712 100396  78032  69704 100390  94672  78024 104550  94664 112870  69698
             94660  78018  94658  78060  94700  94694 126486 121890 117782 104484 104482  69672
             77928  94440  69666  77922  99680  68160  99632  68128  99608 115342  68112  99596
             68104  99590  68448  99768 115422  68400  99740  68376  99726  68364  68358  68536
             99806  68508  68494  68574 101696 116400 123740 101664 116376 101648 116364 101640
            116358 101636  67904  99504 115292  72512  67872 116444 115278  72480 101784 116430
             72464  67848  99462  72456 101766  67842  68016  99548  72624  67992  99534  72600
            101838  72588  67974  68060  72668  68046  72654 118432 124760 127918 118416 124748
            118408 124742 118404 118402 101536 116312 105888 101520 116300 105872 118476 116294
            105864 101508 105860 101506 105858  67744  99416  72096  67728 116334  80800  72080
            101580  99398  80784 105932  67716  80776  72068  67714  72066  67800  99438  72152
             67788  80856  72140  67782  80844  72134  67822  72174  80878 126800 128940 126792
            128934 126788 126786 118352 124716 122576 126828 124710 122568 126822 122564 118338
            122562 101456 116268 105680 101448 116262 114128 105672 118374 114120 122598 101442
            114116 105666 114114  67664  99372  71888  67656  99366  80336  71880 101478  97232
             80328 105702  67650  97224 114150  71874  97220  67692  71916  67686  80364  71910
             97260  80358  97254 126760 128918 126756 126754 118312 124694 122472 126774 122468
            118306 122466 101416 116246 105576 101412 113896 105572 101410 113892 105570 113890
             67624  99350  71784 101430  80104  71780  67618  96744  80100  71778  96740  80098
             96738  71798  96758 126738 122420 122418 105524 113780 113778  71732  79988  96500
             96498  66880  66848  98968  66832  66824  66820  66992  66968  66956  66950  67036
             67022 100000  99984 115532  99976 115526  99972  99970  66720  98904  69024 100056
             98892  69008 100044  69000 100038  68996  66690  68994  66776  98926  69080 100078
             69068  66758  69062  66798  69102 116560 116552 116548 116546  99920 102096 116588
            115494 102088 116582 102084  99906 102082  66640  68816  66632  98854  73168  68808
             66628  73160  68804  66626  73156  68802  66668  68844  66662  73196  68838  73190
            124840 124836 124834 116520 118632 124854 118628 116514 118626  99880 115478 101992
            116534 106216 101988  99874 106212 101986 106210  66600  98838  68712  99894  72936
             68708  66594  81384  72932  68706  81380  72930  66614  68726  72950  81398 128980
            128978 124820 126900 124818 126898 116500 118580 116498 122740 118578 122738  99860
            101940  99858 106100 101938 114420
        ] [
            128352 129720 125504 128304 129692 125472 128280 129678 125456 128268 125448 128262
            125444 125792 128440 129758 120384 125744 128412 120352 125720 128398 120336 125708
            120328 125702 120324 120672 125880 128478 110144 120624 125852 110112 120600 125838
            110096 120588 110088 120582 110084 110432 120760 125918  89664 110384 120732  89632
            110360 120718  89616 110348  89608 110342  89952 110520 120798  89904 110492  89880
            110478  89868  90040 110558  90012  89998 125248 128176 129628 125216 128152 129614
            125200 128140 125192 128134 125188 125186 119616 125360 128220 119584 125336 128206
            119568 125324 119560 125318 119556 119554 108352 119728 125404 108320 119704 125390
            108304 119692 108296 119686 108292 108290  85824 108464 119772  85792 108440 119758
             85776 108428  85768 108422  85764  85936 108508  85912 108494  85900  85894  85980
             85966 125088 128088 129582 125072 128076 125064 128070 125060 125058 119200 125144
            128110 119184 125132 119176 125126 119172 119170 107424 119256 125166 107408 119244
            107400 119238 107396 107394  83872 107480 119278  83856 107468  83848 107462  83844
             83842  83928 107502  83916  83910  83950 125008 128044 125000 128038 124996 124994
            118992 125036 118984 125030 118980 118978 106960 119020 106952 119014 106948 106946
             82896 106988  82888 106982  82884  82882  82924  82918 124968 128022 124964 124962
            118888 124982 118884 118882 106728 118902 106724 106722  82408 106742  82404  82402
            124948 124946 118836 118834 106612 106610 124224 127664 129372 124192 127640 129358
            124176 127628 124168 127622 124164 124162 117568 124336 127708 117536 124312 127694
            117520 124300 117512 124294 117508 117506 104256 117680 124380 104224 117656 124366
            104208 117644 104200 117638 104196 104194  77632 104368 117724  77600 104344 117710
             77584 104332  77576 104326  77572  77744 104412  77720 104398  77708  77702  77788
             77774 128672 129880  93168 128656 129868  92664 128648 129862  92412 128644 128642
            124064 127576 129326 126368 124048 129902 126352 128716 127558 126344 124036 126340
            124034 126338 117152 124120 127598 121760 117136 124108 121744 126412 124102 121736
            117124 121732 117122 121730 103328 117208 124142 112544 103312 117196 112528 121804
            117190 112520 103300 112516 103298 112514  75680 103384 117230  94112  75664 103372
             94096 112588 103366  94088  75652  94084  75650  75736 103406  94168  75724  94156
             75718  94150  75758 128592 129836  91640 128584 129830  91388 128580  91262 128578
            123984 127532 126160 123976 127526 126152 128614 126148 123970 126146 116944 124012
            121296 116936 124006 121288 126182 121284 116930 121282 102864 116972 111568 102856
            116966 111560 121318 111556 102850 111554  74704 102892  92112  74696 102886  92104
            111590  92100  74690  92098  74732  92140  74726  92134 128552 129814  90876 128548
             90750 128546 123944 127510 126056 128566 126052 123938 126050 116840 123958 121064
            116836 121060 116834 121058 102632 116854 111080 121078 111076 102626 111074  74216
            102646  91112  74212  91108  74210  91106  74230  91126 128532  90494 128530 123924
            126004 123922 126002 116788 120948 116786 120946 102516 110836 102514 110834  73972
             90612  73970  90610 128522 123914 125978 116762 120890 102458 110714 123552 127320
            129198 123536 127308 123528 127302 123524 123522 116128 123608 127342 116112 123596
            116104 123590 116100 116098 101280 116184 123630 101264 116172 101256 116166 101252
            101250  71584 101336 116206  71568 101324  71560 101318  71556  71554  71640 101358
             71628  71622  71662 127824 129452  79352 127816 129446  79100 127812  78974 127810
            123472 127276 124624 123464 127270 124616 127846 124612 123458 124610 115920 123500
            118224 115912 123494 118216 124646 118212 115906 118210 100816 115948 105424 100808
            115942 105416 118246 105412 100802 105410  70608 100844  79824  70600 100838  79816
            105446  79812  70594  79810  70636  79852  70630  79846 129960  95728 113404 129956
             95480 113278 129954  95356  95294 127784 129430  78588 128872 129974  95996  78462
            128868 127778  95870 128866 123432 127254 124520 123428 126696 128886 123426 126692
            124514 126690 115816 123446 117992 115812 122344 117988 115810 122340 117986 122338
            100584 115830 104936 100580 113640 104932 100578 113636 104930 113634  70120 100598
             78824  70116  96232  78820  70114  96228  78818  96226  70134  78838 129940  94968
            113022 129938  94844  94782 127764  78206 128820 127762  95102 128818 123412 124468
            123410 126580 124466 126578 115764 117876 115762 122100 117874 122098 100468 104692
            100466 113140 104690 113138  69876  78324  69874  95220  78322  95218 129930  94588
             94526 127754 128794 123402 124442 126522 115738 117818 121978 100410 104570 112890
             69754  78074  94714  94398 123216 127148 123208 127142 123204 123202 115408 123244
            115400 123238 115396 115394  99792 115436  99784 115430  99780  99778  68560  99820
             68552  99814  68548  68546  68588  68582 127400 129238  72444 127396  72318 127394
            123176 127126 123752 123172 123748 123170 123746 115304 123190 116456 115300 116452
            115298 116450  99560 115318 101864  99556 101860  99554 101858  68072  99574  72680
             68068  72676  68066  72674  68086  72694 129492  80632 105854 129490  80508  80446
            127380  72062 127924 127378  80766 127922 123156 123700 123154 124788 123698 124786
            115252 116340 115250 118516 116338 118514  99444 101620  99442 105972 101618 105970
             67828  72180  67826  80884  72178  80882  97008 114044  96888 113982  96828  96798
            129482  80252 130010  97148  80190  97086 127370 127898 128954 123146 123674 124730
            126842 115226 116282 118394 122618  99386 101498 105722 114170  67706  71930  80378
             96632 113854  96572  96542  80062  96702  96444  96414  96350 123048 123044 123042
            115048 123062 115044 115042  99048 115062  99044  99042  67048  99062  67044  67042
             67062 127188  68990 127186 123028 123316 123026 123314 114996 115572 114994 115570
             98932 100084  98930 100082  66804  69108  66802  69106 129258  73084  73022 127178
            127450 123018 123290 123834 114970 115514 116602  98874  99962 102138  66682  68858
             73210  81272 106174  81212  81182  72894  81342  97648 114364  97592 114334  97564
             97550  81084  97724  81054  97694  97464 114270  97436  97422  80990  97502  97372
             97358  97326 114868 114866  98676  98674  66292  66290 123098 114842 115130  98618
             99194  66170  67322  69310  73404  73374  81592 106334  81564  81550  73310  81630
             97968 114524  97944 114510  97932  97926  81500  98012  81486  97998  97880 114478
             97868  97862  81454  97902  97836  97830  69470  73564  73550  81752 106414  81740
             81734  73518  81774  81708  81702
        ] [
            109536 120312  86976 109040 120060  86496 108792 119934  86256 108668  86136 129744
             89056 110072 129736  88560 109820 129732  88312 109694 129730  88188 128464 129772
             89592 128456 129766  89340 128452  89214 128450 125904 128492 125896 128486 125892
            125890 120784 125932 120776 125926 120772 120770 110544 120812 110536 120806 110532
             84928 108016 119548  84448 107768 119422  84208 107644  84088 107582  84028 129640
             85488 108284 129636  85240 108158 129634  85116  85054 128232 129654  85756 128228
             85630 128226 125416 128246 125412 125410 119784 125430 119780 119778 108520 119798
            108516 108514  83424 107256 119166  83184 107132  83064 107070  83004  82974 129588
             83704 107390 129586  83580  83518 128116  83838 128114 125172 125170 119284 119282
            107508 107506  82672 106876  82552 106814  82492  82462 129562  82812  82750 128058
            125050 119034  82296 106686  82236  82206  82366  82108  82078  76736 103920 117500
             76256 103672 117374  76016 103548  75896 103486  75836 129384  77296 104188 129380
             77048 104062 129378  76924  76862 127720 129398  77564 127716  77438 127714 124392
            127734 124388 124386 117736 124406 117732 117730 104424 117750 104420 104418 112096
            121592 126334  92608 111856 121468  92384 111736 121406  92272 111676  92216 111646
             92188  75232 103160 117118  93664  74992 103036  93424 112252 102974  93304  74812
             93244  74782  93214 129332  75512 103294 129908 129330  93944  75388 129906  93820
             75326  93758 127604  75646 128756 127602  94078 128754 124148 126452 124146 126450
            117236 121844 117234 121842 103412 103410  91584 111344 121212  91360 111224 121150
             91248 111164  91192 111134  91164  91150  74480 102780  91888  74360 102718  91768
            111422  91708  74270  91678 129306  74620 129850  92028  74558  91966 127546 128634
            124026 126202 116986 121338 102906  90848 110968 121022  90736 110908  90680 110878
             90652  90638  74104 102590  91000  74044  90940  74014  90910  74174  91070  90480
            110780  90424 110750  90396  90382  73916  90556  73886  90526  90296 110686  90268
             90254  73822  90334  90204  90190  71136 101112 116094  70896 100988  70776 100926
             70716  70686 129204  71416 101246 129202  71292  71230 127348  71550 127346 123636
            123634 116212 116210 101364 101362  79296 105200 118140  79072 105080 118078  78960
            105020  78904 104990  78876  78862  70384 100732  79600  70264 100670  79480 105278
             79420  70174  79390 129178  70524 129466  79740  70462  79678 127290 127866 123514
            124666 115962 118266 100858 113376 122232 126654  95424 113264 122172  95328 113208
            122142  95280 113180  95256 113166  95244  78560 104824 117950  95968  78448 104764
             95856 113468 104734  95800  78364  95772  78350  95758  70008 100542  78712  69948
             96120  78652  69918  96060  78622  96030  70078  78782  96190  94912 113008 122044
             94816 112952 122014  94768 112924  94744 112910  94732  94726  78192 104636  95088
             78136 104606  95032 113054  95004  78094  94990  69820  78268  69790  95164  78238
             95134  94560 112824 121950  94512 112796  94488 112782  94476  94470  78008 104542
             94648  77980  94620  77966  94606  69726  78046  94686  94384 112732  94360 112718
             94348  94342  77916  94428  77902  94414  94296 112686  94284  94278  77870  94318
             94252  94246  68336  99708  68216  99646  68156  68126  68476  68414 127162 123258
            115450  99834  72416 101752 116414  72304 101692  72248 101662  72220  72206  67960
             99518  72568  67900  72508  67870  72478  68030  72638  80576 105840 118460  80480
            105784 118430  80432 105756  80408 105742  80396  80390  72048 101564  80752  71992
            101534  80696  71964  80668  71950  80654  67772  72124  67742  80828  72094  80798
            114016 122552 126814  96832 113968 122524  96800 113944 122510  96784 113932  96776
            113926  96772  80224 105656 118366  97120  80176 105628  97072 114076 105614  97048
             80140  97036  80134  97030  71864 101470  80312  71836  97208  80284  71822  97180
             80270  97166  67678  71902  80350  97246  96576 113840 122460  96544 113816 122446
             96528 113804  96520 113798  96516  96514  80048 105564  96688  80024 105550  96664
            113870  96652  80006  96646  71772  80092  71758  96732  80078  96718  96416 113752
            122414  96400 113740  96392 113734  96388  96386  79960 105518  96472  79948  96460
             79942  96454  71726  79982  96494  96336 113708  96328 113702  96324  96322  79916
             96364  79910  96358  96296 113686  96292  96290  79894  96310  66936  99006  66876
             66846  67006  68976 100028  68920  99998  68892  68878  66748  69052  66718  69022
             73056 102072 116574  73008 102044  72984 102030  72972  72966  68792  99934  73144
             68764  73116  68750  73102  66654  68830  73182  81216 106160 118620  81184 106136
            118606  81168 106124  81160 106118  81156  81154  72880 101980  81328  72856 101966
             81304 106190  81292  72838  81286  68700  72924  68686  81372  72910  81358 114336
            122712 126894 114320 122700 114312 122694 114308 114306  81056 106072 118574  97696
             81040 106060  97680 114380 106054  97672  81028  97668  81026  97666  72792 101934
             81112  72780  97752  81100  72774  97740  81094  97734  68654  72814  81134  97774
            114256 122668 114248 122662 114244 114242  80976 106028  97488  80968 106022  97480
            114278  97476  80962  97474  72748  81004  72742  97516  80998  97510 114216 122646
            114212 114210  80936 106006  97384  80932  97380  80930  97378  72726  80950  97398
            114196 114194  80916  97332  80914  97330  66236  66206  67256  99166  67228  67214
             66142  67294  69296 100188  69272 100174  69260  69254  67164  69340  67150  69326
             73376 102232 116654  73360 102220  73352 102214  73348  73346  69208 100142  73432
            102254  73420  69190  73414  67118  69230  73454 106320 118700 106312 118694 106308
            106306  73296 102188  81616 106348 102182  81608  73284  81604  73282  81602  69164
             73324  69158  81644  73318  81638 122792 126934 122788 122786 106280 118678 114536
            106276 114532 106274 114530  73256 102166  81512  73252  98024  81508  73250  98020
             81506  98018  69142  73270  81526  98038 122772 122770 106260 114484 106258 114482
             73236  81460  73234  97908  81458  97906 122762 106250 114458  73226  81434  97850
             66396  66382  67416  99246  67404  67398  66350  67438  69456 100268  69448 100262
             69444  69442  67372  69484  67366  69478 102312 116694 102308 102306  69416 100246
             73576 102326  73572  69410  73570  67350  69430  73590 118740 118738 102292 106420
            102290 106418  69396  73524  69394  81780  73522  81778 118730 102282 106394  69386
             73498  81722  66476  66470  67496  99286  67492  67490  66454  67510 100308 100306
             67476  69556  67474  69554 116714
        ]
    ] def

    % Row address patterns
    /raps [
        [  % Left and right
            802 930 946 818 882 890 826 954 922 986 970 906 778
            794 786 914 978 982 980 916 948 932 934 942 940 936
            808 812 814 806 822 950 918 790 788 820 884 868 870
            878 876 872 840 856 860 862 846 844 836 838 834 866
        ] [  % Centre
            718 590 622 558 550 566 534 530 538 570 562 546 610
            626 634 762 754 758 630 628 612 614 582 578 706 738
            742 740 748 620 556 552 616 744 712 716 708 710 646
            654 652 668 664 696 688 656 720 592 600 604 732 734
        ]
    ] def

    % Return the 17 bits for a codeword in a given cluster
    /cwtobits {
        clusters exch get exch get /v exch def
        [ 17 {0} repeat v 2 17 string cvrs {48 sub} forall ]
        dup length 17 sub 17 getinterval
    } bind def

    % Return the 10 bits for a row address pattern
    /raptobits {
        raps exch get exch get /v exch def
        [ 10 {0} repeat v 2 10 string cvrs {48 sub} forall ]
        dup length 10 sub 10 getinterval
    } bind def

    % Populate bitmap for the image
    /rwid [38 55 82 99] c 1 sub get def
    c 3 eq cca and {/rwid 72 def} if
    /pixs rwid r mul array def

    0 1 r 1 sub {
        /i exch def
        /clst i rapl add 1 sub 3 mod def
        pixs rwid i mul [
            c 1 eq {
                i rapl add 1 sub 52 mod 0 raptobits aload pop
                cws i get clst cwtobits aload pop
                i rapr add 1 sub 52 mod 0 raptobits aload pop
            } if
            c 2 eq {
                i rapl add 1 sub 52 mod 0 raptobits aload pop
                cws i 2 mul get clst cwtobits aload pop
                cws i 2 mul 1 add get clst cwtobits aload pop
                i rapr add 1 sub 52 mod 0 raptobits aload pop
            } if
            c 3 eq {
                cca not {
                    i rapl add 1 sub 52 mod 0 raptobits aload pop
                } if
                cws i 3 mul get clst cwtobits aload pop
                i rapc add 1 sub 52 mod 1 raptobits aload pop
                cws i 3 mul 1 add get clst cwtobits aload pop
                cws i 3 mul 2 add get clst cwtobits aload pop
                i rapr add 1 sub 52 mod 0 raptobits aload pop
            } if
            c 4 eq {
                i rapl add 1 sub 52 mod 0 raptobits aload pop
                cws i 4 mul get clst cwtobits aload pop
                cws i 4 mul 1 add get clst cwtobits aload pop
                i rapc add 1 sub 52 mod 1 raptobits aload pop
                cws i 4 mul 2 add get clst cwtobits aload pop
                cws i 4 mul 3 add get clst cwtobits aload pop
                i rapr add 1 sub 52 mod 0 raptobits aload pop
            } if
            1
        ] putinterval
    } for

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx rwid
    /pixy r
    /height r 72 div rowmult mul
    /width rwid 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /micropdf417 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER micropdf417--

% --BEGIN ENCODER datamatrix--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: Data Matrix
% --EXAM: This is Data Matrix!
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp datamatrix 0.0 2019110800 205260 224081
%%BeginData:        923 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/datamatrix {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /columns 0 def
    /rows 0 def
    /format (square) def    % square or rectangle
    /version (unset) def
    /parse false def
    /parsefnc false def
    /encoding (auto) def
    /mailmark false def
    /raw false def
    /dmre false def      % Alias for isodmre
    /dindmre false def
    /isodmre false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    version (unset) ne {
        version (x) search
        pop /rows exch def
        pop /columns exch def
    } if

    /columns columns cvi def
    /rows rows cvi def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /isodmre dmre def

    % Basic metrics for the each symbol
    %                         rows  cols  regh  regv  rscw  rsbl
    /metrics [
        % Standard square symbols
                             [  10    10     1     1     5     1 ]
                             [  12    12     1     1     7     1 ]
                             [  14    14     1     1    10     1 ]
                             [  16    16     1     1    12     1 ]
                             [  18    18     1     1    14     1 ]
                             [  20    20     1     1    18     1 ]
                             [  22    22     1     1    20     1 ]
                             [  24    24     1     1    24     1 ]
                             [  26    26     1     1    28     1 ]
                             [  32    32     2     2    36     1 ]
                             [  36    36     2     2    42     1 ]
                             [  40    40     2     2    48     1 ]
                             [  44    44     2     2    56     1 ]
                             [  48    48     2     2    68     1 ]
                             [  52    52     2     2    84     2 ]
                             [  64    64     4     4   112     2 ]
                             [  72    72     4     4   144     4 ]
                             [  80    80     4     4   192     4 ]
                             [  88    88     4     4   224     4 ]
                             [  96    96     4     4   272     4 ]
                             [ 104   104     4     4   336     6 ]
                             [ 120   120     6     6   408     6 ]
                             [ 132   132     6     6   496     8 ]
                             [ 144   144     6     6   620    10 ]
        % Optional rectangular symbols
                             [   8    18     1     1     7     1 ]
                             [   8    32     1     2    11     1 ]
        dindmre isodmre or { [   8    48     1     2    15     1 ] } if
        dindmre isodmre or { [   8    64     1     4    18     1 ] } if
                isodmre    { [   8    80     1     4    22     1 ] } if
                isodmre    { [   8    96     1     4    28     1 ] } if
                isodmre    { [   8   120     1     6    32     1 ] } if
                isodmre    { [   8   144     1     6    36     1 ] } if
                             [  12    26     1     1    14     1 ]
                             [  12    36     1     2    18     1 ]
        dindmre isodmre or { [  12    64     1     4    27     1 ] } if
                isodmre    { [  12    88     1     4    36     1 ] } if
                             [  16    36     1     2    24     1 ]
                             [  16    48     1     2    28     1 ]
        dindmre isodmre or { [  16    64     1     4    36     1 ] } if
                isodmre    { [  20    36     1     2    28     1 ] } if
                isodmre    { [  20    44     1     2    34     1 ] } if
                isodmre    { [  20    64     1     4    42     1 ] } if
                isodmre    { [  22    48     1     2    38     1 ] } if
        dindmre            { [  24    32     1     2    28     1 ] } if
        dindmre            { [  24    36     1     2    33     1 ] } if
        dindmre isodmre or { [  24    48     1     2    41     1 ] } if
        dindmre isodmre or { [  24    64     1     4    46     1 ] } if
        dindmre            { [  26    32     1     2    32     1 ] } if
        dindmre isodmre or { [  26    40     1     2    38     1 ] } if
        dindmre isodmre or { [  26    48     1     2    42     1 ] } if
        dindmre isodmre or { [  26    64     1     4    50     1 ] } if
    ] def

    % Create array of codewords remaining to make a full symbol
    /urows rows def
    /ucols columns def
    /fullcws [] def
    metrics {
        /m exch def
        /rows m 0 get def                          % Rows in symbol
        /cols m 1 get def                          % Columns in symbol
        /regh m 2 get def                          % Horizontal regions
        /regv m 3 get def                          % Vertical regions
        /rscw m 4 get def                          % Error correction codewords
        /rsbl m 5 get def                          % Error correction blocks
        /mrows rows 2 regh mul sub def             % Rows in the mapping matrix
        /mcols cols 2 regv mul sub def             % Columns in the mapping matrix
        /ncws mrows mcols mul 8 idiv rscw sub def  % Data codewords
        /okay true def
        urows 0 ne urows rows ne and {/okay false def} if
        ucols 0 ne ucols cols ne and {/okay false def} if
        format (square) eq rows cols ne and {/okay false def} if
        format (rectangle) eq rows cols eq and {/okay false def} if
        okay {/fullcws [ fullcws aload pop ncws ] def} if
    } forall
    /numremcws [ 1558 {10000} repeat ] def
    fullcws {numremcws exch 1 sub 1 put} forall
    1556 -1 0 {
        /i exch def
        numremcws i get 1 ne {
            numremcws i numremcws i 1 add get 1 add put
        } if
    } for

    raw {/encoding (raw) def} if

    encoding (raw) eq {
        /cws barcode length array def
        /i 0 def /j 0 def
        { % loop
            i barcode length eq {exit} if
            /cw barcode i 1 add 3 getinterval cvi def
            cws j cw put
            /i i 4 add def
            /j j 1 add def
        } loop
        /cws cws 0 j getinterval def
    } if  % encoding=raw

    encoding (auto) eq {

        % Macro 05/06 compression of [)>{RS}05/06{GS}...{RS}{EOT} structured data
        /mac05comp false def
        /mac06comp false def
        barcode length 9 ge {
            barcode 0 7 getinterval
            dup  ([\)>\03605\035) eq
            exch ([\)>\03606\035) eq or
            barcode barcode length 2 sub 2 getinterval (\036\004) eq and {
                barcode 5 get 53 eq {/mac05comp} {/mac06comp} ifelse true def
                /barcode barcode 7 barcode length 9 sub getinterval def
            } if
        } if
        /barlen barcode length def

        % Convert input into bytes accounting for FNC characters
        /fnc1 -1 def  /prog -2 def  /m05 -3 def  /m06 -4 def
        /fncvals <<
            (FNC1) fnc1
            (PROG) prog
            (MAC5) m05
            (MAC6) m06
        >> def
        /msg barlen array def
        /i 0 def /j 0 def {
            i barlen eq {exit} if
            /char barcode i get def
            parsefnc char 94 eq and i barlen 4 sub lt and {
                barcode i 1 add get 94 ne {
                    /char fncvals barcode i 1 add 4 getinterval get def
                    /i i 4 add def
                } {
                    /i i 1 add def
                } ifelse
            } if
            msg j char put
            /i i 1 add def
            /j j 1 add def
        } loop
        /msg msg 0 j getinterval def

        % Prefix the Macro 05/06 compression indicator
        mac05comp { /msg [ m05 msg aload pop ] def } if
        mac06comp { /msg [ m06 msg aload pop ] def } if

        /msglen msg length def

        % Special characters
        /lC    -5 def  /lB    -6 def  /lX    -7 def  /lT    -8 def  /lE    -9 def  /unl -10 def
        /sapp -11 def  /usft -12 def  /sft1 -13 def  /sft2 -14 def  /sft3 -15 def  /eci -16 def  /pad -17 def
        /unlcw 254 def

        /Avals <<
            0 1 128 {dup 1 add} for
            pad 129
            0 1 99 {  % Double digits
                dup 10 2 string cvrs (00) 2 string copy dup 2 3 index length sub 4 -1 roll putinterval
                exch 130 add
            } for
            229 [ lC lB fnc1 sapp prog usft m05 m06 lX lT lE eci ] {exch 1 add dup} forall pop
        >> def
        /Avals <<
            Avals {[exch]} forall
        >> def

        /CNvals <<
            sft1 0
            sft2 1
            sft3 2
            32   3
            48 1 57 {dup 44 sub} for  % 0-9
            65 1 90 {dup 51 sub} for  % A-Z
        >> def
        /C1vals << 0 1 31 {dup} for >> def
        /C2vals <<
            33 1 47 {dup 33 sub} for
            58 1 64 {dup 43 sub} for
            91 1 95 {dup 69 sub} for
            fnc1 27
            usft 30
        >> def
        /C3vals << 96 1 127 {dup 96 sub} for >> def
        /Cvals <<
            CNvals {[exch]} forall
            C1vals {[exch CNvals sft1 get exch]} forall
            C2vals {[exch CNvals sft2 get exch]} forall
            C3vals {[exch CNvals sft3 get exch]} forall
        >> def

        /TNvals <<
            sft1 0
            sft2 1
            sft3 2
            32   3
            48 1  57 {dup 44 sub} for  % 0-9
            97 1 122 {dup 83 sub} for  % a-z
        >> def
        /T1vals << 0 1 31 {dup} for >> def
        /T2vals <<
            33 1 47 {dup 33 sub} for
            58 1 64 {dup 43 sub} for
            91 1 95 {dup 69 sub} for
            fnc1 27
            usft 30
        >> def
        /T3vals <<
             96 0
             65 1  90 {dup 64 sub} for
            123 1 127 {dup 96 sub} for
        >> def
        /Tvals <<
            TNvals {[exch]} forall
            T1vals {[exch TNvals sft1 get exch]} forall
            T2vals {[exch TNvals sft2 get exch]} forall
            T3vals {[exch TNvals sft3 get exch]} forall
        >> def

        % Extended ASCII mappings
        128 1 255 {
            /i exch def
            Avals i [ Avals usft get aload pop Avals i 128 sub get aload pop ] put
            Cvals i [ Cvals usft get aload pop Cvals i 128 sub get aload pop ] put
            Tvals i [ Tvals usft get aload pop Tvals i 128 sub get aload pop ] put
        } for

        /Xvals <<
            13 0
            42 1
            62 2
            32 3
            48 1 57 {dup 44 sub} for
            65 1 90 {dup 51 sub} for
        >> def
        /Xvals <<
            Xvals {[exch]} forall
        >> def

        /Evals <<
            64 1 94 {dup 64 sub} for
            unl 31
            32 1 63 {dup} for
        >> def
        /Evals <<
            Evals {[exch]} forall
        >> def

        /Bvals <<
            0 1 255 {dup} for
        >> def
        /Bvals <<
            Bvals {[exch]} forall
        >> def

        /encvals [ Avals Cvals Tvals Xvals Evals Bvals ] def

        /numD [ msglen {0} repeat 0 ] def
        /nextXterm [ msglen {0} repeat 9999 ] def
        /nextNonX  [ msglen {0} repeat 9999 ] def
        msglen 1 sub -1 0 {
            /i exch def
            /barchar msg i get def
            barchar 48 ge barchar 57 le and {
                numD i numD i 1 add get 1 add put
            } if
            barchar 13 eq barchar 42 eq or barchar 62 eq or {
                nextXterm i 0 put
            } {
                nextXterm i nextXterm i 1 add get 1 add put
            } ifelse
            Xvals barchar known not {
                nextNonX i 0 put
            } {
                nextNonX i nextNonX i 1 add get 1 add put
            } ifelse
        } for
        /nextXterm [nextXterm {dup 10000 gt {pop 10000} if} forall] def
        /nextNonX  [nextNonX  {dup 10000 gt {pop 10000} if} forall] def

        /isD  {char 48 ge char 57 le and} bind def
        /isC  {CNvals char known} bind def
        /isT  {TNvals char known} bind def
        /isX  {Xvals char known} bind def
        /isE  {Evals char known} bind def
        /isEA {char 127 gt} bind def
        /isFN {char 0 lt} bind def
        /XtermFirst {dup nextXterm exch get exch nextNonX exch get lt} bind def

        /A 0 def  /C 1 def  /T 2 def  /X 3 def  /E 4 def  /B 5 def

        /lookup {
            /ac 1 def /cc 2 def /tc 2 def /xc 2 def /ec 2 def /bc 2.25 def
            mode A eq {/ac 0 def /cc 1 def /tc 1 def /xc 1 def /ec 1 def /bc 1.25 def} if
            mode C eq {/cc 0 def} if
            mode T eq {/tc 0 def} if
            mode X eq {/xc 0 def} if
            mode E eq {/ec 0 def} if
            mode B eq {/bc 0 def} if
            1 {  % common exit
                mailmark i 45 lt and {C exit} if  % Mailmark is C40 only for 45 characters
                /k 0 def {  % loop
                    i k add msglen eq {
                        [/ac /cc /tc /xc /ec /bc] {dup load ceiling def} forall
                        true [   cc tc xc ec bc] {ac exch le and} forall {A exit} if
                        true [ac cc tc xc ec   ] {bc exch lt and} forall {B exit} if
                        true [ac cc tc xc    bc] {ec exch lt and} forall {E exit} if
                        true [ac cc    xc ec bc] {tc exch lt and} forall {T exit} if
                        true [ac cc tc    ec bc] {xc exch lt and} forall {X exit} if
                        C exit
                    } if
                    /char msg i k add get def
                    /ac ac isD {1 2 div add} {isEA {ceiling 2 add} {ceiling 1 add} ifelse} ifelse def
                    /cc cc isC { 0.66666667 add} {isEA { 2.66666667 add } { 1.33333334 add } ifelse} ifelse def
                    /tc tc isT { 0.66666667 add} {isEA { 2.66666667 add } { 1.33333334 add } ifelse} ifelse def
                    /xc xc isX { 0.66666667 add} {isEA { 4.33333334 add } { 3.33333334 add } ifelse} ifelse def
                    /ec ec isE {3 4 div add} {isEA {17 4 div add } {13 4 div add } ifelse} ifelse def
                    /bc bc isFN {4 add} {1 add} ifelse def
                    k 4 ge {
                        true [   cc tc xc ec bc] {ac 1 add exch le and} forall {A exit} if
                        bc 1 add ac le {B exit} if
                        true [   cc tc xc ec   ] {bc 1 add exch lt and} forall {B exit} if
                        true [ac cc tc xc    bc] {ec 1 add exch lt and} forall {E exit} if
                        true [ac cc    xc ec bc] {tc 1 add exch lt and} forall {T exit} if
                        true [ac cc tc    ec bc] {xc 1 add exch lt and} forall {X exit} if
                        true [ac    tc    ec bc] {cc 1 add exch lt and} forall {
                            cc xc lt {C exit} if
                            cc xc eq {i k add 1 add XtermFirst {X exit} {C exit} ifelse} if
                        } if
                    } if
                    /k k 1 add def
                } loop
            } repeat
        } bind def

        /addtocws {
            dup cws exch j exch putinterval
            /j exch length j add def
        } bind def

        /encA {
            1 {  % Common exit
                numD i get 2 ge {
                    2 string dup 0 msg i get put dup 1 msg i 1 add get put Avals exch get addtocws
                    /i i 2 add def
                    exit
                } if
                /newmode lookup def
                newmode mode ne {
                    Avals [-1 lC lT lX lE lB] newmode get get addtocws
                    /mode newmode def
                    exit
                } if
                Avals msg i get get addtocws
                /i i 1 add def
                exit
            } repeat
        } bind def

        /CTXvalstocws {
            /in exch def
            mark
            0 3 in length 1 sub {
                in exch 3 getinterval 0 exch {add 40 mul} forall 40 idiv 1 add
                dup 256 idiv exch 256 mod
            } for
            counttomark array astore exch pop
        } bind def

        /encCTX {
            /p 0 def
            /ctxvals 2500 array def
            /done false def

            % Lookup the values for each character
            {
                i msglen eq {exit} if
                encvals mode get msg i get known not {exit} if
                p 3 mod 0 eq {
                    /newmode lookup def
                    newmode mode ne {
                        ctxvals 0 p getinterval CTXvalstocws addtocws
                        [unlcw] addtocws
                        newmode A ne {
                            Avals [-1 lC lT lX lE lB] newmode get get addtocws
                        } if
                        /mode newmode def
                        /done true def
                        exit
                    } if
                    msglen i sub 3 le {  % Check end of data conditions
                        /remcws numremcws j p 3 idiv 2 mul add get def
                        /remvals [
                            msg i msglen i sub getinterval {
                                dup encvals mode get exch known {
                                    encvals mode get exch get aload pop
                                } {  % Unencodable X12 characters
                                    pop -1 -1 -1 -1
                                } ifelse
                            } forall
                        ] def
                        remcws 2 eq remvals length 3 eq and {
                            % Encode and omit unlatch
                            [
                                ctxvals 0 p getinterval aload pop
                                remvals aload pop
                            ] CTXvalstocws addtocws
                            /mode A def
                            /i msglen def
                            /done true def
                            exit
                        } if
                        remcws 2 eq remvals length 2 eq and mode X ne and {
                            % Encode with sft1 as third value, omit unlatch
                            [
                                ctxvals 0 p getinterval aload pop
                                remvals aload pop
                                encvals mode get sft1 get aload pop
                            ] CTXvalstocws addtocws
                            /mode A def
                            /i msglen def
                            /done true def
                            exit
                        } if
                        remcws 2 eq remvals length 1 eq and {
                            % Unlatch to ASCII
                            ctxvals 0 p getinterval CTXvalstocws addtocws
                            [unlcw] addtocws
                            Avals msg i get get addtocws
                            /mode A def
                            /i msglen def
                            /done true def
                            exit
                        } if
                        remcws 1 eq remvals length 1 eq and {
                            % Implied unlatch to ASCII
                            ctxvals 0 p getinterval CTXvalstocws addtocws
                            Avals msg i get get addtocws
                            /mode A def
                            /i msglen def
                            /done true def
                            exit
                        } if
                    } if
                } if
                encvals mode get msg i get get
                dup ctxvals exch p exch putinterval
                /p exch length p add def
                /i i 1 add def
            } loop

            % Backtrack to a boundary and return to ASCII
            done not {
                {
                    p 3 mod 0 eq {exit} if
                    /i i 1 sub def
                    /p p encvals mode get msg i get get length sub def
                } loop
                [
                    ctxvals 0 p getinterval aload pop
                ] CTXvalstocws addtocws
                [unlcw] addtocws
                /mode A def
                % Encode something to avoid latching immediately back
                i msglen ne {
                    numD i get 2 ge {
                        2 string dup 0 msg i get put dup 1 msg i 1 add get put Avals exch get addtocws
                        /i i 2 add def
                    } {
                        Avals msg i get get addtocws
                        /i i 1 add def
                    } ifelse
                } if
            } if

        } bind def

        /Evalstocws {
            /in exch def
            /inlen in length def
            /outlen in length 4 div 3 mul ceiling cvi def
            /in [ in aload pop 0 0 0 ] def
            mark
            0 4 inlen 1 sub {
                in exch 4 getinterval 0 exch {or 6 bitshift} forall -6 bitshift
                dup -16 bitshift 255 and exch
                dup -8 bitshift 255 and exch
                255 and
            } for
            counttomark array astore exch pop
            0 outlen getinterval
        } bind def

        /encE {
            /p 0 def
            /edifactvals 2100 array def

            % Lookup the values for each character
            {
                i msglen eq {exit} if
                Evals msg i get known not {exit} if
                p 4 mod 0 eq {
                    msglen i sub 2 le {  % Check end of data condition
                        /remcws numremcws j p 4 idiv 3 mul add get def
                        /remvals [
                            msg i msglen i sub getinterval {
                                Avals exch get aload pop
                            } forall
                        ] def
                        remcws 1 eq remcws 2 eq or remvals length remcws le and {
                            % Implied unlatch to ASCII
                            edifactvals 0 p getinterval Evalstocws addtocws
                            remvals addtocws
                            /mode A def
                            /i msglen def
                            exit
                        } if
                    } if
                    lookup mode ne {exit} if
                } if
                Evals msg i get get
                dup edifactvals exch p exch putinterval
                /p exch length p add def
                /i i 1 add def
            } loop

            % Unlatch and pad with zeros until boundary
            mode A ne {
                /remcws numremcws j p 4 idiv 3 mul add 1 sub get 1 sub def
                p 4 mod 0 ne i msglen ne or remcws 3 ge or {  % Unlatch unless less than 3 codewords remain
                    Evals unl get
                    dup edifactvals exch p exch putinterval
                    /p exch length p add def
                } if
                edifactvals 0 p getinterval Evalstocws addtocws
                /mode A def
                % Encode something to avoid latching immediately back
                i msglen ne {
                    numD i get 2 ge {
                        2 string dup 0 msg i get put dup 1 msg i 1 add get put Avals exch get addtocws
                        /i i 2 add def
                    } {
                        Avals msg i get get addtocws
                        /i i 1 add def
                    } ifelse
                } if
            } if

        } bind def

        /encB {
            /p 0 def /bvals 1558 array def {
                i msglen eq {exit} if
                lookup mode ne {exit} if
                bvals p msg i get put
                /p p 1 add def
                /i i 1 add def
            } loop
            /remcws numremcws j p add get 1 sub def
            /bvals [
                remcws 0 eq i msglen eq and {  % Terminates symbol
                    0
                } {
                    p 250 lt {p} {p 250 idiv 249 add p 250 mod} ifelse
                } ifelse
                bvals 0 p getinterval aload pop
            ] def
            0 1 bvals length 1 sub {  % Pseudo-randomise based on codeword position
                /p exch def
                j p add 1 add 149 mul 255 mod 1 add bvals p get add
                dup 256 ge {256 sub} if
                bvals exch p exch put
            } for
            bvals addtocws
            /mode A def
        } bind def

        % Derive the codewords
        /cws 1558 array def
        /mode A def /i 0 def /j 0 def {
            i msglen ge {exit} if
            [ /encA /encCTX /encCTX /encCTX /encE /encB ] mode get load exec
        } loop
        /cws cws 0 j getinterval def

    } if  % encoding=auto

    % Extend codewords to fill symbol with pseudo-randomised pad characters
    /datlen cws length def
    /remcws numremcws j 1 sub get 1 sub def
    remcws 0 gt {
        /cws [ cws aload pop remcws {129} repeat ] def
        datlen 1 add 1 datlen remcws add 1 sub {
            /i exch def
            i 1 add 149 mul 253 mod 1 add 129 add
            dup 254 gt {254 sub} if
            cws exch i exch put
        } for
    } if

    % Lookup symbol metrics based on number of codewords and user specification
    /i 0 def { % loop
        /m metrics i get def
        /rows m 0 get def                          % Rows in symbol
        /cols m 1 get def                          % Columns in symbol
        /regh m 2 get def                          % Horizontal regions
        /regv m 3 get def                          % Vertical regions
        /rscw m 4 get def                          % Error correction codewords
        /rsbl m 5 get def                          % Error correction blocks
        /mrows rows 2 regh mul sub def             % Rows in the mapping matrix
        /mcols cols 2 regv mul sub def             % Columns in the mapping matrix
        /rrows mrows regh idiv def                 % Rows per region
        /rcols mcols regv idiv def                 % Columns per region
        /ncws mrows mcols mul 8 idiv rscw sub def  % Data codewords
        /okay true def
        cws length ncws ne           {/okay false def} if
        urows 0 ne urows rows ne and {/okay false def} if
        ucols 0 ne ucols cols ne and {/okay false def} if
        format (square) eq rows cols ne and {/okay false def} if
        format (rectangle) eq rows cols eq and {/okay false def} if
        okay {exit} if
        /i i 1 add def
    } loop

    % De-interleave the codewords into blocks
    /cwbs rsbl array def  % Array of data codeword blocks
    /ecbs rsbl array def  % Array of error correction blocks
    0 1 rsbl 1 sub {
        /i exch def
        cws length 1558 ne {
            /cwbsize cws length rsbl idiv def
        } {
            i 7 le {/cwbsize 156 def} {/cwbsize 155 def} ifelse
        } ifelse
        /cwb cwbsize array def
        0 1 cwbsize 1 sub {
            /j exch def
            cwb j cws j rsbl mul i add get put
        } for
        cwbs i cwb put
        ecbs i [ rscw rsbl idiv {0} repeat ] put
    } for

    % Calculate the log and anti-log tables
    /rsalog [ 1 255 { dup 2 mul dup 256 ge {301 xor} if } repeat ] def
    /rslog 256 array def
    1 1 255 {dup rsalog exch get exch rslog 3 1 roll put} for

    % Function to calculate the product in the field
    /rsprod {
        2 copy 0 ne exch 0 ne and {
            rslog exch get exch rslog exch get add 255 mod rsalog exch get
        } {
            pop pop 0
        } ifelse
    } bind def

    % Generate the coefficients
    /coeffs [ 1 rscw rsbl idiv {0} repeat ] def
    1 1 rscw rsbl idiv {
        /i exch def
        coeffs i coeffs i 1 sub get put
        i 1 sub -1 1 {
            /j exch def
            coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod xor put
        } for
        coeffs 0 coeffs 0 get rsalog i get rsprod put
    } for
    /coeffs coeffs 0 coeffs length 1 sub getinterval def

    % Calculate the error correction codewords for each block
    0 1 cwbs length 1 sub {
        /i exch def
        /cwb cwbs i get def
        /ecb ecbs i get def
        0 1 cwb length 1 sub {
            /t exch cwb exch get ecb 0 get xor def
            ecb length 1 sub -1 0 {
                /j exch def
                /p ecb length j sub 1 sub def
                ecb p t coeffs j get rsprod put
                j 0 gt { ecb p ecb p 1 add get ecb p get xor put } if
            } for
        } for
    } for

    % Strange fixup for 144x144 symbols
    ncws 1558 eq {
        /ecbs [ ecbs 8 2 getinterval {} forall ecbs 0 8 getinterval {} forall ] def
    } if

    % Extend codewords with the interleaved error correction codes
    /cws [ cws {} forall rscw {0} repeat ] def
    0 1 rscw 1 sub {
        /i exch def
        cws ncws i add ecbs i rsbl mod get i rsbl idiv get put
    } for

    % Place the codewords into the matrix
    /module {
        % cw row col shape
        4 -1 roll
        (00000000) 8 string copy dup 3 -1 roll 2 8 string cvrs
        dup length 8 exch sub exch putinterval
        7 -1 0 {1 index exch get 48 sub exch} for pop
        11 -3 roll
        % 1 2 4 8 16 32 64 128 row col shape
        {  % Place each bit of the codeword in the shape, MSB first
            exec
            1 index 0 lt {
                exch mrows add exch
                4 mrows 4 add 8 mod sub add
            } if
            dup 0 lt {
                mcols add exch
                4 mcols 4 add 8 mod sub add exch
            } if
            1 index mrows ge {
                exch mrows sub exch
            } if
            exch mcols mul add
            mmat exch 5 -1 roll put
        } forall
    } bind def

    % Placement patterns
    /dmn [
        { 2 copy 2 sub exch 2 sub exch } bind  { 2 copy 1 sub exch 2 sub exch } bind
        { 2 copy 2 sub exch 1 sub exch } bind  { 2 copy 1 sub exch 1 sub exch } bind
        { 2 copy exch 1 sub exch } bind        { 2 copy 2 sub } bind
        { 2 copy 1 sub } bind                  { 2 copy } bind
    ] def

    /dmc1 [
        { mrows 1 sub 0 } bind  { mrows 1 sub 1 } bind
        { mrows 1 sub 2 } bind  { 0 mcols 2 sub } bind
        { 0 mcols 1 sub } bind  { 1 mcols 1 sub } bind
        { 2 mcols 1 sub } bind  { 3 mcols 1 sub } bind
    ] def

    /dmc2 [
        { mrows 3 sub 0 } bind  { mrows 2 sub 0 } bind
        { mrows 1 sub 0 } bind  { 0 mcols 4 sub } bind
        { 0 mcols 3 sub } bind  { 0 mcols 2 sub } bind
        { 0 mcols 1 sub } bind  { 1 mcols 1 sub } bind
    ] def

    /dmc3 [
        { mrows 3 sub 0 } bind  { mrows 2 sub 0 } bind
        { mrows 1 sub 0 } bind  { 0 mcols 2 sub } bind
        { 0 mcols 1 sub } bind  { 1 mcols 1 sub } bind
        { 2 mcols 1 sub } bind  { 3 mcols 1 sub } bind
    ] def

    /dmc4 [
        { mrows 1 sub 0 } bind  { mrows 1 sub mcols 1 sub } bind
        { 0 mcols 3 sub } bind  { 0 mcols 2 sub } bind
        { 0 mcols 1 sub } bind  { 1 mcols 3 sub } bind
        { 1 mcols 2 sub } bind  { 1 mcols 1 sub } bind
    ] def

    /mmat [ mrows mcols mul {-1} repeat ] def
    cws length 1 sub -1 0 {cws exch get} for  % Reverse cws onto stack
    4 0  % Starting row and column
    { % loop
        2 copy 0 eq exch mrows eq and {
            dmc1 module
        } if
        2 copy 0 eq exch mrows 2 sub eq and mcols 4 mod 0 ne and {
            dmc2 module
        } if
        2 copy 0 eq exch mrows 2 sub eq and mcols 8 mod 4 eq and {
            dmc3 module
        } if
        2 copy 2 eq exch mrows 4 add eq and mcols 8 mod 0 eq and {
            dmc4 module
        } if

        { % loop for sweeping upwards
            2 copy 0 ge exch mrows lt and {
                2 copy exch mcols mul add mmat exch get -1 eq {
                    dmn module
                } if
            } if
            2 add exch 2 sub exch
            2 copy mcols lt exch 0 ge and not {exit} if
        } loop
        3 add exch 1 add exch

        { % loop for sweeping downwards
            2 copy mcols lt exch 0 ge and {
                2 copy exch mcols mul add mmat exch get -1 eq {
                    dmn module
                } if
            } if
            2 sub exch 2 add exch
            2 copy 0 ge exch mrows lt and not {exit} if
        } loop
        1 add exch 3 add exch

        2 copy mcols lt exch mrows lt or not {pop pop exit} if

    } loop

    % Set checker pattern if required
    mmat mrows mcols mul 1 sub get -1 eq {
        mmat mrows mcols 1 sub mul 2 sub [1 0] putinterval
        mmat mrows mcols mul 2 sub [0 1] putinterval
    } if

    % Place the modules onto a pixel map between alignment patterns
    /pixs rows cols mul array def
    /cwpos 0 def
    0 1 rows 1 sub {
        /i exch def
        i rrows 2 add mod 0 eq { pixs i cols mul [ cols 2 idiv {1 0} repeat ] putinterval } if
        i rrows 2 add mod rrows 1 add eq { pixs i cols mul [ cols {1} repeat ] putinterval } if
        i rrows 2 add mod 0 ne i rrows 2 add mod rrows 1 add ne and {
            0 1 cols 1 sub {
                /j exch def
                j rcols 2 add mod 0 eq { pixs i cols mul j add 1 put } if
                j rcols 2 add mod rcols 1 add eq { pixs i cols mul j add i 2 mod put } if
                j rcols 2 add mod 0 ne j rcols 2 add mod rcols 1 add ne and {
                    pixs i cols mul j add mmat cwpos get put
                    /cwpos cwpos 1 add def
                } if
            } for
        } if
    } for

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx cols
    /pixy rows
    /height rows 2 mul 72 div
    /width cols 2 mul 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /datamatrix dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER datamatrix--

% --BEGIN ENCODER datamatrixrectangular--
% --REQUIRES preamble raiseerror renmatrix datamatrix--
% --DESC: Data Matrix Rectangular
% --EXAM: 1234
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp datamatrixrectangular 0.0 2019110800 50540 53857
%%BeginData:         45 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /datamatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/datamatrixrectangular {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Get the result of encoding with datamatrix with format=rectangle
    options (dontdraw) true put
    options (format) (rectangle) put

    /args barcode options //datamatrix exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /datamatrixrectangular dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER datamatrixrectangular--

% --BEGIN ENCODER datamatrixrectangularextension--
% --REQUIRES preamble raiseerror renmatrix datamatrix--
% --DESC: Data Matrix Rectangular Extension
% --EXAM: 1234
% --EXOP: version=8x96
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp datamatrixrectangularextension 0.0 2019110800 51423 54731
%%BeginData:         55 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /datamatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/datamatrixrectangularextension {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def

    /dmre false def
    /dindmre false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Get the result of encoding with datamatrix
    options (dontdraw) true put
    options (format) (rectangle) put

    dindmre dmre or not {  % Default is (ISO) DMRE
        options (dmre) true put
    } {  % Otherwise enable formats as given
        options (dmre) dmre put        % ISO
        options (dindmre) dindmre put  % DIN
    } ifelse

    /args barcode options //datamatrix exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /datamatrixrectangularextension dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER datamatrixrectangularextension--

% --BEGIN ENCODER mailmark--
% --REQUIRES preamble raiseerror renmatrix datamatrix--
% --DESC: Royal Mail Mailmark
% --EXAM: JGB 012100123412345678AB19XY1A 0             www.xyz.com
% --EXOP: type=29
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp mailmark 0.0 2019110800 56278 59663
%%BeginData:         90 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /datamatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/mailmark {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /type (unset) def  % 7, 9 or 29
    /parse false def
    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    % Map the given type to a format and version of Data Matrix
    <<
        (7)  (24x24)
        (9)  (32x32)
        (29) (16x48)
    >> /type load get /version exch def

    <<
        (7)  (square)
        (9)  (square)
        (29) (rectangle)
    >> /type load get /format exch def

    % Validate the input
    barcode length 45 lt {
        /bwipp.mailmarkBadLength (Royal Mail Mailmark must contain at least 45 characters of Mailmark formatted data, including any required space padding) //raiseerror exec
    } if
    barcode 0 4 getinterval (JGB ) ne {
        /bwipp.mailmarkBadIndicator (Royal Mail Mailmark must begin with JGB<space> identifier) //raiseerror exec
    } if

    % Get the result of encoding with datamatrix
    options (dontdraw) true put
    options (version) version put
    options (format) format put
    options (mailmark) true put
    /args barcode options //datamatrix exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /mailmark dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER mailmark--

% --BEGIN ENCODER qrcode--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: QR Code
% --EXAM: http://goo.gl/0bis
% --EXOP: eclevel=M
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp qrcode 0.0 2019110800 247241 279592
%%BeginData:       1030 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/qrcode {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /format (full) def     % full or micro or any
    /version (unset) def   % 1-40 or M1-M4
    /eclevel (unset) def   % L, M, Q or H
    /parse false def
    /parsefnc false def
    /mask -1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /mask mask cvi def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Convert input into bytes accounting for FNC characters
    /fn1 -1 def
    /fncvals <<
        (FNC1) fn1
    >> def
    /msg barlen array def
    /i 0 def /j 0 def {
        i barlen eq {exit} if
        /char barcode i get def
        parsefnc char 94 eq and i barlen 4 sub lt and {
            barcode i 1 add get 94 ne {
                /char fncvals barcode i 1 add 4 getinterval get def
                /i i 4 add def
            } {
                /i i 1 add def
            } ifelse
        } if
        msg j char put
        /i i 1 add def
        /j j 1 add def
    } loop
    /msg msg 0 j getinterval def
    /msglen msg length def

    % If FNC1 in first position then escape % as %%
    /fnc1first false def
    msglen 0 gt {
        msg 0 get fn1 eq {
            /fnc1first true def
            /msg [ msg 1 msglen 1 sub getinterval { dup 37 eq {dup} if } forall ] def
            /msglen msg length def
        } if
    } if

    % Default error correction level
    eclevel (unset) eq {/eclevel format (full) eq {(M)} {(L)} ifelse def} if

    % Convert from input into message bitstream
    /N 0 def  /A 1 def  /B 2 def  /K 3 def

    /Nexcl <<
       [
           16#30 1 16#39 {} for
       ] {-1} forall
    >> def

    /Aexcl <<
        [
            16#20 16#24 16#25 16#2A 16#2B 16#2D 16#2E 16#2F 16#3A
            16#41 1 16#5A {} for
            fn1
        ] {-1} forall
    >> def

    /Bexcl <<
        [
            16#00 1 16#1F {} for
            16#21 16#22 16#23 16#26 16#27 16#28 16#29 16#2C
            16#3B 1 16#40 {} for
            16#5B 1 16#7F {} for
            16#A0 1 16#DF {} for
        ] {-1} forall
    >> def

    /Kexcl <<
        [
            16#81 1 16#9F {} for
            16#E0 1 16#EB {} for
        ] {-1} forall
    >> def

    /mids [  % N  A  B  K
      [ (0001) (0010) (0100) (1000) ]  %  1-9
      [ (0001) (0010) (0100) (1000) ]  % 10-26
      [ (0001) (0010) (0100) (1000) ]  % 27-40
      [     ()   -1     -1     -1   ]  % M1
      [    (0)    (1)   -1     -1   ]  % M2
      [   (00)   (01)   (10)   (11) ]  % M3
      [  (000)  (001)  (010)  (011) ]  % M4
    ] def

    /cclens [  % N  A  B  K
      [ 10  9  8  8 ]  %  1-9
      [ 12 11 16 10 ]  % 10-26
      [ 14 13 16 12 ]  % 27-40
      [  3 -1 -1 -1 ]  % M1
      [  4  3 -1 -1 ]  % M2
      [  5  4  4  3 ]  % M3
      [  6  5  5  4 ]  % M4
    ] def

    /termlens [ 4 4 4 3 5 7 9 ] def

    % Encoding functions
    /tobin {
        string dup length 1 sub 0 exch 1 exch {1 index exch 48 put} for
        dup 3 -1 roll 2 2 index length string cvrs dup length 2 index length exch sub exch putinterval
    } bind def

    % Alphanumeric character to value map
    /charmap (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:) def
    /charvals 44 dict def
    0 1 44 {dup charmap exch get exch charvals 3 1 roll put} for

    /encA {
        /in exch def
        fnc1first {  % FNC1 as %
            /in [ in { dup -1 eq {pop 37} if } forall ] def
        } if
        /out in length 11 mul 2 idiv 1 add string def
        /k 0 def /m 0 def {
            k in length eq {exit} if
            k in length 1 sub lt {
                charvals in k get get 45 mul charvals in k 1 add get get add 11 tobin
                /k k 2 add def
            } {  % Final character
                charvals in k get get 6 tobin
                /k k 1 add def
            } ifelse
            dup out exch m exch putinterval
            length m add /m exch def
        } loop
        out 0 m getinterval
    } bind def

    /encN {
        /in exch def
        /out in length 10 mul 3 idiv 1 add string def
        /k 0 def /m 0 def {
            k in length eq {exit} if
            k in length 2 sub lt {
                in k 3 getinterval 0 exch {exch 10 mul 48 sub add} forall 10 tobin
                /k k 3 add def
            } {
                k in length 2 sub eq {  % Two final digits
                    in k 2 getinterval 0 exch {exch 10 mul 48 sub add} forall 7 tobin
                    /k k 2 add def
                } {  % One final digit
                    in k 1 getinterval 0 exch {exch 10 mul 48 sub add} forall 4 tobin
                    /k k 1 add def
                } ifelse
            } ifelse
            dup out exch m exch putinterval
            length m add /m exch def
        } loop
        out 0 m getinterval
    } bind def

    /encB {
        /in exch def
        fnc1first {  % FNC1 as GS
            /in [ in { dup -1 eq {pop 29} if } forall ] def
        } if
        /out in length 8 mul string def
        0 1 in length 1 sub {
            /k exch def
            in k get cvi 8 tobin
            out k 8 mul 3 -1 roll putinterval
        } for
        out
    } bind def

    /encK {
        /in exch def
        /out in length 2 idiv 13 mul string def
        /k 0 def /m 0 def {
            k in length eq {exit} if
            in k get 256 mul in k 1 add get add
            dup 16#E040 lt {16#8140} {16#C140} ifelse sub
            dup -8 bitshift 16#C0 mul exch 16#00FF and add
            13 tobin dup out exch m exch putinterval
            length m add /m exch def
            /k k 2 add def
        } loop
        out
    } bind def

    /encfuncs [ /encN /encA /encB /encK ] def

    /addtobits {
        dup bits j 3 -1 roll putinterval
        length j add /j exch def
    } bind def

    /numNs [ msglen {0} repeat 0 ] def
    /numAs [ msglen {0} repeat 0 ] def
    /numBs [ msglen {0} repeat 0 ] def
    /numKs [ msglen {0} repeat -1 ] def
    /nextNs [ msglen {0} repeat 9999 ] def
    /nextBs [ msglen {0} repeat 9999 ] def
    /nextAs [ msglen {0} repeat 9999 ] def
    /nextKs [ msglen {0} repeat 9999 ] def
    msglen 1 sub -1 0 {
        /i exch def
        /barchar msg i get def
        Kexcl barchar known {
            nextKs i 0 put
            numKs i numKs i 1 add get 1 add put
        } {
            nextKs i nextKs i 1 add get 1 add put
        } ifelse
        Nexcl barchar known {
            nextNs i 0 put
            numNs i numNs i 1 add get 1 add put
        } {
            nextNs i nextNs i 1 add get 1 add put
        } ifelse
        Bexcl barchar known {
            nextBs i 0 put
            numBs i numBs i 1 add get 1 add put
        } {
            nextBs i nextBs i 1 add get 1 add put
        } ifelse
        Aexcl barchar known {
            nextAs i 0 put
            numAs i numAs i 1 add get 1 add put
        } {
            nextAs i nextAs i 1 add get 1 add put
        } ifelse
    } for
    /numKs [ numKs {1 add 2 idiv} forall ] def

    /KbeforeB {numK exch ver get ge nextBs numK 2 mul i add get 0 eq and} bind def
    /KbeforeA {numK exch ver get ge nextAs numK 2 mul i add get 0 eq and} bind def
    /KbeforeN {numK exch ver get ge nextNs numK 2 mul i add get 0 eq and} bind def
    /KbeforeE {numK exch ver get ge numK 2 mul i add msglen eq and} bind def
    /AbeforeK {numA exch ver get ge nextKs numA i add get 0 eq and} bind def
    /AbeforeB {numA exch ver get ge nextBs numA i add get 0 eq and} bind def
    /AbeforeN {numA exch ver get ge nextNs numA i add get 0 eq and} bind def
    /AbeforeE {numA exch ver get ge numA i add msglen eq and} bind def
    /NbeforeK {numN exch ver get ge nextKs numN i add get 0 eq and} bind def
    /NbeforeB {numN exch ver get ge nextBs numN i add get 0 eq and} bind def
    /NbeforeA {numN exch ver get ge nextAs numN i add get 0 eq and} bind def
    /NbeforeE {numN exch ver get ge numN i add msglen eq and} bind def

    % Encode unterminated bitsream for each version group separately
    /msgbits [-1 -1 -1 -1 -1 -1 -1] def
    /v1to9 0 def  /v10to26 1 def  /v27to40 2 def  /vM1 3 def  /vM2 4 def  /vM3 5 def  /vM4 6 def
    /e 10000 def
    [v1to9 v10to26 v27to40 vM1 vM2 vM3 vM4] {
        /ver exch def

        % Derive optimal sequence
        /mode -1 def /seq [] def /i 0 def {
            i msglen ge {exit} if
            /numK numKs i get def
            /numB numBs i get def
            /numA numAs i get def
            /numN numNs i get def
            ver vM1 eq numA 1 ge and {/seq -1 def exit} if
            ver vM1 eq numB 1 ge and {/seq -1 def exit} if
            ver vM1 eq numK 1 ge and {/seq -1 def exit} if
            ver vM2 eq numB 1 ge and {/seq -1 def exit} if
            ver vM2 eq numK 1 ge and {/seq -1 def exit} if
            {  % common exit
                mode -1 eq {  % Set initial mode
                    [ 1  1  1  e  e  1  1] KbeforeA {K exit} if
                    [ 1  1  1  e  e  1  1] KbeforeN {K exit} if
                    [ 5  5  6  e  e  2  3] KbeforeB {K exit} if
                    [ 1  1  1  e  e  1  1] KbeforeE {K exit} if
                    numK 1 ge {B exit} if
                    [ 6  7  8  e  e  3  4] AbeforeB {A exit} if
                    [ 1  1  1  e  1  1  1] AbeforeE {A exit} if
                    numA 1 ge {
                        ver vM2 ne {B} {A} ifelse exit
                    } if
                    [ 4  4  5  e  e  2  3] NbeforeB {N exit} if
                    [ 1  1  1  e  e  1  1] NbeforeB {B exit} if
                    [ 7  8  9  e  3  4  5] NbeforeA {N exit} if
                    [ 1  1  1  e  1  1  1] NbeforeA {A exit} if
                    numN 1 ge {N exit} if
                    B exit
                } if
                mode B eq {
                    [ 9 12 13  e  e  4  5] KbeforeB {K exit} if
                    [ 9 10 12  e  e  4  5] KbeforeA {K exit} if
                    [ 9 10 11  e  e  5  6] KbeforeN {K exit} if
                    [ 4  5  6  e  e  2  3] KbeforeE {K exit} if
                    [11 12 14  e  e  5  7] AbeforeK {A exit} if
                    [11 15 16  e  e  6  7] AbeforeB {A exit} if
                    [12 13 15  e  e  6  8] AbeforeN {A exit} if
                    [ 6  7  8  e  e  3  4] AbeforeE {A exit} if
                    [ 6  7  8  e  e  3  4] NbeforeK {N exit} if
                    [ 6  8  9  e  e  3  4] NbeforeB {N exit} if
                    [ 6  7  8  e  e  3  4] NbeforeA {N exit} if
                    [ 3  4  5  e  e  2  3] NbeforeE {N exit} if
                    B exit
                } if
                mode A eq {
                    numK 1 ge {K exit} if
                    numB 1 ge {B exit} if
                    [13 15 17  e  5  7  9] NbeforeA {N exit} if
                    [13 17 18  e  e  7  9] NbeforeB {N exit} if
                    [ 7  8  9  e  3  4  5] NbeforeE {N exit} if
                    numA 1 ge numN 1 ge or {A exit} if
                    B exit
                } if
                mode N eq {
                    numK 1 ge {K exit} if
                    numB 1 ge {B exit} if
                    numA 1 ge {A exit} if
                    numN 1 ge {N exit} if
                    B exit
                } if
                mode K eq {
                    numB 1 ge {B exit} if
                    numA 1 ge {A exit} if
                    numN 1 ge {N exit} if
                    numK 1 ge {K exit} if
                    B exit
                } if
            } loop
            dup K eq fnc1first and {pop B} if  % No kanji with fnc1first
            dup mode eq {  % Same mode encode directly
                pop
                /dat msg i mode K eq {2} {1} ifelse getinterval def
                /seq [
                    seq aload pop
                    [ exch aload pop dat aload pop ]
                ] def
            } {  % Change mode
                /mode exch def
                mode K eq {K msg i numK 2 mul getinterval} if
                mode B eq {B msg i numB getinterval} if
                mode A eq {A msg i numA getinterval} if
                mode N eq {N msg i numN getinterval} if
                /dat exch def /sw exch def
                /seq [ seq aload pop sw dat ] def
            } ifelse
            /i i dat length add def
        } loop

        % Encode the sequence
        {  % common exit
            seq -1 eq {exit} if  % Sequence not available
            /bits 23648 string def
            /j 0 def
            fnc1first {(0101) addtobits} if
            /abort false def
            0 2 seq length 1 sub {
                /i exch def
                /mode seq i get def
                mids ver get mode get addtobits
                /cclen cclens ver get mode get def
                /chars seq i 1 add get def
                chars length 2 cclen exp cvi ge {  % Too many characters for cc indicator
                    /abort true def exit
                } if
                chars length mode K eq {2 idiv} if cclen tobin addtobits
                chars encfuncs mode get load exec addtobits
            } for
            abort {exit} if
            /bits bits 0 j getinterval def
            msgbits ver bits put
            exit
        } loop
    } forall

    % Lookup the most appropriate symbol specification
    /metrics [
        % format   vers  vergrp  size align modules    error codewords        error correction blocks
        %                                              L    M    Q    H       L1 L2 M1 M2 Q1 Q2 H1 H2
        [ (micro)  (M1)  vM1       11  98 99     36  [   2   99   99   99 ]  [  1  0 -1 -1 -1 -1 -1 -1 ] ]
        [ (micro)  (M2)  vM2       13  98 99     80  [   5    6   99   99 ]  [  1  0  1  0 -1 -1 -1 -1 ] ]
        [ (micro)  (M3)  vM3       15  98 99    132  [   6    8   99   99 ]  [  1  0  1  0 -1 -1 -1 -1 ] ]
        [ (micro)  (M4)  vM4       17  98 99    192  [   8   10   14   99 ]  [  1  0  1  0  1  0 -1 -1 ] ]
        [ (full)   (1)   v1to9     21  98 99    208  [   7   10   13   17 ]  [  1  0  1  0  1  0  1  0 ] ]
        [ (full)   (2)   v1to9     25  18 99    359  [  10   16   22   28 ]  [  1  0  1  0  1  0  1  0 ] ]
        [ (full)   (3)   v1to9     29  22 99    567  [  15   26   36   44 ]  [  1  0  1  0  2  0  2  0 ] ]
        [ (full)   (4)   v1to9     33  26 99    807  [  20   36   52   64 ]  [  1  0  2  0  2  0  4  0 ] ]
        [ (full)   (5)   v1to9     37  30 99   1079  [  26   48   72   88 ]  [  1  0  2  0  2  2  2  2 ] ]
        [ (full)   (6)   v1to9     41  34 99   1383  [  36   64   96  112 ]  [  2  0  4  0  4  0  4  0 ] ]
        [ (full)   (7)   v1to9     45  22 38   1568  [  40   72  108  130 ]  [  2  0  4  0  2  4  4  1 ] ]
        [ (full)   (8)   v1to9     49  24 42   1936  [  48   88  132  156 ]  [  2  0  2  2  4  2  4  2 ] ]
        [ (full)   (9)   v1to9     53  26 46   2336  [  60  110  160  192 ]  [  2  0  3  2  4  4  4  4 ] ]
        [ (full)   (10)  v10to26   57  28 50   2768  [  72  130  192  224 ]  [  2  2  4  1  6  2  6  2 ] ]
        [ (full)   (11)  v10to26   61  30 54   3232  [  80  150  224  264 ]  [  4  0  1  4  4  4  3  8 ] ]
        [ (full)   (12)  v10to26   65  32 58   3728  [  96  176  260  308 ]  [  2  2  6  2  4  6  7  4 ] ]
        [ (full)   (13)  v10to26   69  34 62   4256  [ 104  198  288  352 ]  [  4  0  8  1  8  4 12  4 ] ]
        [ (full)   (14)  v10to26   73  26 46   4651  [ 120  216  320  384 ]  [  3  1  4  5 11  5 11  5 ] ]
        [ (full)   (15)  v10to26   77  26 48   5243  [ 132  240  360  432 ]  [  5  1  5  5  5  7 11  7 ] ]
        [ (full)   (16)  v10to26   81  26 50   5867  [ 144  280  408  480 ]  [  5  1  7  3 15  2  3 13 ] ]
        [ (full)   (17)  v10to26   85  30 54   6523  [ 168  308  448  532 ]  [  1  5 10  1  1 15  2 17 ] ]
        [ (full)   (18)  v10to26   89  30 56   7211  [ 180  338  504  588 ]  [  5  1  9  4 17  1  2 19 ] ]
        [ (full)   (19)  v10to26   93  30 58   7931  [ 196  364  546  650 ]  [  3  4  3 11 17  4  9 16 ] ]
        [ (full)   (20)  v10to26   97  34 62   8683  [ 224  416  600  700 ]  [  3  5  3 13 15  5 15 10 ] ]
        [ (full)   (21)  v10to26  101  28 50   9252  [ 224  442  644  750 ]  [  4  4 17  0 17  6 19  6 ] ]
        [ (full)   (22)  v10to26  105  26 50  10068  [ 252  476  690  816 ]  [  2  7 17  0  7 16 34  0 ] ]
        [ (full)   (23)  v10to26  109  30 54  10916  [ 270  504  750  900 ]  [  4  5  4 14 11 14 16 14 ] ]
        [ (full)   (24)  v10to26  113  28 54  11796  [ 300  560  810  960 ]  [  6  4  6 14 11 16 30  2 ] ]
        [ (full)   (25)  v10to26  117  32 58  12708  [ 312  588  870 1050 ]  [  8  4  8 13  7 22 22 13 ] ]
        [ (full)   (26)  v10to26  121  30 58  13652  [ 336  644  952 1110 ]  [ 10  2 19  4 28  6 33  4 ] ]
        [ (full)   (27)  v27to40  125  34 62  14628  [ 360  700 1020 1200 ]  [  8  4 22  3  8 26 12 28 ] ]
        [ (full)   (28)  v27to40  129  26 50  15371  [ 390  728 1050 1260 ]  [  3 10  3 23  4 31 11 31 ] ]
        [ (full)   (29)  v27to40  133  30 54  16411  [ 420  784 1140 1350 ]  [  7  7 21  7  1 37 19 26 ] ]
        [ (full)   (30)  v27to40  137  26 52  17483  [ 450  812 1200 1440 ]  [  5 10 19 10 15 25 23 25 ] ]
        [ (full)   (31)  v27to40  141  30 56  18587  [ 480  868 1290 1530 ]  [ 13  3  2 29 42  1 23 28 ] ]
        [ (full)   (32)  v27to40  145  34 60  19723  [ 510  924 1350 1620 ]  [ 17  0 10 23 10 35 19 35 ] ]
        [ (full)   (33)  v27to40  149  30 58  20891  [ 540  980 1440 1710 ]  [ 17  1 14 21 29 19 11 46 ] ]
        [ (full)   (34)  v27to40  153  34 62  22091  [ 570 1036 1530 1800 ]  [ 13  6 14 23 44  7 59  1 ] ]
        [ (full)   (35)  v27to40  157  30 54  23008  [ 570 1064 1590 1890 ]  [ 12  7 12 26 39 14 22 41 ] ]
        [ (full)   (36)  v27to40  161  24 50  24272  [ 600 1120 1680 1980 ]  [  6 14  6 34 46 10  2 64 ] ]
        [ (full)   (37)  v27to40  165  28 54  25568  [ 630 1204 1770 2100 ]  [ 17  4 29 14 49 10 24 46 ] ]
        [ (full)   (38)  v27to40  169  32 58  26896  [ 660 1260 1860 2220 ]  [  4 18 13 32 48 14 42 32 ] ]
        [ (full)   (39)  v27to40  173  26 54  28256  [ 720 1316 1950 2310 ]  [ 20  4 40  7 43 22 10 67 ] ]
        [ (full)   (40)  v27to40  177  30 58  29648  [ 750 1372 2040 2430 ]  [ 19  6 18 31 34 34 20 61 ] ]
    ] def
    /eclval (LMQH) eclevel search pop length exch pop exch pop def
    0 1 43 {
        /i exch def
        /m metrics i get def
        /frmt m 0 get def                             % Format of the symbol
        /vers m 1 get def                             % Version of symbol
        /vergrp m 2 get def                           % Version group
        /size m 3 get def                             % Length of side
        /asp2 m 4 get def                             % Position of second alignment symbol
        /asp3 m 5 get def                             % Position of third alignment symbol
        /nmod m 6 get def                             % Number of modules
        /ncws nmod 8 idiv def                         % Total number of codewords
        /rbit nmod 8 mod def                          % Number of remainder bits
        /lc4b false def                               % Last data codeword is 4 bits long
        size 11 eq size 15 eq or {                    % Adjustments for M1 and M3 symbols
            /ncws ncws 1 add def
            /rbit 0 def
            /lc4b true def
        } if
        /ecws m 7 get eclval get def                  % Number of error correction codewords
        /dcws ncws ecws sub def                       % Number of data codewords
        /dmod dcws 8 mul lc4b {4} {0} ifelse sub def  % Number of data modules
        /ecb1 m 8 get eclval 2 mul get def            % First error correction blocks
        /ecb2 m 8 get eclval 2 mul 1 add get def      % Second error correction blocks
        /okay true def
        format (any) ne format frmt ne and {/okay false def} if  % The format must match that supplied
        frmt (micro) eq fnc1first and {/okay false def} if
        version (unset) ne version vers ne and {/okay false def} if  % The version must match that supplied
        ecb1 -1 eq ecb2 -1 eq or {/okay false def} if % Error correction level must be valid
        /verbits msgbits vergrp get def
        verbits -1 eq {                               % Bitstream must be available
            /okay false def
        } {
            verbits length dmod gt {/okay false def} if  % and fit into data modules
        } ifelse
        /term (000000000) 0 termlens vergrp get getinterval def
        okay {exit} if
    } for

    okay not {
        /bwipp.qrcodeNoValidSymbol (No valid symbol available) //raiseerror exec
    } if

    /format frmt def
    /version vers def
    /msgbits verbits def
    /dcpb dcws ecb1 ecb2 add idiv def                 % Base data codewords per block
    /ecpb ncws ecb1 ecb2 add idiv dcpb sub def        % Error correction codewords per block

    % Complete the message bits by adding the terminator, truncated if neccessary
    /term term 0 dmod msgbits length sub term length 2 copy gt {exch} if pop getinterval def
    msgbits length term length add string
    dup 0 msgbits putinterval
    dup msgbits length term putinterval
    /msgbits exch def

    % Expand the message bits by adding padding as necessary
    /pad dmod string def
    0 1 pad length 1 sub {pad exch 48 put} for
    pad 0 msgbits putinterval
    /padstrs [ (11101100) (00010001) ] def
    /padnum 0 def
    msgbits length 8 div ceiling 8 mul cvi 8 dmod lc4b {5} {1} ifelse sub {
        pad exch padstrs padnum get putinterval
        /padnum padnum 1 add 2 mod def
    } for

    % Evaluate the padded message into codewords
    /cws dcws array def
    0 1 cws length 1 sub {
        /c exch def
        /bpcw 8 def
        lc4b c cws length 1 sub eq and {/bpcw 4 def} if
        /cwb pad c 8 mul bpcw getinterval def
        /cw 0 def
        0 1 bpcw 1 sub {
            /i exch def
            /cw cw 2 bpcw i sub 1 sub exp cvi cwb i get 48 sub mul add def
        } for
        cws c cw put
    } for

    % Short final data byte in M1 and M3 symbols has high-order value
    lc4b {cws cws length 1 sub 2 copy get 4 bitshift put} if

    % Calculate the log and anti-log tables
    /rsalog [ 1 255 { dup 2 mul dup 256 ge {285 xor} if } repeat ] def
    /rslog 256 array def
    1 1 255 {dup rsalog exch get exch rslog 3 1 roll put} for

    % Function to calculate the product in the field
    /rsprod {
        2 copy 0 ne exch 0 ne and {
            rslog exch get exch rslog exch get add 255 mod rsalog exch get
        } {
            pop pop 0
        } ifelse
    } bind def

    % Generate the coefficients for the Reed-Solomon algorithm
    /coeffs [ 1 ecpb {0} repeat ] def
    0 1 ecpb 1 sub {
        /i exch def
        coeffs i 1 add coeffs i get put
        i -1 1 {
            /j exch def
            coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod xor put
        } for
        coeffs 0 coeffs 0 get rsalog i get rsprod put
    } for
    /coeffs coeffs 0 coeffs length 1 sub getinterval def

    % Reed-Solomon algorithm to derive the error correction codewords
    /rscodes {
        /rscws exch def
        /rsnd rscws length def
        /rscws [ rscws {} forall ecpb {0} repeat ] def
        0 1 rsnd 1 sub {
            /m exch def
            /k rscws m get def
            0 1 ecpb 1 sub {
                /j exch def
                rscws m j add 1 add coeffs ecpb j sub 1 sub get k rsprod rscws m j add 1 add get xor put
            } for
        } for
        rscws rsnd ecpb getinterval
    } bind def

    % Divide codewords into two groups of blocks and calculate the error correction codewords
    /dcwsb ecb1 ecb2 add array def
    /ecwsb ecb1 ecb2 add array def
    0 1 ecb1 1 sub {  % First group of blocks has smaller number of data codewords
        /i exch def
        dcwsb i cws i dcpb mul dcpb getinterval put
        ecwsb i dcwsb i get rscodes put
    } for
    0 1 ecb2 1 sub {  % Second group of blocks has larger number of data codewords
        /i exch def
        dcwsb ecb1 i add cws ecb1 dcpb mul i dcpb 1 add mul add dcpb 1 add getinterval put
        ecwsb ecb1 i add dcwsb ecb1 i add get rscodes put
    } for

    % Reassemble the codewords
    /cws ncws array def
    /cw 0 def
    0 1 dcpb {  % Interleave the data codeword blocks
        /i exch def
        0 1 ecb1 ecb2 add 1 sub {
            /j exch def
            i dcwsb j get length lt {  % Ignore the end of short blocks
                cws cw dcwsb j get i get put
                /cw cw 1 add def
            } if
        } for
    } for
    0 1 ecpb 1 sub {  % Interleave the error codeword blocks
        /i exch def
        0 1 ecb1 ecb2 add 1 sub {
            /j exch def
            cws cw ecwsb j get i get put
            /cw cw 1 add def
        } for
    } for

    % Extend codewords by one if there are remainder bits
    rbit 0 gt {
        /pad cws length 1 add array def
        pad 0 cws putinterval
        pad pad length 1 sub 0 put
        /cws pad def
    } if

    % Fixups for the short final data byte in M1 and M3 symbols
    lc4b {
	cws dcws 1 sub 2 copy get -4 bitshift put
        dcws 1 sub 1 ncws 2 sub {
            /i exch def
            cws i cws i get 15 and 4 bitshift put
            cws i cws i 1 add get -4 bitshift 15 and cws i get or put
        } for
        cws ncws 1 sub cws ncws 1 sub get 15 and 4 bitshift put
    } if

    % Create the bitmap
    /pixs [ size size mul {-1} repeat ] def
    /qmv {size mul add} bind def

    % Finder patterns
    /fpat [
        [ 1 1 1 1 1 1 1 0 ]
        [ 1 0 0 0 0 0 1 0 ]
        [ 1 0 1 1 1 0 1 0 ]
        [ 1 0 1 1 1 0 1 0 ]
        [ 1 0 1 1 1 0 1 0 ]
        [ 1 0 0 0 0 0 1 0 ]
        [ 1 1 1 1 1 1 1 0 ]
        [ 0 0 0 0 0 0 0 0 ]
    ] def
    0 1 fpat length 1 sub {
      /y exch def
      0 1 fpat 0 get length 1 sub {
        /x exch def
        /fpb fpat y get x get def
        pixs x y qmv fpb put
        format (full) eq {
            pixs size x sub 1 sub y qmv fpb put
            pixs x size y sub 1 sub qmv fpb put
        } if
      } for
    } for

    % Alignment patterns
    /algnpat [
        [ 1 1 1 1 1 ]
        [ 1 0 0 0 1 ]
        [ 1 0 1 0 1 ]
        [ 1 0 0 0 1 ]
        [ 1 1 1 1 1 ]
    ] def
    /putalgnpat {
        /py exch def
        /px exch def
        0 1 4 {
            /pb exch def
            0 1 4 {
                /pa exch def
                pixs px pa add py pb add qmv algnpat pb get pa get put
            } for
        } for
    } bind def
    asp2 2 sub asp3 asp2 sub size 13 sub {
        /i exch def
        i 4 putalgnpat
        4 i putalgnpat
    } for
    asp2 2 sub asp3 asp2 sub size 9 sub {
        /x exch def
        asp2 2 sub asp3 asp2 sub size 9 sub {
            /y exch def
            x y putalgnpat
        } for
    } for

    % Timing patterns
    format (full) eq {
        8 1 size 9 sub {
            /i exch def
            pixs i 6 qmv i 1 add 2 mod put
            pixs 6 i qmv i 1 add 2 mod put
        } for
    } {
        8 1 size 1 sub {
            /i exch def
            pixs i 0 qmv i 1 add 2 mod put
            pixs 0 i qmv i 1 add 2 mod put
        } for
    } ifelse

    % Format information modules
    format (full) eq {
        /formatmap [
            [ [ 0 8 ] [ 8 size 1 sub ] ]  [ [ 1 8 ] [ 8 size 2 sub ] ]  [ [ 2 8 ] [ 8 size 3 sub ] ]
            [ [ 3 8 ] [ 8 size 4 sub ] ]  [ [ 4 8 ] [ 8 size 5 sub ] ]  [ [ 5 8 ] [ 8 size 6 sub ] ]
            [ [ 7 8 ] [ 8 size 7 sub ] ]  [ [ 8 8 ] [ size 8 sub 8 ] ]  [ [ 8 7 ] [ size 7 sub 8 ] ]
            [ [ 8 5 ] [ size 6 sub 8 ] ]  [ [ 8 4 ] [ size 5 sub 8 ] ]  [ [ 8 3 ] [ size 4 sub 8 ] ]
            [ [ 8 2 ] [ size 3 sub 8 ] ]  [ [ 8 1 ] [ size 2 sub 8 ] ]  [ [ 8 0 ] [ size 1 sub 8 ] ]
        ] def
    } {
        /formatmap [
            [ [ 1 8 ] ]  [ [ 2 8 ] ]  [ [ 3 8 ] ]  [ [ 4 8 ] ]  [ [ 5 8 ] ]
            [ [ 6 8 ] ]  [ [ 7 8 ] ]  [ [ 8 8 ] ]  [ [ 8 7 ] ]  [ [ 8 6 ] ]
            [ [ 8 5 ] ]  [ [ 8 4 ] ]  [ [ 8 3 ] ]  [ [ 8 2 ] ]  [ [ 8 1 ] ]
        ] def
    } ifelse
    formatmap {
        { {} forall qmv pixs exch 0 put } forall
    } forall

    % Version information modules
    size 45 ge {
        /versionmap [
            [ [ size  9 sub 5 ] [ 5 size  9 sub ] ]  [ [ size 10 sub 5 ] [ 5 size 10 sub ] ]
            [ [ size 11 sub 5 ] [ 5 size 11 sub ] ]  [ [ size  9 sub 4 ] [ 4 size  9 sub ] ]
            [ [ size 10 sub 4 ] [ 4 size 10 sub ] ]  [ [ size 11 sub 4 ] [ 4 size 11 sub ] ]
            [ [ size  9 sub 3 ] [ 3 size  9 sub ] ]  [ [ size 10 sub 3 ] [ 3 size 10 sub ] ]
            [ [ size 11 sub 3 ] [ 3 size 11 sub ] ]  [ [ size  9 sub 2 ] [ 2 size  9 sub ] ]
            [ [ size 10 sub 2 ] [ 2 size 10 sub ] ]  [ [ size 11 sub 2 ] [ 2 size 11 sub ] ]
            [ [ size  9 sub 1 ] [ 1 size  9 sub ] ]  [ [ size 10 sub 1 ] [ 1 size 10 sub ] ]
            [ [ size 11 sub 1 ] [ 1 size 11 sub ] ]  [ [ size  9 sub 0 ] [ 0 size  9 sub ] ]
            [ [ size 10 sub 0 ] [ 0 size 10 sub ] ]  [ [ size 11 sub 0 ] [ 0 size 11 sub ] ]
        ] def
    } {
        /versionmap [] def
    } ifelse
    versionmap {
        { {} forall qmv pixs exch 0 put } forall
    } forall

    % Reserve the solitary dark module in full symbols
    format (full) eq {
        pixs 8 size 8 sub qmv 0 put
    } if

    % Calculate the mask patterns
    format (full) eq {
        /maskfuncs [
            {add 2 mod} bind
            {exch pop 2 mod} bind
            {pop 3 mod} bind
            {add 3 mod} bind
            {2 idiv exch 3 idiv add 2 mod} bind
            {mul dup 2 mod exch 3 mod add} bind
            {mul dup 2 mod exch 3 mod add 2 mod} bind
            {2 copy mul 3 mod 3 1 roll add 2 mod add 2 mod} bind
        ] def
    } {
        /maskfuncs [
            {exch pop 2 mod} bind
            {2 idiv exch 3 idiv add 2 mod} bind
            {mul dup 2 mod exch 3 mod add 2 mod} bind
            {2 copy mul 3 mod 3 1 roll add 2 mod add 2 mod} bind
        ] def
    } ifelse
    mask -1 ne {  % User specifies a mask
        /maskfuncs [maskfuncs mask 1 sub get] def
        /bestmaskval mask 1 sub def
    } if
    /masks maskfuncs length array def
    0 1 masks length 1 sub {
        /m exch def
        /mask size size mul array def
        0 1 size 1 sub {
            /j exch def
            0 1 size 1 sub {
                /i exch def
                i j maskfuncs m get exec 0 eq
                pixs i j qmv get -1 eq and {1} {0} ifelse
                mask i j qmv 3 -1 roll put
            } for
        } for
        masks m mask put
    } for

    % Walk the symbol placing the bitstream
    /posx size 1 sub def
    /posy size 1 sub def
    /dir -1 def  % -1 is upwards, 1 is downwards
    /col 1 def   % 0 is left bit, 1 is right bit
    /num 0 def
    { % loop
        posx 0 lt {exit} if
        pixs posx posy qmv get -1 eq {
            cws num 8 idiv get 7 num 8 mod sub neg bitshift 1 and
            pixs posx posy qmv 3 -1 roll put
            /num num 1 add def
        } if
        col 1 eq {
            /col 0 def
            /posx posx 1 sub def
        } {
            /col 1 def
            /posx posx 1 add def
            /posy posy dir add def
            posy 0 lt posy size ge or {  % Turn around at top and bottom
                /dir dir -1 mul def
                /posy posy dir add def
                /posx posx 2 sub def
                % Hop over the timing pattern in full size symbols
                format (full) eq posx 6 eq and {/posx posx 1 sub def} if
            } if
        } ifelse
    } loop

    % Evaluate runlength encoded rows or columns in full symbols
    /evalfulln1n3 {
        /scrle exch def
        % Detect runs of 5 or more like modules
        /scr1 0 scrle { dup 5 ge {add 2 sub dup} if pop } forall def
        % Detect 1:1:3:1:1 ratio next to 4 modules of whitespace
        /scr3 0 def
        3 2 scrle length 3 sub {  % Scan odd (dark) runs within bounds
            /j exch def
            scrle j get 3 mod 0 eq {  % Multiple of 3 black modules
                /fact scrle j get 3 idiv def
                scrle j 2 sub 5 getinterval {fact eq} forall and exch pop and and {
                    j 3 eq j 4 add scrle length ge or {  % At either extent of run
                        /scr3 scr3 40 add def
                    } {  % Bounded by dark modules
                        scrle j 3 sub get 4 ge scrle j 3 add get 4 ge or {
                            /scr3 scr3 40 add def
                        } if
                    } ifelse
                } if
            } if
        } for
        scr1 scr3
    } bind def

    % Evaluation algorithm for full symbols
    /evalfull {
        /sym exch def

        /n1 0 def /n2 0 def /n3 0 def
        /rle size 1 add array def
        /lastpairs size array def
        /thispairs size array def
        /sizeadd1 size 1 add def
        0 1 size 1 sub {
            /i exch def

            % Runlength encode (light, dark, light, ...) and evaluate each column
            mark 0 0
            i size dup dup mul 1 sub {
                sym exch get exch 1 index eq {exch 1 add exch} {1 exch} ifelse
            } for
            pop
            rle 0 counttomark 2 sub getinterval astore
            evalfulln1n3 n3 add /n3 exch def n1 add /n1 exch def
            pop

            % Runlength encode (light, dark, light, ...) and evaluate each row
            /symrow sym i size mul size getinterval def
            mark 0 0
            symrow {
                exch 1 index eq {exch 1 add exch} {1 exch} ifelse
            } forall
            pop
            rle 0 counttomark 2 sub getinterval astore
            evalfulln1n3 n3 add /n3 exch def n1 add /n1 exch def
            pop

            % Count and score same coloured blocks
            /lastpairs thispairs /thispairs lastpairs def def
            symrow 0 get 1 eq {0} {1} ifelse
            symrow {exch 1 index add exch} forall
            pop
            thispairs astore pop
            i 0 gt {
                mark
                lastpairs aload pop thispairs aload pop
                n2 size { exch sizeadd1 index add 3 and 0 eq {3 add} if } repeat
                /n2 exch def
                cleartomark
            } if

        } for

        % Score dark/light imbalance
        /dark 0 sym {add} forall def
        /n4 dark 100 mul size dup mul div 50 sub abs 5 div cvi 10 mul def

        n1 n2 add n3 add n4 add
    } bind def

    % Evaluation algorithm for micro symbols
    /evalmicro {
        /sym exch def
        /dkrhs 0 def /dkbot 0 def
        1 1 size 1 sub {
            /i exch def
            /dkrhs dkrhs sym size 1 sub i qmv get add def
            /dkbot dkbot sym i size 1 sub qmv get add def
        } for
        dkrhs dkbot le {
            dkrhs 16 mul dkbot add neg
        } {
            dkbot 16 mul dkrhs add neg
        } ifelse
    } bind def

    % Evaluate the masked symbols to find the most suitable
    /bestscore 999999999 def
    0 1 masks length 1 sub {
        /m exch def
        /masksym size size mul array def
        0 1 size size mul 1 sub {
            /i exch def
            masksym i pixs i get masks m get i get xor put
        } for
        masks length 1 ne {
            format (full) eq {
                masksym evalfull /score exch def
            } {
                masksym evalmicro /score exch def
            } ifelse
            score bestscore lt {
                /bestsym masksym def
                /bestmaskval m def
                /bestscore score def
            } if
        } {
            /bestsym masksym def
        } ifelse
    } for
    /pixs bestsym def

    % Set the solitary dark module in full symbols
    format (full) eq {
        pixs 8 size 8 sub qmv 1 put
    } if

    % Add the format information
    format (full) eq {
        /fmtvals [
            16#5412 16#5125 16#5e7c 16#5b4b 16#45f9 16#40ce 16#4f97 16#4aa0
            16#77c4 16#72f3 16#7daa 16#789d 16#662f 16#6318 16#6c41 16#6976
            16#1689 16#13be 16#1ce7 16#19d0 16#0762 16#0255 16#0d0c 16#083b
            16#355f 16#3068 16#3f31 16#3a06 16#24b4 16#2183 16#2eda 16#2bed
        ] def
        /ecid (MLHQ) eclevel search pop length exch pop exch pop def
        /fmtval fmtvals ecid 3 bitshift bestmaskval add get def
    } {
        /fmtvals [
            16#4445 16#4172 16#4e2b 16#4b1c 16#55ae 16#5099 16#5fc0 16#5af7
            16#6793 16#62a4 16#6dfd 16#68ca 16#7678 16#734f 16#7c16 16#7921
            16#06de 16#03e9 16#0cb0 16#0987 16#1735 16#1202 16#1d5b 16#186c
            16#2508 16#203f 16#2f66 16#2a51 16#34e3 16#31d4 16#3e8d 16#3bba
        ] def
        /symid [ [0] [1 2] [3 4] [5 6 7] ] size 11 sub 2 idiv get eclval get def
        /fmtval fmtvals symid 2 bitshift bestmaskval add get def
    } ifelse
    0 1 formatmap length 1 sub {
        /i exch def
        formatmap i get {
            pixs exch {} forall qmv fmtval 14 i sub neg bitshift 1 and put
        } forall
    } for

    % Add the version information
    size 45 ge {
        /vervals [
            16#07c94 16#085bc 16#09a99 16#0a4d3 16#0bbf6 16#0c762 16#0d847
            16#0e60d 16#0f928 16#10b78 16#1145d 16#12a17 16#13532 16#149a6
            16#15683 16#168c9 16#177ec 16#18ec4 16#191e1 16#1afab 16#1b08e
            16#1cc1a 16#1d33f 16#1ed75 16#1f250 16#209d5 16#216fd 16#228ba
            16#2379f 16#24b0b 16#2542e 16#26a64 16#27541 16#28c69
        ] def
        /verval vervals size 17 sub 4 idiv 7 sub get def
        0 1 versionmap length 1 sub {
            /i exch def
            versionmap i get {
                pixs exch {} forall qmv verval 17 i sub neg bitshift 1 and put
            } forall
        } for
    } if

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx size
    /pixy size
    /height size 2 mul 72 div
    /width size 2 mul 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /qrcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER qrcode--

% --BEGIN ENCODER microqrcode--
% --REQUIRES preamble raiseerror renmatrix qrcode--
% --DESC: Micro QR Code
% --EXAM: 1234
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp microqrcode 0.0 2019110800 50488 53919
%%BeginData:         45 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /qrcode dup /uk.co.terryburton.bwipp findresource put
%psc begin
/microqrcode {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Get the result of encoding with qrcode with format=micro
    options (dontdraw) true put
    options (format) (micro) put

    /args barcode options //qrcode exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /microqrcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER microqrcode--

% --BEGIN ENCODER maxicode--
% --REQUIRES preamble raiseerror renmaximatrix--
% --DESC: MaxiCode
% --EXAM: [)>^03001^02996152382802^029840^029001^0291Z00004951^029UPSN^02906X610^029159^0291234567^0291/1^029^029Y^029634 ALPHA DR^029PITTSBURGH^029PA^029^004
% --EXOP: mode=2 parse
% --RNDR: renmaximatrix
%%BeginResource: uk.co.terryburton.bwipp maxicode 0.0 2019110800 120238 118936
%%BeginData:        566 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmaximatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/maxicode {

    20 dict begin

    /options exch def        % We are given an option string
    /barcode exch def        % We are given a barcode string

    /dontdraw false def
    /mode -1 def
    /sam -1 def
    /parse false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /mode mode cvi def
    /sam sam cvi def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /msg barcode def
    /msglen msg length def

    % Special message handling for modes 2 and 3
    mode 2 eq mode 3 eq or {

        % Normalise messages that begin with a field identifier [)>RS01GSyy
        msg 0 7 getinterval <5b293e1e30311d> eq {
            /fid msg 0 9 getinterval def
            /msg msg 9 msglen 9 sub getinterval def
        } {
            /fid () def
        } ifelse

        % Read the postcode, country code and service code fields seperated by GS
        msg <1d> search pop /pcode exch def
        pop <1d> search pop /ccode exch def
        pop <1d> search pop /scode exch def
        pop /msg exch def

        % Prepend the field identifier
        msg length fid length add string dup
        0 fid putinterval dup
        fid length msg putinterval
        /msg exch def
        /msglen msg length def

    } if

    % Special function characters
    /eci -1 def  /pad -2 def  /ns -3 def
    /la  -4 def  /lb  -5 def
    /sa  -6 def  /sb  -7 def  /sc -8 def  /sd -9 def  /se -10 def
    /sa2 -11 def /sa3 -12 def
    /lkc -13 def /lkd -14 def /lke -15 def
    /pd2 -16 def /pd3 -17 def

    % Character maps for each state
    /charmaps [
        %  A    B    C    D    E
        [  13  (`)  192  224    0 ]  % 0
        [ (A)  (a)  193  225    1 ]  % 1
        [ (B)  (b)  194  226    2 ]  % 2
        [ (C)  (c)  195  227    3 ]  % 3
        [ (D)  (d)  196  228    4 ]  % 4
        [ (E)  (e)  197  229    5 ]  % 5
        [ (F)  (f)  198  230    6 ]  % 6
        [ (G)  (g)  199  231    7 ]  % 7
        [ (H)  (h)  200  232    8 ]  % 8
        [ (I)  (i)  201  233    9 ]  % 9
        [ (J)  (j)  202  234   10 ]  % 10
        [ (K)  (k)  203  235   11 ]  % 11
        [ (L)  (l)  204  236   12 ]  % 12
        [ (M)  (m)  205  237   13 ]  % 13
        [ (N)  (n)  206  238   14 ]  % 14
        [ (O)  (o)  207  239   15 ]  % 15
        [ (P)  (p)  208  240   16 ]  % 16
        [ (Q)  (q)  209  241   17 ]  % 17
        [ (R)  (r)  210  242   18 ]  % 18
        [ (S)  (s)  211  243   19 ]  % 19
        [ (T)  (t)  212  244   20 ]  % 20
        [ (U)  (u)  213  245   21 ]  % 21
        [ (V)  (v)  214  246   22 ]  % 22
        [ (W)  (w)  215  247   23 ]  % 23
        [ (X)  (x)  216  248   24 ]  % 24
        [ (Y)  (y)  217  249   25 ]  % 25
        [ (Z)  (z)  218  250   26 ]  % 26
        [ eci  eci  eci  eci  eci ]  % 27
        [  28   28   28   28  pad ]  % 28
        [  29   29   29   29  pad ]  % 29
        [  30   30   30   30   27 ]  % 30
        [  ns   ns   ns   ns   ns ]  % 31
        [ ( )  ({)  219  251   28 ]  % 32
        [ pad  pad  220  252   29 ]  % 33
        [ (")  (})  221  253   30 ]  % 34
        [ (#)  (~)  222  254   31 ]  % 35
        [ ($)  127  223  255  159 ]  % 36
        [ (%)  (;)  170  161  160 ]  % 37
        [ (&)  (<)  172  168  162 ]  % 38
        [ (')  (=)  177  171  163 ]  % 39
        [  40  (>)  178  175  164 ]  % 40
        [  41  (?)  179  176  165 ]  % 41
        [ (*)  ([)  181  180  166 ]  % 42
        [ (+)   92  185  183  167 ]  % 43
        [ (,)  (])  186  184  169 ]  % 44
        [ (-)  (^)  188  187  173 ]  % 45
        [ (.)  (_)  189  191  174 ]  % 46
        [ (/)  ( )  190  138  182 ]  % 47
        [ (0)  (,)  128  139  149 ]  % 48
        [ (1)  (.)  129  140  150 ]  % 49
        [ (2)  (/)  130  141  151 ]  % 50
        [ (3)  (:)  131  142  152 ]  % 51
        [ (4)  (@)  132  143  153 ]  % 52
        [ (5)  (!)  133  144  154 ]  % 53
        [ (6)  (|)  134  145  155 ]  % 54
        [ (7)  pd2  135  146  156 ]  % 55
        [ (8)  sa2  136  147  157 ]  % 56
        [ (9)  sa3  137  148  158 ]  % 57
        [ (:)  pd3   la   la   la ]  % 58
        [  sb   sa  ( )  ( )  ( ) ]  % 59
        [  sc   sc  lkc   sc   sc ]  % 60
        [  sd   sd   sd  lkd   sd ]  % 61
        [  se   se   se   se  lke ]  % 62
        [  lb   la   lb   lb   lb ]  % 63
    ] def

    % Invert charmaps to give character to value maps for each state
    /charvals [ 64 dict 64 dict 64 dict 64 dict 64 dict ] def
    0 1 charmaps length 1 sub {
        /i exch def
        /encs charmaps i get def
        0 1 4 {
            /j exch def
            encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
            charvals j get exch i put
        } for
    } for
    /seta charvals 0 get def
    /setb charvals 1 get def
    /setc charvals 2 get def
    /setd charvals 3 get def
    /sete charvals 4 get def

    % Compute numeric runlengths
    /nseq [ msglen 1 add {0} repeat ] def
    msglen 1 sub -1 0 {
        /i exch def
        msg i get dup 48 ge exch 57 le and {
            nseq i nseq i 1 add get 1 add put
        } {
            nseq i 0 put
        } ifelse
    } for
    /nseq nseq 0 msglen getinterval def

    % Encode the message from ASCII to codewords
    /prefixinset {
        0 {
            2 copy exch length ge {exit} if
            2 copy get 3 index exch known {1 add} {exit} ifelse
        } loop
        exch pop exch pop
    } bind def

    /enc {
        exch get out exch j exch put
        /j j 1 add def
    } bind def

    /out 144 array def
    /i 0 def /j 0 def /cset (seta) def
    { % loop
        % Exit when no characters remain latching back to A if necessary
        i msglen eq {
            cset (seta) ne cset (setb) ne and {
                la cset load enc
                /cset (seta) def
            } if
            exit
        } if
        { % not a loop but common exit point

            % If 9 numerals available then use NS
            nseq i get 9 ge {
                msg i 9 getinterval cvi 4 { dup 63 and exch -6 bitshift } repeat cset load ns get
                0 2 10 {index} for 6 array astore 7 1 roll 6 {pop} repeat
                out exch j exch putinterval
                /i i 9 add def
                /j j 6 add def
                exit
            } if

            % Read next three characters
            /char1 msg i get def
            /char2 i 1 add msglen lt {msg i 1 add get} {-99} ifelse def
            /char3 i 2 add msglen lt {msg i 2 add get} {-99} ifelse def

            % If current mode is sufficient then directly encode
            cset load char1 known {
                char1 cset load enc
                /i i 1 add def
                exit
            } if

            % For switching from A to B
            cset (seta) eq setb char1 known and {
                setb char2 known {
                    lb seta enc
                    /cset (setb) def
                } {
                    sb seta enc
                    char1 setb enc
                    /i i 1 add def
                } ifelse
                exit
            } if

            % For switching from B to A encode according to length of prefix
            cset (setb) eq seta char1 known and {
                /p seta msg i 4 msglen i sub 2 copy gt {exch} if pop getinterval prefixinset def
                p 1 eq {
                    sa setb enc
                    char1 seta enc
                    /i i 1 add def
                } if
                p 2 eq {
                    sa2 setb enc
                    char1 seta enc
                    char2 seta enc
                    /i i 2 add def
                } if
                p 3 eq {
                    sa3 setb enc
                    char1 seta enc
                    char2 seta enc
                    char3 seta enc
                    /i i 3 add def
                } if
                p 4 ge {
                    la setb enc
                    /cset (seta) def
                } if
                exit
            } if

            % If character is in A or B then directly latch
            seta char1 known {
                la cset load enc
                /cset (seta) def
                exit
            } if
            setb char1 known {
                lb cset load enc
                /cset (setb) def
                exit
            } if

            % Determine which one of sets C, D or E the character is in
            setc char1 known {/setx (setc) def /sx sc def /lkx lkc def} if
            setd char1 known {/setx (setd) def /sx sd def /lkx lkd def} if
            sete char1 known {/setx (sete) def /sx se def /lkx lke def} if

            % Encode according to the length of the prefix
            /p setx load msg i 4 msglen i sub 2 copy gt {exch} if pop getinterval prefixinset def
            p 1 eq {
                sx cset load enc
                char1 setx load enc
                /i i 1 add def
            } if
            p 2 eq {
                sx cset load enc
                char1 setx load enc
                sx cset load enc
                char2 setx load enc
                /i i 2 add def
            } if
            p 3 eq {
                sx cset load enc
                char1 setx load enc
                sx cset load enc
                char2 setx load enc
                sx cset load enc
                char3 setx load enc
                /i i 3 add def
            } if
            p 4 ge {
                sx cset load enc
                lkx setx load enc
                /cset setx def
            } if

            exit
        } loop  % out
    } loop
    /encmsg out 0 j getinterval def
    /padval cset load pad get def

    % Prefix the encoded message with the structured append insert
    /sami [] def
    sam -1 ne {
        /sami 2 array def
        sami 0 seta pad get put
        sami 1 sam 10 idiv 1 sub 8 mul sam 10 mod 1 sub add put
    } if
    /encmsg [ sami aload pop encmsg aload pop ] def

    % Derive the primary and secondary codewords for modes 2 and 3
    mode 2 eq mode 3 eq or {

        % Calculate the fixed-width binary values for the mode, postcode, country code and service
        /mdb (0000) 4 string copy dup mode cvi 2 4 string cvrs dup length 4 exch sub exch putinterval def
        /ccb (0000000000) 10 string copy dup ccode cvi 2 10 string cvrs dup length 10 exch sub exch putinterval def
        /scb (0000000000) 10 string copy dup scode cvi 2 10 string cvrs dup length 10 exch sub exch putinterval def
        /pcb (000000000000000000000000000000000000) 36 string copy def
        mode 2 eq {
            % For numeric postcode, first six bits represent length and remaining 30 bits the value
            pcb pcode length 2 6 string cvrs dup length 6 exch sub exch putinterval
            pcb pcode cvi 2 30 string cvrs dup length 36 exch sub exch putinterval
        } {  % mode=3
            % For alphanumeric postcode, trim or pad with spaces to 6 chars and encode to binary
            /pccw [
                (      ) 6 string copy dup 0 pcode length 6 gt {pcode 0 6 getinterval} {pcode} ifelse putinterval
                {seta exch get} forall
            ] def
            0 1 5 {
                /i exch def
                pcb pccw i get 2 6 string cvrs dup length 6 i mul 6 add exch sub exch putinterval
            } for
        } ifelse

        % Convolute the binary values into the structured carrier message
        /scm 60 string def
        scm 2  mdb putinterval
        scm 38 pcb 0  4 getinterval putinterval
        scm 30 pcb 4  6 getinterval putinterval
        scm 24 pcb 10 6 getinterval putinterval
        scm 18 pcb 16 6 getinterval putinterval
        scm 12 pcb 22 6 getinterval putinterval
        scm 6  pcb 28 6 getinterval putinterval
        scm 0  pcb 34 2 getinterval putinterval
        scm 52 ccb 0  2 getinterval putinterval
        scm 42 ccb 2  6 getinterval putinterval
        scm 36 ccb 8  2 getinterval putinterval
        scm 54 scb 0  6 getinterval putinterval
        scm 48 scb 6  4 getinterval putinterval

        % Evaluate the structured carrier message as codewords
        /pri [ 0 0 0 0 0 0 0 0 0 0 ] def
        0 1 59 {
            /i exch def
            /ps i 6 idiv def
            /ep 2 5 i 6 mod sub exp cvi scm i get 48 sub mul def
            pri ps pri ps get ep add put
        } for

        % Pad the encoded message into the secondary component
        /sec [ 84 {padval} repeat ] def
        sec 0 encmsg putinterval

    } if

    % Derive the primary and secondary codewords for modes 4, 5 and 6
    mode 4 eq mode 5 eq or mode 6 eq or mode -1 eq or {

        % If mode isn't specified then use EEC if message fits, otherwise SEC
        mode -1 eq {
            /mode encmsg length 77 le {5} {4} ifelse def
        } if

        % First symbol is the mode and the remainder are the padded message
        /cws [ mode 5 eq {78} {94} ifelse {padval} repeat ] def
        cws 0 mode put
        cws 1 encmsg putinterval

        % Fit the message into the primary and secondary components
        /pri cws 0 10 getinterval def
        /sec cws 10 cws length 10 sub getinterval def

    } if

    % Calculate the log and anti-log tables
    /rsalog [ 1 63 { dup 2 mul dup 64 ge {67 xor} if } repeat ] def
    /rslog 64 array def
    1 1 63 {dup rsalog exch get exch rslog 3 1 roll put} for

    % Function to calculate the product in the field
    /rsprod {
        2 copy 0 ne exch 0 ne and {
            rslog exch get exch rslog exch get add 63 mod rsalog exch get
        } {
            pop pop 0
        } ifelse
    } bind def

    % Generate error correction codewords
    /rscodes {

        /rsnum exch def
        /cwb exch def

        % Generate the coefficients
        /coeffs [ 1 rsnum {0} repeat ] def
        1 1 rsnum {
            /i exch def
            coeffs i coeffs i 1 sub get put
            i 1 sub -1 1 {
                /j exch def
                coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod xor put
            } for
            coeffs 0 coeffs 0 get rsalog i get rsprod put
        } for
        /coeffs coeffs 0 coeffs length 1 sub getinterval def

        % Calculate the error correction codewords
        /ecb [ rsnum {0} repeat ] def
        0 1 cwb length 1 sub {
            /t exch cwb exch get ecb 0 get xor def
            ecb length 1 sub -1 0 {
                /i exch def
                /p ecb length i sub 1 sub def
                ecb p t coeffs i get rsprod put
                i 0 gt { ecb p ecb p 1 add get ecb p get xor put } if
            } for
        } for

        ecb

    } bind def

    % Split secondary codeword into odd and even elements
    /seco [ 0 2 sec length 1 sub { sec exch get } for ] def
    /sece [ 1 2 sec length 1 sub { sec exch get } for ] def

    % Calculate the parity codewords for secondary codeword parts based on mode
    /scodes sec length 84 eq {20} {28} ifelse def  % SEC/EEC mode
    /secochk seco scodes rscodes def
    /secechk sece scodes rscodes def

    % Recompose the secondary parity codewords
    /secchk [ 0 1 scodes 1 sub { dup secochk exch get exch secechk exch get } for ] def

    % Concatinate the data into final codewords
    /codewords [
        pri aload pop
        pri 10 rscodes aload pop
        sec aload pop
        secchk aload pop
    ] def

    % Convert the codewords into module bits
    /mods [ 864 {0} repeat ] def
    0 1 143 {
        /i exch def
        /cw [ codewords i get 2 6 string cvrs {48 sub} forall ] def
        mods 6 i mul 6 cw length sub add cw putinterval
    } for

    % Maps modules to pixels in the grid
    /modmap [
        469 529 286 316 347 346 673 672 703 702 647 676 283 282 313 312 370 610 618 379
        378 409 408 439 705 704 559 589 588 619 458 518 640 701 675 674 285 284 315 314
        310 340 531 289 288 319 349 348 456 486 517 516 471 470 369 368 399 398 429 428
        549 548 579 578 609 608 649 648 679 678 709 708 639 638 669 668 699 698 279 278
        309 308 339 338 381 380 411 410 441 440 561 560 591 590 621 620 547 546 577 576
        607 606 367 366 397 396 427 426 291 290 321 320 351 350 651 650 681 680 711 710
        1   0   31  30  61  60  3   2   33  32  63  62  5   4   35  34  65  64  7   6
        37  36  67  66  9   8   39  38  69  68  11  10  41  40  71  70  13  12  43  42
        73  72  15  14  45  44  75  74  17  16  47  46  77  76  19  18  49  48  79  78
        21  20  51  50  81  80  23  22  53  52  83  82  25  24  55  54  85  84  27  26
        57  56  87  86  117 116 147 146 177 176 115 114 145 144 175 174 113 112 143 142
        173 172 111 110 141 140 171 170 109 108 139 138 169 168 107 106 137 136 167 166
        105 104 135 134 165 164 103 102 133 132 163 162 101 100 131 130 161 160 99  98
        129 128 159 158 97  96  127 126 157 156 95  94  125 124 155 154 93  92  123 122
        153 152 91  90  121 120 151 150 181 180 211 210 241 240 183 182 213 212 243 242
        185 184 215 214 245 244 187 186 217 216 247 246 189 188 219 218 249 248 191 190
        221 220 251 250 193 192 223 222 253 252 195 194 225 224 255 254 197 196 227 226
        257 256 199 198 229 228 259 258 201 200 231 230 261 260 203 202 233 232 263 262
        205 204 235 234 265 264 207 206 237 236 267 266 297 296 327 326 357 356 295 294
        325 324 355 354 293 292 323 322 353 352 277 276 307 306 337 336 275 274 305 304
        335 334 273 272 303 302 333 332 271 270 301 300 331 330 361 360 391 390 421 420
        363 362 393 392 423 422 365 364 395 394 425 424 383 382 413 412 443 442 385 384
        415 414 445 444 387 386 417 416 447 446 477 476 507 506 537 536 475 474 505 504
        535 534 473 472 503 502 533 532 455 454 485 484 515 514 453 452 483 482 513 512
        451 450 481 480 511 510 541 540 571 570 601 600 543 542 573 572 603 602 545 544
        575 574 605 604 563 562 593 592 623 622 565 564 595 594 625 624 567 566 597 596
        627 626 657 656 687 686 717 716 655 654 685 684 715 714 653 652 683 682 713 712
        637 636 667 666 697 696 635 634 665 664 695 694 633 632 663 662 693 692 631 630
        661 660 691 690 721 720 751 750 781 780 723 722 753 752 783 782 725 724 755 754
        785 784 727 726 757 756 787 786 729 728 759 758 789 788 731 730 761 760 791 790
        733 732 763 762 793 792 735 734 765 764 795 794 737 736 767 766 797 796 739 738
        769 768 799 798 741 740 771 770 801 800 743 742 773 772 803 802 745 744 775 774
        805 804 747 746 777 776 807 806 837 836 867 866 897 896 835 834 865 864 895 894
        833 832 863 862 893 892 831 830 861 860 891 890 829 828 859 858 889 888 827 826
        857 856 887 886 825 824 855 854 885 884 823 822 853 852 883 882 821 820 851 850
        881 880 819 818 849 848 879 878 817 816 847 846 877 876 815 814 845 844 875 874
        813 812 843 842 873 872 811 810 841 840 871 870 901 900 931 930 961 960 903 902
        933 932 963 962 905 904 935 934 965 964 907 906 937 936 967 966 909 908 939 938
        969 968 911 910 941 940 971 970 913 912 943 942 973 972 915 914 945 944 975 974
        917 916 947 946 977 976 919 918 949 948 979 978 921 920 951 950 981 980 923 922
        953 952 983 982 925 924 955 954 985 984 927 926 957 956 987 986 58  89  88  118
        149 148 178 209 208 238 269 268 298 329 328 358 389 388 418 449 448 478 509 508
        538 569 568 598 629 628 658 689 688 718 749 748 778 809 808 838 869 868 898 929
        928 958 989 988
    ] def

    % Lookup pixels for enabled modules from modmap
    /pixs 864 array def
    /j 0 def
    0 1 mods length 1 sub {
        /i exch def
        mods i get 1 eq {
            pixs j modmap i get put
            /j j 1 add def
        } if
    } for
    /pixs [ pixs 0 j getinterval {} forall 28 29 280 281 311 457 488 500 530 670 700 677 707 ] def

    % Return the arguments
    <<
    /ren //renmaximatrix
    /pixs pixs
    /opt options
    >>

    dontdraw not //renmaximatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /maxicode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER maxicode--

% --BEGIN ENCODER azteccode--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: Aztec Code
% --EXAM: This is Aztec Code
% --EXOP: format=full
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp azteccode 0.0 2019110800 167735 173470
%%BeginData:        681 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/azteccode {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /format (unset) def    % full, compact or rune
    /readerinit false def
    /layers -1 def
    /eclevel 23 def
    /ecaddchars 3 def
    /raw false def
    /parse false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /layers layers cvi def
    /eclevel eclevel cvr def
    /ecaddchars ecaddchars cvi def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    % Convert from input into message bitstream
    /msgbits () def
    format (rune) ne raw and {/msgbits barcode def} if
    format (rune) ne raw not and {

        % State key: "U"pper, "L"ower, "M"ixed, "P"unctuation, "D"igit, "B"inary
        /U 0 def  /L 1 def  /M 2 def  /P 3 def  /D 4 def  /B 5 def

        % Special function characters
        /lu -1 def  /ll -2 def  /lm -3 def
        /lp -4 def  /ld -5 def  /su -6 def
        /sp -7 def  /sb -8 def  /fl -9 def
        /p2 -10 def /p3 -11 def /p4 -12 def /p5 -13 def

        % Character maps for each state
        /charmaps [
            %  U    L    M    P    D
            [  sp   sp   sp   fl   sp ]  % 0
            [  32   32   32   13   32 ]  % 1
            [ (A)  (a)    1   p2  (0) ]  % 2     p2 = CR LF
            [ (B)  (b)    2   p3  (1) ]  % 3     p3 = ". "
            [ (C)  (c)    3   p4  (2) ]  % 4     p4 = ", "
            [ (D)  (d)    4   p5  (3) ]  % 5     p5 = ": "
            [ (E)  (e)    5  (!)  (4) ]  % 6
            [ (F)  (f)    6  (")  (5) ]  % 7
            [ (G)  (g)    7  (#)  (6) ]  % 8
            [ (H)  (h)    8  ($)  (7) ]  % 9
            [ (I)  (i)    9  (%)  (8) ]  % 10
            [ (J)  (j)   10  (&)  (9) ]  % 11
            [ (K)  (k)   11  (')  (,) ]  % 12
            [ (L)  (l)   12   40  (.) ]  % 13
            [ (M)  (m)   13   41   lu ]  % 14
            [ (N)  (n)   27  (*)   su ]  % 15
            [ (O)  (o)   28  (+)  -99 ]  % 16
            [ (P)  (p)   29  (,)  -99 ]  % 17
            [ (Q)  (q)   30  (-)  -99 ]  % 18
            [ (R)  (r)   31  (.)  -99 ]  % 19
            [ (S)  (s)  (@)  (/)  -99 ]  % 20
            [ (T)  (t)   92  (:)  -99 ]  % 21
            [ (U)  (u)  (^)  (;)  -99 ]  % 22
            [ (V)  (v)  (_)  (<)  -99 ]  % 23
            [ (W)  (w)  (`)  (=)  -99 ]  % 24
            [ (X)  (x)  (|)  (>)  -99 ]  % 25
            [ (Y)  (y)  (~)  (?)  -99 ]  % 26
            [ (Z)  (z)  127  ([)  -99 ]  % 27
            [  ll   su   ll  (])  -99 ]  % 28
            [  lm   lm   lu  ({)  -99 ]  % 29
            [  ld   ld   lp  (})  -99 ]  % 30
            [  sb   sb   sb   lu  -99 ]  % 31
        ] def

        % Invert charmaps to give character to value maps for each state
        /charvals [ 32 dict 32 dict 32 dict 32 dict 16 dict ] def
        0 1 charmaps length 1 sub {
            /i exch def
            /encs charmaps i get def
            0 1 4 {
                /j exch def
                encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
                charvals j get exch i put
            } for
        } for

        % Punctuation compression
        /pcomp <<
            <0d0a> p2   % CR LF
            (. )   p3
            (, )   p4
            (: )   p5
        >> def

        /e 10000 def  % "Empty"

        /latlen [  % Bit length of latch between states
        % To:  U  L  M  P  D  B      From
            [  0  5  5 10  5 10 ]  % U
            [  9  0  5 10  5 10 ]  % L
            [  5  5  0  5 10 10 ]  % M
            [  5 10 10  0 10 15 ]  % P
            [  4  9  9 14  0 14 ]  % D
            [  0  0  0  0  0  0 ]  % B
        ] def

        /latseq [  % Latch sequences between states
        % To: U       L       M       P          D       B          From
            [ []      [ll]    [lm]    [lm lp]    [ld]    [sb]    ]  % U
            [ [ld lu] []      [lm]    [lm lp]    [ld]    [sb]    ]  % L
            [ [lu]    [ll]    []      [lp]       [lu ld] [sb]    ]  % M
            [ [lu]    [lu ll] [lu lm] []         [lu ld] [lu sb] ]  % P
            [ [lu]    [lu ll] [lu lm] [lu lm lp] []      [lu sb] ]  % D
            [ [lu]    [ll]    [lm]    []         []      []      ]  % B
        ] def

        /shftlen [  % Bit length of shift to state
        % To:  U  L  M  P  D      From
            [  e  e  e  5  e ]  % U
            [  5  e  e  5  e ]  % L
            [  e  e  e  5  e ]  % M
            [  e  e  e  e  e ]  % P
            [  4  e  e  4  e ]  % D
        ] def

        %            U   L   M   P   D   B
        /charsize [  5   5   5   5   4   8 ] def

        %          U  L  M  P  D  B
        /curlen [  0  e  e  e  e  e ] def
        /curseq [ [] [] [] [] [] [] ] def

        /backto U def  % U
        /lastchar () def

        % Derive the optimal sequences ending in each state
        barcode {

            /char exch def

            % Check for optimisations in the current sequences by latching from x to y
            {  % loop
                /imp false def
                [ U L M P D B ] {
                    /x exch def
                    [ U L M P D B ] {
                        /y exch def
                        x B ne y backto eq or {  % Only B -> backto
                            /cost curlen x get latlen x get y get add def
                            cost curlen y get lt {
                                curlen y cost put
                                curseq y [
                                    curseq x get aload pop
                                    latseq x get y get aload pop
                                ] put
                                y B eq {  % Set backto to previous state
                                    /backto x P eq x D eq or {U} {x} ifelse def
                                } if
                                /imp true def
                            } if
                        } if
                    } forall
                } forall
                imp not {exit} if  % Repeat unless no improvement
            } loop

            % Determine optimal next sequences for each valid encoding
            /nxtlen [ e e e e e e ] def
            /nxtseq 6 array def

            [ U L M P D B ] {
                /x exch def

                { % loop for common exit

                    % Skip states that cannot encode character
                    x B ne {charvals x get char known not {exit} if} if

                    % Extend directly
                    /cost curlen x get charsize x get add def
                    cost nxtlen x get lt {
                        nxtlen x cost put
                        nxtseq x [ curseq x get aload pop char ] put
                    } if

                    % Optimise for direct shifts from y to x
                    x B eq {exit} if  % B is treated as a latch
                    [ U L M P D ] {
                        /y exch def
                        x y ne {
                            /cost curlen y get shftlen y get x get add charsize x get add def
                            cost nxtlen y get lt {
                                nxtlen y cost put
                                nxtseq y [
                                    curseq y get aload pop
                                    x U eq {su} {sp} ifelse
                                    char
                                ] put
                            } if
                        } if
                    } forall

                    exit
                } loop

            } forall

            % Optimise using P compression
            lastchar () ne {
                /pchars 2 string dup 0 lastchar put dup 1 char put def
                pcomp pchars known {
                    curlen P get nxtlen P get lt {
                        nxtlen P curlen P get put
                        nxtseq P [ curseq P get aload pop pop pcomp pchars get ] put
                    } if
                } if
            } if

            % Account for binary extension for 32 or more bytes
            /numbytes 0 def
            nxtseq B get {
                sb eq {0} {numbytes 1 add} ifelse /numbytes exch def
            } forall
            numbytes 32 eq {nxtlen B nxtlen B get 11 add put} if

            /curlen nxtlen def
            /curseq nxtseq def
            /lastchar char def

        } forall

        % Select the optimal sequence
        /minseq e def
        [ U L M P D B ] {
            /i exch def
            curlen i get minseq lt {
                /minseq curlen i get def
                /seq curseq i get def
            } if
        } forall

        % Encoding functions
        /tobin {
            string dup length 1 sub 0 exch 1 exch {1 index exch 48 put} for
            dup 3 -1 roll 2 2 index length string cvrs dup length 2 index length exch sub exch putinterval
        } bind def
        /encu {charvals U get exch get 5 tobin} bind def
        /encl {charvals L get exch get 5 tobin} bind def
        /encm {charvals M get exch get 5 tobin} bind def
        /encp {charvals P get exch get 5 tobin} bind def
        /encd {charvals D get exch get 4 tobin} bind def
        /encfuncs [ /encu /encl /encm /encp /encd ] def
        /addtomsgbits {
            /v exch def
            msgbits j v putinterval
            /j j v length add def
        } bind def

        % Encode the sequence
        /state U def
        /msgbits minseq string def
        /i 0 def /j 0 def {
            i seq length ge {exit} if

            state B ne {

                /char seq i get def

                % Encode character
                char encfuncs state get load exec addtomsgbits
                /i i 1 add def

                % Encode shifted next character
                char su eq char sp eq or {
                    seq i get char su eq {encu} {encp} ifelse addtomsgbits
                    /i i 1 add def
                } if

                % Latches to new state
                char lu eq {/state U def} if
                char ll eq {/state L def} if
                char lm eq {/state M def} if
                char lp eq {/state P def} if
                char ld eq {/state D def} if
                char sb eq {/state B def} if

            } {  % Binary

                % Find number of bytes before latch or end
                /numbytes 0 def {
                    i numbytes add seq length ge {exit} if
                    seq i numbytes add get 0 lt {exit} if
                    /numbytes numbytes 1 add def
                } loop

                % Encode length
                numbytes 31 le {
                    numbytes 5 tobin addtomsgbits
                } {
                    0 5 tobin addtomsgbits
                    numbytes 31 sub 11 tobin addtomsgbits
                } ifelse

                % Encode bytes
                numbytes {
                    seq i get 8 tobin addtomsgbits
                    /i i 1 add def
                } repeat

                % Return to previous state as indicated
                i seq length lt {
                    /char seq i get def
                    /i i 1 add def
                    char lu eq {/state U def} if
                    char ll eq {/state L def} if
                    char lm eq {/state M def} if
                } if

            } ifelse

        } loop

    } if

    % Lookup the most appropriate symbol specification
    /metrics [
        [ (rune)     0 0    0  6 ]  % Special metric for rune symbols
        [ (compact)  1 1   17  6 ] [ (full)     1 1   21  6 ] [ (compact)  2 0   40  6 ]
        [ (full)     2 1   48  6 ] [ (compact)  3 0   51  8 ] [ (full)     3 1   60  8 ]
        [ (compact)  4 0   76  8 ] [ (full)     4 1   88  8 ] [ (full)     5 1  120  8 ]
        [ (full)     6 1  156  8 ] [ (full)     7 1  196  8 ] [ (full)     8 1  240  8 ]
        [ (full)     9 1  230 10 ] [ (full)    10 1  272 10 ] [ (full)    11 1  316 10 ]
        [ (full)    12 1  364 10 ] [ (full)    13 1  416 10 ] [ (full)    14 1  470 10 ]
        [ (full)    15 1  528 10 ] [ (full)    16 1  588 10 ] [ (full)    17 1  652 10 ]
        [ (full)    18 1  720 10 ] [ (full)    19 1  790 10 ] [ (full)    20 1  864 10 ]
        [ (full)    21 1  940 10 ] [ (full)    22 1 1020 10 ] [ (full)    23 0  920 12 ]
        [ (full)    24 0  992 12 ] [ (full)    25 0 1066 12 ] [ (full)    26 0 1144 12 ]
        [ (full)    27 0 1224 12 ] [ (full)    28 0 1306 12 ] [ (full)    29 0 1392 12 ]
        [ (full)    30 0 1480 12 ] [ (full)    31 0 1570 12 ] [ (full)    32 0 1664 12 ]
    ] def

    /i 0 def
    { % loop
        /m metrics i get def
        /frmt m 0 get def                          % Format of the symbol
        /mlyr m 1 get def                          % Data layers
        /icap m 2 get def                          % Reader initialisation capable
        /ncws m 3 get def                          % Total of codewords
        /bpcw m 4 get def                          % Bits per codeword
        /numecw ncws eclevel mul 100 div ecaddchars add ceiling cvi def
        msgbits length 0 eq {/numecw 0 def} if     % Error correction codewords
        /numdcw ncws numecw sub def                % Data codewords
        /okay true def
        format (unset) ne format frmt ne and {/okay false def} if
        readerinit icap 1 ne and {/okay false def} if
        layers -1 ne layers mlyr ne and {/okay false def} if
        msgbits length bpcw div ceiling cvi numdcw gt {/okay false def} if
        okay {exit} if
        /i i 1 add def
    } loop
    /layers mlyr def
    /format frmt def

    % Expand message bits into codewords avoiding codewords with all zeros or all ones
    /allzero {dup length (000000000000) 0 3 -1 roll getinterval eq} bind def
    /allones {dup length (111111111111) 0 3 -1 roll getinterval eq} bind def
    /cws ncws array def
    /m 0 def /c 0 def
    {
        msgbits length m le {exit} if
        msgbits length m sub bpcw ge {
            /cwb msgbits m bpcw 1 sub getinterval def        % All but last bit
            /cwf msgbits m bpcw add 1 sub 1 getinterval def  % Last bit
            cwb allzero {/cwf (1) def /m m 1 sub def} if     % Flip last bit to avoid zeros
            cwb allones {/cwf (0) def /m m 1 sub def} if     % Flip last bit to avoid ones
            % Concatinate the bits
            12 string dup 0 cwb putinterval
            dup bpcw 1 sub cwf putinterval
            0 bpcw getinterval
            /cwb exch def
        } {  %  Final codeword
            /cwb msgbits m msgbits length m sub getinterval def
            /cwb (111111111111) 12 string copy dup 0 cwb putinterval 0 bpcw getinterval def
            cwb allones {cwb cwb length 1 sub (0) putinterval} if  % Prevent all ones
        } ifelse
        % Conversion of binary data into byte array
        /cw 0 def
        0 1 bpcw 1 sub {
            /i exch def
            /cw cw 2 bpcw i sub 1 sub exp cvi cwb i get 48 sub mul add def
        } for
        cws c cw put
        /m m bpcw add def
        /c c 1 add def
    } loop
    /cws cws 0 c getinterval def

    % Reed-Solomon algorithm
    /rscodes {

        /rspm exch def
        /rsgf exch def
        /rsnc exch def
        /rscws exch def

        % Calculate the log and anti-log tables
        /rsalog [ 1 rsgf 1 sub { dup 2 mul dup rsgf ge {rspm xor} if } repeat ] def
        /rslog rsgf array def
        1 1 rsgf 1 sub {dup rsalog exch get exch rslog 3 1 roll put} for

        % Function to calculate the product in the field
        /rsprod {
            2 copy 0 ne exch 0 ne and {
                rslog exch get exch rslog exch get add rsgf 1 sub mod rsalog exch get
            } {
                pop pop 0
            } ifelse
        } bind def

        % Generate the coefficients
        /coeffs [ 1 rsnc {0} repeat ] def
        1 1 rsnc {
            /i exch def
            coeffs i coeffs i 1 sub get put
            i 1 sub -1 1 {
                /j exch def
                coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod xor put
            } for
            coeffs 0 coeffs 0 get rsalog i get rsprod put
        } for

        % Extend the input with the error correction values
        /nd rscws length def
        /rscws [ rscws {} forall rsnc {0} repeat 0 ] def
        0 1 nd 1 sub {
            /k exch rscws exch get rscws nd get xor def
            0 1 rsnc 1 sub {
                /j exch def
                rscws nd j add rscws nd j add 1 add get k coeffs rsnc j sub 1 sub get rsprod xor put
            } for
        } for

        % Return all but the last codeword
        rscws 0 rscws length 1 sub getinterval

    } bind def

    % Create the codewords and bit string for the mode
    format (full) eq {
        /mode layers 1 sub 11 bitshift cws length 1 sub add def
        readerinit {/mode mode 2#0000010000000000 or def} if
        /mode [
            mode 2#1111000000000000 and -12 bitshift
            mode 2#0000111100000000 and -8 bitshift
            mode 2#0000000011110000 and -4 bitshift
            mode 2#0000000000001111 and
        ] def
        /mode mode 6 16 19 rscodes def
    } if
    format (compact) eq {
        /mode layers 1 sub 6 bitshift cws length 1 sub add def
        readerinit {/mode mode 2#00100000 or def} if
        /mode [
            mode 2#11110000 and -4 bitshift
            mode 2#00001111 and
        ] def
        /mode mode 5 16 19 rscodes def
    } if
    format (rune) eq {
        /mode barcode cvi def
        /mode [
            mode 2#11110000 and -4 bitshift
            mode 2#00001111 and
        ] def
        /mode mode 5 16 19 rscodes def
        /mode [mode {2#1010 xor} forall] def  % Invert alternate bits
    } if
    /modebits mode length 4 mul string def
    0 1 modebits length 1 sub {modebits exch (0) putinterval} for
    0 1 mode length 1 sub {
        /i exch def
        modebits mode i get 2 4 string cvrs dup length 4 exch sub 4 i mul add exch putinterval
    } for

    % Extend the data codewords with error correction codewords to create the bit string for the data
    /rsparams [
        [] [] [] [] [] []
        [ 64 67 ]      % 6-bit codewords
        []
        [ 256 301 ]    % 8-bit codewords
        []
        [ 1024 1033 ]  % 10-bit codewords
        []
        [ 4096 4201 ]  % 12-bit codewords
    ] def
    /cws cws ncws cws length sub rsparams bpcw get {} forall rscodes def
    format (full) eq {
        /databits layers layers mul 16 mul layers 112 mul add string def
    } {
        /databits layers layers mul 16 mul layers 88 mul add string def
    } ifelse
    0 1 databits length 1 sub {databits exch (0) putinterval} for
    0 1 ncws 1 sub {
        /i exch def
        databits cws i get 2 bpcw string cvrs
        dup length bpcw exch sub bpcw i mul add databits length ncws bpcw mul sub add
        exch putinterval
    } for

    % Move to a point in the cartesian plane centered on the bullseye
    /cmv {size mul sub mid add} bind def

    % Move to a bit position within a layer
    /lmv {
        /lbit exch def
        /llyr exch def
        /lwid fw llyr 4 mul add def
        /ldir lbit 2 idiv lwid idiv def
        ldir 0 eq {  % Top
            lwid 1 sub 2 idiv neg 1 add lbit 2 idiv lwid mod add
            fw 1 sub 2 idiv llyr 2 mul add lbit 2 mod add
            cmv
        } if
        ldir 1 eq {  % Right
            fw 2 idiv llyr 2 mul add lbit 2 mod add
            lwid 1 sub 2 idiv 1 sub lbit 2 idiv lwid mod sub
            cmv
        } if
        ldir 2 eq {  % Bottom
            lwid 2 idiv neg 1 add lbit 2 idiv lwid mod add neg
            fw 2 idiv llyr 2 mul add lbit 2 mod add neg
            cmv
        } if
        ldir 3 eq {  % Left
            fw 1 sub 2 idiv llyr 2 mul add lbit 2 mod add neg
            lwid 2 idiv 1 sub lbit 2 idiv lwid mod sub neg
            cmv
        } if
    } bind def

    % Create the pixel map
    % For full symbols we disregard the reference grid at this stage
    format (full) eq {/fw 12 def} {/fw 9 def} ifelse
    /size fw layers 4 mul add 2 add def
    /pixs [size size mul {-1} repeat] def
    /mid size 1 sub 2 idiv size mul size 1 sub 2 idiv add def

    % Data layers
    /i 0 def
    1 1 layers {
        /layer exch def
        0 1 fw layer 4 mul add 8 mul 1 sub {
            /pos exch def
            pixs layer pos lmv databits databits length i sub 1 sub get 48 sub put
            /i i 1 add def
        } for
    } for

    % For full symbols expand the pixel map by inserting the reference grid
    format (full) eq {
        /fw 13 def
        /size fw layers 4 mul add 2 add layers 10.5 add 7.5 div 1 sub cvi 2 mul add def
        /mid size size mul 2 idiv def
        /npixs [size size mul {-2} repeat] def
        0 16 size 2 idiv {
            /i exch def
            0 1 size 1 sub {
                /j exch def
                npixs size 2 idiv neg j add i cmv     [size 2 idiv j add i add 1 add 2 mod] putinterval
                npixs size 2 idiv neg j add i neg cmv [size 2 idiv j add i add 1 add 2 mod] putinterval
                npixs i size 2 idiv neg j add cmv     [size 2 idiv j add i add 1 add 2 mod] putinterval
                npixs i neg size 2 idiv neg j add cmv [size 2 idiv j add i add 1 add 2 mod] putinterval
            } for
        } for
        /j 0 def
        0 1 npixs length 1 sub {
            /i exch def
            npixs i get -2 eq {
                npixs i pixs j get put
                /j j 1 add def
            } if
        } for
        /pixs npixs def
    } if

    % Finder pattern
    /fw fw 2 idiv def
    fw neg 1 fw {
        /i exch def
        fw neg 1 fw {
            /j exch def
            pixs i j cmv
            i abs j abs gt {i abs} {j abs} ifelse 1 add 2 mod
            put
        } for
    } for

    % Orientation bits
    [ [ fw 1 add neg   fw             1 ] [ fw 1 add neg   fw 1 add       1 ]
      [ fw neg         fw 1 add       1 ] [ fw 1 add       fw 1 add       1 ]
      [ fw 1 add       fw             1 ] [ fw 1 add       fw neg         1 ]
      [ fw             fw 1 add       0 ] [ fw 1 add       fw 1 add neg   0 ]
      [ fw             fw 1 add neg   0 ] [ fw neg         fw 1 add neg   0 ]
      [ fw 1 add neg   fw 1 add neg   0 ] [ fw 1 add neg   fw neg         0 ]
    ] {pixs exch {} forall 3 1 roll cmv exch put} forall

    % Mode ring
    format (full) eq {
        /modemap [
            [-5  7] [-4  7] [-3  7] [-2  7] [-1  7] [ 1  7] [ 2  7] [ 3  7] [ 4  7] [ 5  7]
            [ 7  5] [ 7  4] [ 7  3] [ 7  2] [ 7  1] [ 7 -1] [ 7 -2] [ 7 -3] [ 7 -4] [ 7 -5]
            [ 5 -7] [ 4 -7] [ 3 -7] [ 2 -7] [ 1 -7] [-1 -7] [-2 -7] [-3 -7] [-4 -7] [-5 -7]
            [-7 -5] [-7 -4] [-7 -3] [-7 -2] [-7 -1] [-7  1] [-7  2] [-7  3] [-7  4] [-7  5]
        ] def
    } {
        /modemap [
            [-3  5] [-2  5] [-1  5] [ 0  5] [ 1  5] [ 2  5] [ 3  5]
            [ 5  3] [ 5  2] [ 5  1] [ 5  0] [ 5 -1] [ 5 -2] [ 5 -3]
            [ 3 -5] [ 2 -5] [ 1 -5] [ 0 -5] [-1 -5] [-2 -5] [-3 -5]
            [-5 -3] [-5 -2] [-5 -1] [-5  0] [-5  1] [-5  2] [-5  3]
        ] def
    } ifelse
    0 1 modemap length 1 sub {
        /i exch def
        pixs modemap i get {} forall cmv modebits i get 48 sub put
    } for

    <<
    /ren //renmatrix
    /pixs pixs
    /pixx size
    /pixy size
    /height size 2 mul 72 div
    /width size 2 mul 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /azteccode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER azteccode--

% --BEGIN ENCODER azteccodecompact--
% --REQUIRES preamble raiseerror renmatrix azteccode--
% --DESC: Compact Aztec Code
% --EXAM: 1234
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp azteccodecompact 0.0 2019110800 50516 53966
%%BeginData:         45 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /azteccode dup /uk.co.terryburton.bwipp findresource put
%psc begin
/azteccodecompact {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Get the result of encoding with azteccode with format=compact
    options (dontdraw) true put
    options (format) (compact) put

    /args barcode options //azteccode exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /azteccodecompact dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER azteccodecompact--

% --BEGIN ENCODER aztecrune--
% --REQUIRES preamble raiseerror renmatrix azteccode--
% --DESC: Aztec Runes
% --EXAM: 1
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp aztecrune 0.0 2019110800 50485 53942
%%BeginData:         45 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /azteccode dup /uk.co.terryburton.bwipp findresource put
%psc begin
/aztecrune {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Get the result of encoding with azteccode with format=rune
    options (dontdraw) true put
    options (format) (rune) put

    /args barcode options //azteccode exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /aztecrune dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER aztecrune--

% --BEGIN ENCODER codeone--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: Code One
% --EXAM: Code One
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp codeone 0.0 2019110800 189513 201806
%%BeginData:        858 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/codeone {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /version (unset) def
    /parse false def
    /parsefnc false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    /stype version 0 1 getinterval (S) eq def

    stype {
        /vals [
            (1)
            (1010)
            (1100100)
            (1111101000)
            (10011100010000)
            (11000011010100000)
            (11110100001001000000)
            (100110001001011010000000)
            (101111101011110000100000000)
            (111011100110101100101000000000)
            (1001010100000010111110010000000000)
            (1011101001000011101101110100000000000)
            (1110100011010100101001010001000000000000)
            (10010001100001001110011100101010000000000000)
            (10110101111001100010000011110100100000000000000)
            (11100011010111111010100100110001101000000000000000)
            (100011100001101111001001101111110000010000000000000000)
            (101100011010001010111100001011101100010100000000000000000)
        ] def

        /normalize {
            /base exch def
            /num exch def
            num length 1 sub -1 1 {
                /i exch def
                num i 1 sub 2 copy get num i get base idiv add put
                num i num i get base mod put
            } for
            { %loop - extend input as necessary
                num 0 get base lt {exit} if
                /num [0 num {} forall] def
                num 0 num 0 get num 1 get base idiv add put
                num 1 num 1 get base mod put
            } loop
            % Trim leading zeros
            /num [/i true def num {dup 0 eq i and {pop} {/i false def} ifelse} forall] def
            num length 0 eq {/num [0] def} if
            num
        } bind def

        /bigadd {
            2 copy length exch length
            2 copy sub abs /offset exch def
            lt {exch} if
            /a exch def /b exch def
            0 1 b length 1 sub {
                dup a exch offset add 2 copy get b 5 -1 roll get add put
            } for
            a
        } bind def

        % Convert value plus one to binary
        /v [ 1 ] def
        0 1 barlen 1 sub {
            /i exch def
            [ vals i get {48 sub barcode barlen i sub 1 sub get 48 sub mul} forall ]
            v bigadd /v exch def
        } for
        /v v 2 normalize def

        % Split into 5-bit codewords
        /v [ 5 v length 5 mod sub 5 mod {0} repeat v aload pop ] def
        /cws v length 5 idiv array def
        0 1 cws length 1 sub {
            /i exch def
            v i 5 mul 5 getinterval
            0 exch {add 2 mul} forall 2 idiv
            cws exch i exch put
        } for

        % Basic metrics for the each symbol
        %     ver    row col dcol dcws rscw rsbl  ro ri rl
        /metrics [
            [ (S-10)   8  11   10    4    4    1  99 99 99 ]
            [ (S-20)   8  21   20    8    8    1  99 99 99 ]
            [ (S-30)   8  31   30   12   12    1  99 99 99 ]
        ] def

    } {  % Standard and type-T

        % Convert input into bytes accounting for FNC characters
        /fnc1 -1 def  /fnc3 -2 def
        /fncvals <<
            (FNC1) fnc1
            (FNC3) fnc3
        >> def
        /msg barlen array def
        /i 0 def /j 0 def {
            i barlen eq {exit} if
            /char barcode i get def
            parsefnc char 94 eq and i barlen 4 sub lt and {
                barcode i 1 add get 94 ne {
                    /char fncvals barcode i 1 add 4 getinterval get def
                    /i i 4 add def
                } {
                    /i i 1 add def
                } ifelse
            } if
            msg j char put
            /i i 1 add def
            /j j 1 add def
        } loop
        /msg msg 0 j getinterval def
        /msglen msg length def

        % Basic metrics for the each symbol
        %     ver    row col dcol dcws rscw rsbl  ro ri rl
        /metrics [
            [ (A)     16  18   16   10   10    1   4 99  6 ]
            [ (B)     22  22   20   19   16    1   4 99  8 ]
            [ (C)     28  32   28   44   26    1   4 22 11 ]
            [ (D)     40  42   36   91   44    1   4 16 16 ]
            [ (E)     52  54   48  182   70    1   4 22 22 ]
            [ (F)     70  76   68  370  140    2   4 22 31 ]
            [ (G)    104  98   88  732  280    4   6 21 47 ]
            [ (H)    148 134  120 1480  560    8   6 20 69 ]
            [ (T-16)  16  17   16   10   10    1  99 99 99 ]
            [ (T-32)  16  33   32   24   16    1  99 99 99 ]
            [ (T-48)  16  49   48   38   22    1  99 99 99 ]
        ] def

        % Select metrics of an appropriate symbol
        /fullcws [] def
        metrics {
            /m exch def
            /vers m 0 get def           % Version of symbol
            /dcws m 4 get def           % Data codewords in symbol
            /okay true def
            version (unset) eq {
                vers length 1 ne {/okay false def} if
            } {
                version vers ne {/okay false def} if
            } ifelse
            okay {/fullcws [ fullcws aload pop dcws ] def} if
        } forall
        /numremcws [ 1480 {10000} repeat ] def
        fullcws {numremcws exch 1 sub 1 put} forall
        1478 -1 0 {
            /i exch def
            numremcws i get 1 ne {
                numremcws i numremcws i 1 add get 1 add put
            } if
        } for

        % Special characters
        /lC    -5 def  /lB    -6 def  /lX    -7 def  /lT    -8 def  /lD    -9 def  /unl -10 def
        /fnc2 -11 def  /fnc4 -12 def  /sft1 -13 def  /sft2 -14 def  /sft3 -15 def  /eci -16 def  /pad -17 def  /fnc1lD -18 def
        /unlcw 255 def

        /Avals <<
            0 1 128 {dup 1 add} for
            pad 129
            0 1 99 {  % Double digits
                dup 10 2 string cvrs (00) 2 string copy dup 2 3 index length sub 4 -1 roll putinterval
                exch 130 add
            } for
            229 [ lC lB fnc1 fnc2 fnc3 fnc4 fnc1lD ] {exch 1 add dup} forall pop
            lX 238
            lT 239
            % 240-255 lD + 4 bits
        >> def
        /Avals <<
            Avals {[exch]} forall
        >> def

        /CNvals <<
            sft1 0
            sft2 1
            sft3 2
            32   3
            48 1 57 {dup 44 sub} for  % 0-9
            65 1 90 {dup 51 sub} for  % A-Z
        >> def
        /C1vals << 0 1 31 {dup} for >> def
        /C2vals <<
            33 1 47 {dup 33 sub} for
            58 1 64 {dup 43 sub} for
            91 1 95 {dup 69 sub} for
            fnc1 27
            fnc2 28
            fnc3 29
            fnc4 30
            pad  31
        >> def
        /C3vals << 96 1 127 {dup 96 sub} for >> def
        /Cvals <<
            CNvals {[exch]} forall
            C1vals {[exch CNvals sft1 get exch]} forall
            C2vals {[exch CNvals sft2 get exch]} forall
            C3vals {[exch CNvals sft3 get exch]} forall
        >> def

        /TNvals <<
            sft1 0
            sft2 1
            sft3 2
            32   3
            48 1  57 {dup 44 sub} for  % 0-9
            97 1 122 {dup 83 sub} for  % a-z
        >> def
        /T1vals << 0 1 31 {dup} for >> def
        /T2vals <<
            33 1 47 {dup 33 sub} for
            58 1 64 {dup 43 sub} for
            91 1 95 {dup 69 sub} for
            fnc1 27
            fnc2 28
            fnc3 29
            fnc4 30
            pad  31
        >> def
        /T3vals <<
             96 0
             65 1  90 {dup 64 sub} for
            123 1 127 {dup 96 sub} for
        >> def
        /Tvals <<
            TNvals {[exch]} forall
            T1vals {[exch TNvals sft1 get exch]} forall
            T2vals {[exch TNvals sft2 get exch]} forall
            T3vals {[exch TNvals sft3 get exch]} forall
        >> def

        % Extended ASCII mappings
        128 1 255 {
            /i exch def
            Avals i [ Avals fnc4 get aload pop Avals i 128 sub get aload pop ] put
            Cvals i [ Cvals fnc4 get aload pop Cvals i 128 sub get aload pop ] put
            Tvals i [ Tvals fnc4 get aload pop Tvals i 128 sub get aload pop ] put
        } for

        /Xvals <<
            13 0
            42 1
            62 2
            32 3
            48 1 57 {dup 44 sub} for
            65 1 90 {dup 51 sub} for
        >> def
        /Xvals <<
            Xvals {[exch]} forall
        >> def

        /Bvals <<
            0 1 255 {dup} for
        >> def
        /Bvals <<
            Bvals {[exch]} forall
        >> def

        /encvals [ Avals Cvals Tvals Xvals -1 Bvals ] def

        /numD [ msglen {0} repeat 0 ] def
        /nextXterm [ msglen {0} repeat 9999 ] def
        /nextNonX  [ msglen {0} repeat 9999 ] def
        msglen 1 sub -1 0 {
            /i exch def
            /barchar msg i get def
            barchar 48 ge barchar 57 le and {
                numD i numD i 1 add get 1 add put
            } if
            barchar 13 eq barchar 42 eq or barchar 62 eq or {
                nextXterm i 0 put
            } {
                nextXterm i nextXterm i 1 add get 1 add put
            } ifelse
            Xvals barchar known not {
                nextNonX i 0 put
            } {
                nextNonX i nextNonX i 1 add get 1 add put
            } ifelse
        } for
        /nextXterm [nextXterm {dup 10000 gt {pop 10000} if} forall] def
        /nextNonX  [nextNonX  {dup 10000 gt {pop 10000} if} forall] def

        /isD  {char 48 ge char 57 le and} bind def
        /isC  {CNvals char known} bind def
        /isT  {TNvals char known} bind def
        /isX  {Xvals char known} bind def
        /isEA {char 127 gt} bind def
        /isFN {char 0 lt} bind def
        /XtermFirst {dup nextXterm exch get exch nextNonX exch get lt} bind def

        /A 0 def  /C 1 def  /T 2 def  /X 3 def  /D 4 def  /B 5 def

        /lookup {
            /ac 1 def /cc 2 def /tc 2 def /xc 2 def /bc 3 def
            mode A eq {/ac 0 def /cc 1 def /tc 1 def /xc 1 def /bc 2 def} if
            mode C eq {/cc 0 def} if
            mode T eq {/tc 0 def} if
            mode X eq {/xc 0 def} if  % Assume mistake in spec
            mode B eq {/bc 0 def} if
            1 {  % common exit
                /k 0 def {  % loop
                    i k add msglen eq {
                        true [ac cc tc xc   ] {bc         exch ceiling le and} forall {B exit} if
                        true [   cc tc xc bc] {ac         exch ceiling le and} forall {A exit} if
                        true [      tc xc   ] {cc ceiling exch ceiling le and} forall {C exit} if
                        true [         xc   ] {tc ceiling exch ceiling le and} forall {T exit} if
                        X exit
                    } if
                    /char msg i k add get def
                    /ac ac isD {1 2 div add} {isEA {ceiling 2 add} {ceiling 1 add} ifelse} ifelse def
                    /cc cc isC { 0.66666667 add} {isEA { 2.66666667 add } { 1.33333334 add } ifelse} ifelse def
                    /tc tc isT { 0.66666667 add} {isEA { 2.66666667 add } { 1.33333334 add } ifelse} ifelse def
                    /xc xc isX { 0.66666667 add} {isEA { 4.33333334 add } { 3.33333334 add } ifelse} ifelse def
                    /bc bc isFN {3 add} {1 add} ifelse def
                    k 3 ge {
                        true [ac cc tc xc   ] {bc 1 add exch ceiling le and} forall {B exit} if
                        true [   cc tc xc bc] {ac 1 add exch ceiling le and} forall {A exit} if
                        true [ac cc    xc bc] {tc 1 add exch ceiling le and} forall {T exit} if
                        true [ac    tc      ] {cc 1 add exch ceiling le and} forall {
                            cc ceiling xc ceiling lt {C exit} if
                            cc xc eq {i k add 1 add XtermFirst {X exit} {C exit} ifelse} if
                        } if
                        true [ac cc tc    bc] {xc 1 add exch lt and} forall {X exit} if
                    } if
                    /k k 1 add def
                } loop
            } repeat
        } bind def

        /addtocws {
            dup cws exch j exch putinterval
            /j exch length j add def
        } bind def

        /tobin {
            string dup length 1 sub 0 exch 1 exch {1 index exch 48 put} for
            dup 3 -1 roll 2 2 index length string cvrs dup length 2 index length exch sub exch putinterval
            [ exch {48 sub} forall ]
        } bind def

        /encA {
            1 {  % Common exit
                numD i get 21 ge {
                    /Dbits [ 1 1 1 1 ] def
                    /mode D def
                    exit
                } if
                numD i get dup 13 ge exch i add msglen eq and {
                    /Dbits [ 1 1 1 1 ] def
                    /mode D def
                    exit
                } if
                numD i get 2 ge {
                    2 string dup 0 msg i get put dup 1 msg i 1 add get put Avals exch get addtocws
                    /i i 2 add def
                    exit
                } if
                msg i get fnc1 eq {
                    numD i 1 add get 15 ge {
                        Avals fnc1lD get addtocws
                        /i i 1 add def
                        /Dbits [] def
                        /mode D def
                        exit
                    } if
                    numD i 1 add get dup 7 ge exch i add 1 add msglen eq and {
                        Avals fnc1lD get addtocws
                        /i i 1 add def
                        /Dbits [] def
                        /mode D def
                        exit
                    } if
                } if
                /newmode lookup def
                newmode mode ne {
                    Avals [-1 lC lT lX lD lB] newmode get get addtocws
                    /mode newmode def
                    exit
                } if
                Avals msg i get get addtocws
                /i i 1 add def
                exit
            } repeat
        } bind def

        /CTXvalstocws {
            /in exch def
            mark
            0 3 in length 1 sub {
                in exch 3 getinterval 0 exch {add 40 mul} forall 40 idiv 1 add
                dup 256 idiv exch 256 mod
            } for
            counttomark array astore exch pop
        } bind def

        /encCTX {
            /p 0 def
            /ctxvals 2220 array def

            % Lookup the values for each character
            {
                i msglen eq {exit} if
                encvals mode get msg i get known not {exit} if
                p 3 mod 0 eq {
                    numD i get 12 ge {
                        [unlcw] addtocws
                        /mode A def
                        exit
                    } if
                    numD i get dup 8 ge exch i add msglen eq and {
                        [unlcw] addtocws
                        /mode A def
                        exit
                    } if
                    lookup mode ne {
                        ctxvals 0 p getinterval CTXvalstocws addtocws
                        [unlcw] addtocws
                        /mode A def
                        exit
                    } if
                    msglen i sub 3 le {  % Check end of data conditions
                        /remcws numremcws j p 3 idiv 2 mul add get def
                        /remvals [
                            msg i msglen i sub getinterval {
                                dup encvals mode get exch known {
                                    encvals mode get exch get aload pop
                                } {  % Unencodable X12 characters
                                    pop -1 -1 -1 -1
                                } ifelse
                            } forall
                        ] def
                        remcws 2 eq remvals length 3 eq and {
                            % Encode and omit unlatch
                            [
                                ctxvals 0 p getinterval aload pop
                                remvals aload pop
                            ] CTXvalstocws addtocws
                            /mode A def
                            /i msglen def
                            exit
                        } if
                        remcws 2 eq remvals length 2 eq and mode X ne and {
                            % Encode with sft1 as third value, omit unlatch
                            [
                                ctxvals 0 p getinterval aload pop
                                remvals aload pop
                                encvals mode get sft1 get aload pop
                            ] CTXvalstocws addtocws
                            /mode A def
                            /i msglen def
                            exit
                        } if
                        remcws 2 eq remvals length 1 eq and {
                            % Unlatch to ASCII
                            ctxvals 0 p getinterval CTXvalstocws addtocws
                            [unlcw] addtocws
                            Avals msg i get get addtocws
                            /mode A def
                            /i msglen def
                            exit
                        } if
                        remcws 1 eq remvals length 1 eq and {
                            % Implied unlatch to ASCII
                            ctxvals 0 p getinterval CTXvalstocws addtocws
                            Avals msg i get get addtocws
                            /mode A def
                            /i msglen def
                            exit
                        } if
                    } if
                } if
                encvals mode get msg i get get
                dup ctxvals exch p exch putinterval
                /p exch length p add def
                /i i 1 add def
            } loop

            % Backtrack to a boundary and return to ASCII
            mode A ne {
                {
                    p 3 mod 0 eq {exit} if
                    /i i 1 sub def
                    /p p encvals mode get msg i get get length sub def
                } loop
                [
                    ctxvals 0 p getinterval aload pop
                ] CTXvalstocws addtocws
                [unlcw] addtocws
                /mode A def
                % Encode something to avoid latching immediately back
                i msglen ne {
                    numD i get 2 ge {
                        2 string dup 0 msg i get put dup 1 msg i 1 add get put Avals exch get addtocws
                        /i i 2 add def
                    } {
                        Avals msg i get get addtocws
                        /i i 1 add def
                    } ifelse
                } if
            } if

        } bind def

        /encD {

            {  % loop

                numD i get 3 lt {

                    /Drem 8 Dbits length 8 mod sub 8 mod def
                    /remcws numremcws j Dbits length 8 idiv add get def

                    % Final codeword with no data
                    numremcws j Dbits length 8 idiv add 1 sub get 1 sub 0 eq
                    i msglen eq and {exit} if

                    % Final digit into final codeword as ASCII
                    i msglen 1 sub eq numD i get 1 eq and
                    remcws 1 eq and Drem 0 eq and {exit} if

                    % Latch to ASCII unless 4 or 6 bits remain in final codeword
                    i msglen 1 sub eq numD i get 1 eq and
                    remcws 1 eq and Drem 4 eq Drem 6 eq or and not {
                      /Dbits [ Dbits aload pop 1 1 1 1 1 1 ] def
                      /Drem 8 Dbits length 8 mod sub 8 mod def
                    } if

                    % Try to encode a digit in remaining bits
                    Drem 4 eq Drem 6 eq or {
                        numD i get 1 ge {
                            /Dbits [ Dbits aload pop msg i get 48 sub 1 add 4 tobin aload pop ] def
                            /i i 1 add def
                        } {
                            /Dbits [ Dbits aload pop 1 1 1 1 ] def
                        } ifelse
                        /Drem Drem 4 sub def
                    } if
                    Drem 2 eq {
                        /Dbits [ Dbits aload pop 0 1 ] def
                        /Drem 0 def
                    } if

                    exit

                } if

                % Three digit value plus one to ten bits
                /Dbits [
                    Dbits aload pop
                    0 msg i 3 getinterval {48 sub add 10 mul} forall 10 idiv
                    1 add 10 tobin aload pop
                ] def
                /i i 3 add def

            } loop

            mark
            0 8 Dbits length 1 sub {
                Dbits exch 8 getinterval 0 exch {add 2 mul} forall 2 idiv
            } for
            counttomark array astore exch pop addtocws
            /mode A def

        } bind def

        /encB {
            /p 0 def /bvals 1480 array def {
                i msglen eq {exit} if
                msg i get 0 lt {exit} if  % Function character
                lookup mode ne {exit} if
                bvals p msg i get put
                /p p 1 add def
                /i i 1 add def
            } loop
            /remcws numremcws j p add get 1 sub def
            /bvals [
                remcws 0 eq i msglen eq and {  % Terminates symbol
                    0
                } {
                    p 250 lt {p} {p 250 idiv 249 add p 250 mod} ifelse
                } ifelse
                bvals 0 p getinterval aload pop
            ] def
            bvals addtocws
            /mode A def
        } bind def

        % Derive the codewords
        /cws 1480 array def
        /mode A def /i 0 def /j 0 def {
            i msglen ge {exit} if
            [ /encA /encCTX /encCTX /encCTX /encD /encB ] mode get load exec
        } loop
        /cws cws 0 j getinterval def

    } ifelse

    % Select metrics of an appropriate symbol
    /i 0 def
    { % loop
        /m metrics i get def
        /vers m 0 get def           % Version of symbol
        /rows m 1 get def           % Rows in symbol
        /cols m 2 get def           % Columns in symbol
        /dcol m 3 get def           % Data columns in symbol
        /dcws m 4 get def           % Data codewords in symbol
        /rscw m 5 get def           % Error correction codewords
        /rsbl m 6 get def           % Error correction blocks
        /riso m 7 get def           % Riser offset
        /risi m 8 get def           % Riser interval
        /risl m 9 get def           % Riser length
        /dcpb dcws rsbl idiv def    % Data codewords per block
        /ecpb rscw rsbl idiv def    % Error codewords per block
        /okay true def
        version (unset) ne version vers ne and {/okay false def} if  % The version must match that supplied
        cws length dcws gt {/okay false def} if
        okay {exit} if
        /i i 1 add def
    } loop

    % Extend cws to ncws codewords by addition of pad characters
    stype not {
        /cws [ cws aload pop dcws cws length sub {129} repeat ] def
    } {
        /cws [ dcws cws length sub {0} repeat cws aload pop ] def
    } ifelse

    % De-interleave the codewords into blocks
    /cwbs rsbl array def  % Array of data codeword blocks
    /ecbs rsbl array def  % Array of error correction blocks
    0 1 rsbl 1 sub {
        /i exch def
        /cwb dcpb array def
        0 1 dcpb 1 sub {
            /j exch def
            cwb j cws j rsbl mul i add get put
        } for
        cwbs i cwb put
    } for

    % Log and anti-log tables and function to calculate product in the field
    /gf stype {32} {256} ifelse def
    /gf-1 gf 1 sub def
    /pm stype {37} {301} ifelse def
    /rsalog [ 1 gf-1 { dup 2 mul dup gf ge {pm xor} if } repeat ] def
    /rslog gf array def
    1 1 gf-1 {dup rsalog exch get exch rslog 3 1 roll put} for
    /rsprod {
        2 copy 0 ne exch 0 ne and {
            rslog exch get exch rslog exch get add gf-1 mod rsalog exch get
        } {
            pop pop 0
        } ifelse
    } bind def

    % Generate the coefficients for the Reed-Solomon algorithm
    /coeffs [ 1 ecpb {0} repeat ] def
    0 1 ecpb 1 sub {
        /i exch def
        coeffs i 1 add coeffs i get put
        i -1 1 {
            /j exch def
            coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod xor put
        } for
        coeffs 0 coeffs 0 get rsalog i get rsprod put
    } for
    /coeffs coeffs 0 coeffs length 1 sub getinterval def

    % Reed-Solomon algorithm to derive the error correction codewords
    0 1 cwbs length 1 sub {
        /i exch def
        /rscws [ cwbs i get aload pop ecpb {0} repeat ] def
        0 1 dcpb 1 sub {
            /m exch def
            /k rscws m get def
            0 1 ecpb 1 sub {
                /j exch def
                rscws m j add 1 add coeffs ecpb j sub 1 sub get k rsprod rscws m j add 1 add get xor put
            } for
        } for
        ecbs i rscws dcpb ecpb getinterval put
    } for

    % Extend codewords with the interleaved error correction codes
    /cws [ cws aload pop rscw {0} repeat ] def
    0 1 rscw 1 sub {
        /i exch def
        cws dcws i add ecbs i rsbl mod get i rsbl idiv get put
    } for

    % Module matrix for layout of the codewords
    /mmat dcws rscw add stype {5} {8} ifelse mul array def
    /r 0 def /c 0 def
    0 stype {2} {1} ifelse cws length 1 sub {
        /i exch def
        stype not {
            (00000000) 8 string copy dup cws i get 2 8 string cvrs
            dup length 8 exch sub exch putinterval [ exch {48 sub} forall ]
            dup 0 4 getinterval /top exch def
            4 4 getinterval /bot exch def
        } {
            (00000) 5 string copy dup cws i get 2 5 string cvrs
            dup length 5 exch sub exch putinterval [ exch {48 sub} forall ]
            /c1 exch def
            (00000) 5 string copy dup cws i 1 add get 2 5 string cvrs
            dup length 5 exch sub exch putinterval [ exch {48 sub} forall ]
            /c2 exch def
            /top [ c1 0 3 getinterval aload pop c2 0 2 getinterval aload pop ] def
            /bot [ c1 3 2 getinterval aload pop c2 2 3 getinterval aload pop ] def
        } ifelse
        mmat r dcol mul c add top putinterval
        mmat r 1 add dcol mul c add bot putinterval
        /c c top length add def
        c dcol eq {/c 0 def /r r 2 add def} if
    } for

    % Create bitmap and add finder patterns
    /mmv {cols mul add} bind def
    /pixs [ rows cols mul {-1} repeat ] def

    % Centre pattern
    /artifact [
        {cols {0} repeat} bind
        {cols {1} repeat} bind
        {0   cols 2 sub {1} repeat   0} bind
        {0 1 cols 4 sub {0} repeat 1 0} bind
        {cols 1 sub 2 idiv {-1} repeat 1 cols 1 sub 2 idiv {-1} repeat} bind
        {cols 1 sub 2 idiv {-1} repeat 0 cols 1 sub 2 idiv {-1} repeat} bind
        {1   cols 2 sub {0} repeat   1} bind
        {1 0 cols 4 sub {1} repeat 0 1} bind
    ] def
    /cpat <<
        /A (121343)
        /B (12134343)
        /C (12121343)
        /D (1213434343)
        /E (1212134343)
        /F (1212121343)
        /G (121213434343)
        /H (121212134343)
        /S (56661278)
        /T (5666666666127878)
    >> vers 0 1 getinterval get def
    pixs 0 rows cpat length sub 2 idiv mmv
    [ cpat {artifact exch 49 sub get exec} forall ] putinterval

    % Risers
    0 1 risl 1 sub {
        /i exch def
        riso risi cols 1 sub {
            /j exch def
            [ 1 i 12 mod 0 eq {1} {0} ifelse ] dup
            pixs j i mmv
            3 -1 roll putinterval
            i risl 1 sub ne {
                pixs cols j sub 2 sub rows i sub 1 sub mmv
                3 -1 roll putinterval
            } {pop} ifelse
        } for
    } for

    % Black dots
    <<
        /A [ [12 5] ]
        /B [ [16 7] ]
        /C [ [26 12] ]
        /D []
        /E [ [26 23] ]
        /F [ [26 32] [70 32] [26 34] [70 34] ]
        /G [ [27 48] [69 48] ]
        /H [ [26 70] [66 70] [106 70] [26 72] [66 72] [106 72] ]
        /S-10 []
        /S-20 [ [10 4] ]
        /S-30 [ [15 4] [15 6] ]
        /T-16 [ [8 10] ]
        /T-32 [ [16 10] [16 12] ]
        /T-48 [ [24 10] [24 12] [24 14] ]
    >> vers get {pixs exch aload pop mmv 1 put} forall

    % Place the modules onto a pixel map between alignment patterns
    /j 0 def
    0 1 pixs length 1 sub {
        /i exch def
        pixs i get -1 eq {
            pixs i mmat j get put
            /j j 1 add def
        } if
    } for

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx cols
    /pixy rows
    /height rows 72 div 2 mul
    /width cols 72 div 2 mul
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /codeone dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER codeone--

% --BEGIN ENCODER hanxin--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: Han Xin Code
% --EXAM: This is Han Xin
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp hanxin 0.0 2019110800 305417 348672
%%BeginData:        888 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hanxin {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /version (unset) def   % 1-84
    /eclevel (unset) def   % L1, L2, L3 or L4
    /parse false def
    /parsefnc false def
    /mask -1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /mask mask cvi def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Convert input into bytes accounting for FNC characters
    /fncvals <<
        % No FNC characters defined
    >> def
    /msg barlen array def
    /i 0 def /j 0 def {
        i barlen eq {exit} if
        /char barcode i get def
        parsefnc char 94 eq and i barlen 4 sub lt and {
            barcode i 1 add get 94 ne {
                /char fncvals barcode i 1 add 4 getinterval get def
                /i i 4 add def
            } {
                /i i 1 add def
            } ifelse
        } if
        msg j char put
        /i i 1 add def
        /j j 1 add def
    } loop
    /msg msg 0 j getinterval def
    /msglen msg length def

    % Default error correction level
    eclevel (unset) eq {/eclevel (L2) def} if

    /tobin {
        string dup length 1 sub 0 exch 1 exch {1 index exch 48 put} for
        dup 3 -1 roll 2 2 index length string cvrs
        dup length 2 index length exch sub exch putinterval
    } bind def

    % Encode the data using byte mode encoding
    /bits 4 13 add msglen 8 mul add string def
    bits 0 (0011) putinterval
    bits 4 msglen 13 tobin putinterval
    0 1 msglen 1 sub {
        /i exch def
        bits 17 i 8 mul add msg i get 8 tobin putinterval
    } for

    % Lookup the most appropriate symbol specification
    /metrics [
        % vers size  align  modules            error correction blocks
        [ (1)    23  -1  0    205  [  1  21   4 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  17   8 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  13  12 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1   9  16 ] [  0  -1  -1 ] [  0  -1  -1 ] ]
        [ (2)    25  -1  0    301  [  1  31   6 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  25  12 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  19  18 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  15  22 ] [  0  -1  -1 ] [  0  -1  -1 ] ]
        [ (3)    27  -1  0    405  [  1  42   8 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  34  16 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  26  24 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  20  30 ] [  0  -1  -1 ] [  0  -1  -1 ] ]
        [ (4)    29  14  1    439  [  1  46   8 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  38  16 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  30  24 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  22  32 ] [  0  -1  -1 ] [  0  -1  -1 ] ]
        [ (5)    31  16  1    555  [  1  57  12 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  49  20 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  37  32 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  14  20 ] [  1  13  22 ] [  0  -1  -1 ] ]
        [ (6)    33  16  1    675  [  1  70  14 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  58  26 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  24  20 ] [  1  22  18 ] [  0  -1  -1 ]
                                   [  1  16  24 ] [  1  18  26 ] [  0  -1  -1 ] ]
        [ (7)    35  17  1    805  [  1  84  16 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  70  30 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  26  22 ] [  1  28  24 ] [  0  -1  -1 ]
                                   [  2  14  20 ] [  1  12  20 ] [  0  -1  -1 ] ]
        [ (8)    37  18  1    943  [  1  99  18 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  40  18 ] [  1  41  18 ] [  0  -1  -1 ]
                                   [  1  31  26 ] [  1  32  28 ] [  0  -1  -1 ]
                                   [  2  16  24 ] [  1  15  22 ] [  0  -1  -1 ] ]
        [ (9)    39  19  1   1089  [  1 114  22 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  2  48  20 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  2  24  20 ] [  1  26  22 ] [  0  -1  -1 ]
                                   [  2  18  28 ] [  1  18  26 ] [  0  -1  -1 ] ]
        [ (10)   41  20  1   1243  [  1 131  24 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  52  22 ] [  1  57  24 ] [  0  -1  -1 ]
                                   [  2  27  24 ] [  1  29  24 ] [  0  -1  -1 ]
                                   [  2  21  32 ] [  1  19  30 ] [  0  -1  -1 ] ]
        [ (11)   43  14  2   1289  [  1 135  26 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  56  24 ] [  1  57  24 ] [  0  -1  -1 ]
                                   [  2  28  24 ] [  1  31  26 ] [  0  -1  -1 ]
                                   [  2  22  32 ] [  1  21  32 ] [  0  -1  -1 ] ]
        [ (12)   45  15  2   1455  [  1 153  28 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  1  62  26 ] [  1  65  28 ] [  0  -1  -1 ]
                                   [  2  32  28 ] [  1  33  28 ] [  0  -1  -1 ]
                                   [  3  17  26 ] [  1  22  30 ] [  0  -1  -1 ] ]
        [ (13)   47  16  2   1629  [  1  86  16 ] [  1  85  16 ] [  0  -1  -1 ]
                                   [  1  71  30 ] [  1  72  30 ] [  0  -1  -1 ]
                                   [  2  37  32 ] [  1  35  30 ] [  0  -1  -1 ]
                                   [  3  20  30 ] [  1  21  32 ] [  0  -1  -1 ] ]
        [ (14)   49  16  2   1805  [  1  94  18 ] [  1  95  18 ] [  0  -1  -1 ]
                                   [  2  51  22 ] [  1  55  24 ] [  0  -1  -1 ]
                                   [  3  30  26 ] [  1  31  26 ] [  0  -1  -1 ]
                                   [  4  18  28 ] [  1  17  24 ] [  0  -1  -1 ] ]
        [ (15)   51  17  2   1995  [  1 104  20 ] [  1 105  20 ] [  0  -1  -1 ]
                                   [  2  57  24 ] [  1  61  26 ] [  0  -1  -1 ]
                                   [  3  33  28 ] [  1  36  30 ] [  0  -1  -1 ]
                                   [  4  20  30 ] [  1  19  30 ] [  0  -1  -1 ] ]
        [ (16)   53  17  2   2187  [  1 115  22 ] [  1 114  22 ] [  0  -1  -1 ]
                                   [  2  65  28 ] [  1  61  26 ] [  0  -1  -1 ]
                                   [  3  38  32 ] [  1  33  30 ] [  0  -1  -1 ]
                                   [  5  19  28 ] [  1  14  24 ] [  0  -1  -1 ] ]
        [ (17)   55  18  2   2393  [  1 126  24 ] [  1 125  24 ] [  0  -1  -1 ]
                                   [  2  70  30 ] [  1  69  30 ] [  0  -1  -1 ]
                                   [  4  33  28 ] [  1  29  26 ] [  0  -1  -1 ]
                                   [  5  20  30 ] [  1  19  30 ] [  0  -1  -1 ] ]
        [ (18)   57  19  2   2607  [  1 136  26 ] [  1 137  26 ] [  0  -1  -1 ]
                                   [  3  56  24 ] [  1  59  26 ] [  0  -1  -1 ]
                                   [  5  35  30 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  6  18  28 ] [  1  21  28 ] [  0  -1  -1 ] ]
        [ (19)   59  20  2   2829  [  1 148  28 ] [  1 149  28 ] [  0  -1  -1 ]
                                   [  3  61  26 ] [  1  64  28 ] [  0  -1  -1 ]
                                   [  7  24  20 ] [  1  23  22 ] [  0  -1  -1 ]
                                   [  6  20  30 ] [  1  21  32 ] [  0  -1  -1 ] ]
        [ (20)   61  20  2   3053  [  3 107  20 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  3  65  28 ] [  1  72  30 ] [  0  -1  -1 ]
                                   [  7  26  22 ] [  1  23  22 ] [  0  -1  -1 ]
                                   [  7  19  28 ] [  1  20  32 ] [  0  -1  -1 ] ]
        [ (21)   63  21  2   3291  [  3 115  22 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  4  56  24 ] [  1  63  28 ] [  0  -1  -1 ]
                                   [  7  28  24 ] [  1  25  22 ] [  0  -1  -1 ]
                                   [  8  18  28 ] [  1  21  22 ] [  0  -1  -1 ] ]
        [ (22)   65  16  3   3383  [  2 116  22 ] [  1 122  24 ] [  0  -1  -1 ]
                                   [  4  56  24 ] [  1  72  30 ] [  0  -1  -1 ]
                                   [  7  28  24 ] [  1  32  26 ] [  0  -1  -1 ]
                                   [  8  18  28 ] [  1  24  30 ] [  0  -1  -1 ] ]
        [ (23)   67  17  3   3631  [  3 127  24 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  5  51  22 ] [  1  62  26 ] [  0  -1  -1 ]
                                   [  7  30  26 ] [  1  35  26 ] [  0  -1  -1 ]
                                   [  8  20  30 ] [  1  21  32 ] [  0  -1  -1 ] ]
        [ (24)   69  17  3   3887  [  2 135  26 ] [  1 137  26 ] [  0  -1  -1 ]
                                   [  5  56  24 ] [  1  59  26 ] [  0  -1  -1 ]
                                   [  7  33  28 ] [  1  30  28 ] [  0  -1  -1 ]
                                   [ 11  16  24 ] [  1  19  26 ] [  0  -1  -1 ] ]
        [ (25)   71  18  3   4151  [  3 105  20 ] [  1 121  22 ] [  0  -1  -1 ]
                                   [  5  61  26 ] [  1  57  26 ] [  0  -1  -1 ]
                                   [  9  28  24 ] [  1  28  22 ] [  0  -1  -1 ]
                                   [ 10  19  28 ] [  1  18  30 ] [  0  -1  -1 ] ]
        [ (26)   73  18  3   4423  [  2 157  30 ] [  1 150  28 ] [  0  -1  -1 ]
                                   [  5  65  28 ] [  1  61  26 ] [  0  -1  -1 ]
                                   [  8  33  28 ] [  1  34  30 ] [  0  -1  -1 ]
                                   [ 10  19  28 ] [  2  15  26 ] [  0  -1  -1 ] ]
        [ (27)   75  19  3   4703  [  3 126  24 ] [  1 115  22 ] [  0  -1  -1 ]
                                   [  7  51  22 ] [  1  54  22 ] [  0  -1  -1 ]
                                   [  8  35  30 ] [  1  37  30 ] [  0  -1  -1 ]
                                   [ 15  15  22 ] [  1  10  22 ] [  0  -1  -1 ] ]
        [ (28)   77  19  3   4991  [  4 105  20 ] [  1 103  20 ] [  0  -1  -1 ]
                                   [  7  56  24 ] [  1  45  18 ] [  0  -1  -1 ]
                                   [ 10  31  26 ] [  1  27  26 ] [  0  -1  -1 ]
                                   [ 10  17  26 ] [  3  20  28 ] [  1  21  28 ] ]
        [ (29)   79  20  3   5287  [  3 139  26 ] [  1 137  28 ] [  0  -1  -1 ]
                                   [  6  66  28 ] [  1  66  30 ] [  0  -1  -1 ]
                                   [  9  36  30 ] [  1  34  32 ] [  0  -1  -1 ]
                                   [ 13  19  28 ] [  1  17  32 ] [  0  -1  -1 ] ]
        [ (30)   81  20  3   5591  [  6  84  16 ] [  1  82  16 ] [  0  -1  -1 ]
                                   [  6  70  30 ] [  1  68  30 ] [  0  -1  -1 ]
                                   [  7  35  30 ] [  3  33  28 ] [  1  32  28 ]
                                   [ 13  20  30 ] [  1  20  28 ] [  0  -1  -1 ] ]
        [ (31)   83  21  3   5903  [  5 105  20 ] [  1  94  18 ] [  0  -1  -1 ]
                                   [  6  74  32 ] [  1  71  30 ] [  0  -1  -1 ]
                                   [ 11  33  28 ] [  1  34  32 ] [  0  -1  -1 ]
                                   [ 13  19  28 ] [  3  16  26 ] [  0  -1  -1 ] ]
        [ (32)   85  17  4   6033  [  4 127  24 ] [  1 126  24 ] [  0  -1  -1 ]
                                   [  7  66  28 ] [  1  66  30 ] [  0  -1  -1 ]
                                   [ 12  30  24 ] [  1  24  28 ] [  1  24  30 ]
                                   [ 15  19  28 ] [  1  17  32 ] [  0  -1  -1 ] ]
        [ (33)   87  17  4   6353  [  7  84  16 ] [  1  78  16 ] [  0  -1  -1 ]
                                   [  7  70  30 ] [  1  66  28 ] [  0  -1  -1 ]
                                   [ 12  33  28 ] [  1  32  30 ] [  0  -1  -1 ]
                                   [ 14  21  32 ] [  1  24  28 ] [  0  -1  -1 ] ]
        [ (34)   89  18  4   6689  [  5 117  22 ] [  1 117  24 ] [  0  -1  -1 ]
                                   [  8  66  28 ] [  1  58  26 ] [  0  -1  -1 ]
                                   [ 11  38  32 ] [  1  34  32 ] [  0  -1  -1 ]
                                   [ 15  20  30 ] [  2  17  26 ] [  0  -1  -1 ] ]
        [ (35)   91  18  4   7025  [  4 148  28 ] [  1 146  28 ] [  0  -1  -1 ]
                                   [  8  68  30 ] [  1  70  24 ] [  0  -1  -1 ]
                                   [ 10  36  32 ] [  3  38  28 ] [  0  -1  -1 ]
                                   [ 16  19  28 ] [  3  16  26 ] [  0  -1  -1 ] ]
        [ (36)   93  19  4   7377  [  4 126  24 ] [  2 135  26 ] [  0  -1  -1 ]
                                   [  8  70  28 ] [  2  43  26 ] [  0  -1  -1 ]
                                   [ 13  32  28 ] [  2  41  30 ] [  0  -1  -1 ]
                                   [ 17  19  28 ] [  3  15  26 ] [  0  -1  -1 ] ]
        [ (37)   95  19  4   7729  [  5 136  26 ] [  1 132  24 ] [  0  -1  -1 ]
                                   [  5  67  30 ] [  4  68  28 ] [  1  69  28 ]
                                   [ 14  35  30 ] [  1  32  24 ] [  0  -1  -1 ]
                                   [ 18  18  26 ] [  3  16  28 ] [  1  14  28 ] ]
        [ (38)   97  19  4   8089  [  3 142  26 ] [  3 141  28 ] [  0  -1  -1 ]
                                   [  8  70  30 ] [  1  73  32 ] [  1  74  32 ]
                                   [ 12  34  30 ] [  3  34  26 ] [  1  35  28 ]
                                   [ 18  21  32 ] [  1  27  30 ] [  0  -1  -1 ] ]
        [ (39)   99  20  4   8465  [  5 116  22 ] [  2 103  20 ] [  1 102  20 ]
                                   [  9  74  32 ] [  1  74  30 ] [  0  -1  -1 ]
                                   [ 14  34  28 ] [  2  32  32 ] [  1  32  30 ]
                                   [ 19  21  32 ] [  1  25  26 ] [  0  -1  -1 ] ]
        [ (40)  101  20  4   8841  [  7 116  22 ] [  1 117  22 ] [  0  -1  -1 ]
                                   [ 11  65  28 ] [  1  58  24 ] [  0  -1  -1 ]
                                   [ 15  38  32 ] [  1  27  28 ] [  0  -1  -1 ]
                                   [ 20  20  30 ] [  1  20  32 ] [  1  21  32 ] ]
        [ (41)  103  17  5   9009  [  6 136  26 ] [  1 130  24 ] [  0  -1  -1 ]
                                   [ 11  66  28 ] [  1  62  30 ] [  0  -1  -1 ]
                                   [ 14  34  28 ] [  3  34  32 ] [  1  30  30 ]
                                   [ 18  20  30 ] [  3  20  28 ] [  2  15  26 ] ]
        [ (42)  105  17  5   9401  [  5 105  20 ] [  2 115  22 ] [  2 116  22 ]
                                   [ 10  75  32 ] [  1  73  32 ] [  0  -1  -1 ]
                                   [ 16  38  32 ] [  1  27  28 ] [  0  -1  -1 ]
                                   [ 22  19  28 ] [  2  16  30 ] [  1  19  30 ] ]
        [ (43)  107  18  5   9799  [  6 147  28 ] [  1 146  28 ] [  0  -1  -1 ]
                                   [ 11  66  28 ] [  2  65  30 ] [  0  -1  -1 ]
                                   [ 18  33  28 ] [  2  33  30 ] [  0  -1  -1 ]
                                   [ 22  21  32 ] [  1  28  30 ] [  0  -1  -1 ] ]
        [ (44)  109  18  5  10207  [  6 116  22 ] [  3 125  24 ] [  0  -1  -1 ]
                                   [ 11  75  32 ] [  1  68  30 ] [  0  -1  -1 ]
                                   [ 13  35  28 ] [  6  34  32 ] [  1  30  30 ]
                                   [ 23  21  32 ] [  1  26  30 ] [  0  -1  -1 ] ]
        [ (45)  111  18  5  10623  [  7 105  20 ] [  4  95  18 ] [  0  -1  -1 ]
                                   [ 12  67  28 ] [  1  63  30 ] [  1  62  32 ]
                                   [ 21  31  26 ] [  2  33  32 ] [  0  -1  -1 ]
                                   [ 23  21  32 ] [  2  24  30 ] [  0  -1  -1 ] ]
        [ (46)  113  19  5  11045  [ 10 116  22 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [ 12  74  32 ] [  1  78  30 ] [  0  -1  -1 ]
                                   [ 18  37  32 ] [  1  39  30 ] [  1  41  28 ]
                                   [ 25  21  32 ] [  1  27  28 ] [  0  -1  -1 ] ]
        [ (47)  115  19  5  11477  [  5 126  24 ] [  4 115  22 ] [  1 114  22 ]
                                   [ 12  67  28 ] [  2  66  32 ] [  1  68  30 ]
                                   [ 21  35  30 ] [  1  39  30 ] [  0  -1  -1 ]
                                   [ 26  21  32 ] [  1  28  28 ] [  0  -1  -1 ] ]
        [ (48)  117  19  5  11917  [  9 126  24 ] [  1 117  22 ] [  0  -1  -1 ]
                                   [ 13  75  32 ] [  1  68  30 ] [  0  -1  -1 ]
                                   [ 20  35  30 ] [  3  35  28 ] [  0  -1  -1 ]
                                   [ 27  21  32 ] [  1  28  30 ] [  0  -1  -1 ] ]
        [ (49)  119  17  6  12111  [  9 126  24 ] [  1 137  26 ] [  0  -1  -1 ]
                                   [ 13  71  30 ] [  2  68  32 ] [  0  -1  -1 ]
                                   [ 20  37  32 ] [  1  39  28 ] [  1  38  28 ]
                                   [ 24  20  32 ] [  5  25  28 ] [  0  -1  -1 ] ]
        [ (50)  121  17  6  12559  [  8 147  28 ] [  1 141  28 ] [  0  -1  -1 ]
                                   [ 10  73  32 ] [  4  74  30 ] [  1  73  30 ]
                                   [ 16  36  32 ] [  6  39  30 ] [  1  37  30 ]
                                   [ 27  21  32 ] [  3  20  26 ] [  0  -1  -1 ] ]
        [ (51)  123  18  6  13025  [  9 137  26 ] [  1 135  26 ] [  0  -1  -1 ]
                                   [ 12  70  30 ] [  4  75  32 ] [  0  -1  -1 ]
                                   [ 24  35  30 ] [  1  40  28 ] [  0  -1  -1 ]
                                   [ 23  20  32 ] [  8  24  30 ] [  0  -1  -1 ] ]
        [ (52)  125  18  6  13489  [ 14  95  18 ] [  1  86  18 ] [  0  -1  -1 ]
                                   [ 13  73  32 ] [  3  77  30 ] [  0  -1  -1 ]
                                   [ 24  35  30 ] [  2  35  28 ] [  0  -1  -1 ]
                                   [ 26  21  32 ] [  5  21  30 ] [  1  23  30 ] ]
        [ (53)  127  18  6  13961  [  9 147  28 ] [  1 142  28 ] [  0  -1  -1 ]
                                   [ 10  73  30 ] [  6  70  32 ] [  1  71  32 ]
                                   [ 25  35  30 ] [  2  34  26 ] [  0  -1  -1 ]
                                   [ 29  21  32 ] [  4  22  30 ] [  0  -1  -1 ] ]
        [ (54)  129  18  6  14441  [ 11 126  24 ] [  1 131  24 ] [  0  -1  -1 ]
                                   [ 16  74  32 ] [  1  79  30 ] [  0  -1  -1 ]
                                   [ 25  38  32 ] [  1  25  30 ] [  0  -1  -1 ]
                                   [ 33  21  32 ] [  1  28  28 ] [  0  -1  -1 ] ]
        [ (55)  131  19  6  14939  [ 14 105  20 ] [  1  99  18 ] [  0  -1  -1 ]
                                   [ 19  65  28 ] [  1  72  28 ] [  0  -1  -1 ]
                                   [ 24  37  32 ] [  2  40  30 ] [  1  41  30 ]
                                   [ 31  21  32 ] [  4  24  32 ] [  0  -1  -1 ] ]
        [ (56)  133  19  6  15435  [ 10 147  28 ] [  1 151  28 ] [  0  -1  -1 ]
                                   [ 15  71  30 ] [  3  71  32 ] [  1  73  32 ]
                                   [ 24  37  32 ] [  3  38  30 ] [  1  39  30 ]
                                   [ 36  19  30 ] [  3  29  26 ] [  0  -1  -1 ] ]
        [ (57)  135  19  6  15939  [ 15 105  20 ] [  1  99  18 ] [  0  -1  -1 ]
                                   [ 19  70  30 ] [  1  64  28 ] [  0  -1  -1 ]
                                   [ 27  38  32 ] [  2  25  26 ] [  0  -1  -1 ]
                                   [ 38  20  30 ] [  2  18  28 ] [  0  -1  -1 ] ]
        [ (58)  137  17  7  16171  [ 14 105  20 ] [  1 113  22 ] [  1 114  22 ]
                                   [ 17  67  30 ] [  3  92  32 ] [  0  -1  -1 ]
                                   [ 30  35  30 ] [  1  41  30 ] [  0  -1  -1 ]
                                   [ 36  21  32 ] [  1  26  30 ] [  1  27  30 ] ]
        [ (59)  139  17  7  16691  [ 11 146  28 ] [  1 146  26 ] [  0  -1  -1 ]
                                   [ 20  70  30 ] [  1  60  26 ] [  0  -1  -1 ]
                                   [ 29  38  32 ] [  1  24  32 ] [  0  -1  -1 ]
                                   [ 40  20  30 ] [  2  17  26 ] [  0  -1  -1 ] ]
        [ (60)  141  18  7  17215  [  3 137  26 ] [  1 136  26 ] [ 10 126  24 ]
                                   [ 22  65  28 ] [  1  75  30 ] [  0  -1  -1 ]
                                   [ 30  37  32 ] [  1  51  30 ] [  0  -1  -1 ]
                                   [ 42  20  30 ] [  1  21  30 ] [  0  -1  -1 ] ]
        [ (61)  143  18  7  17751  [ 12 126  24 ] [  2 118  22 ] [  1 116  22 ]
                                   [ 19  74  32 ] [  1  74  30 ] [  1  72  28 ]
                                   [ 30  38  32 ] [  2  29  30 ] [  0  -1  -1 ]
                                   [ 39  20  32 ] [  2  37  26 ] [  1  38  26 ] ]
        [ (62)  145  18  7  18295  [ 12 126  24 ] [  3 136  26 ] [  0  -1  -1 ]
                                   [ 21  70  30 ] [  2  65  28 ] [  0  -1  -1 ]
                                   [ 34  35  30 ] [  1  44  32 ] [  0  -1  -1 ]
                                   [ 42  20  30 ] [  2  19  28 ] [  2  18  28 ] ]
        [ (63)  147  18  7  18847  [ 12 126  24 ] [  3 117  22 ] [  1 116  22 ]
                                   [ 25  61  26 ] [  2  62  28 ] [  0  -1  -1 ]
                                   [ 34  35  30 ] [  1  40  32 ] [  1  41  32 ]
                                   [ 45  20  30 ] [  1  20  32 ] [  1  21  32 ] ]
        [ (64)  149  19  7  19403  [ 15 105  20 ] [  2 115  22 ] [  2 116  22 ]
                                   [ 25  65  28 ] [  1  72  28 ] [  0  -1  -1 ]
                                   [ 18  35  30 ] [ 17  37  32 ] [  1  50  32 ]
                                   [ 42  20  30 ] [  6  19  28 ] [  1  15  28 ] ]
        [ (65)  151  19  7  19971  [ 19 105  20 ] [  1 101  20 ] [  0  -1  -1 ]
                                   [ 33  51  22 ] [  1  65  22 ] [  0  -1  -1 ]
                                   [ 40  33  28 ] [  1  28  28 ] [  0  -1  -1 ]
                                   [ 49  20  30 ] [  1  18  28 ] [  0  -1  -1 ] ]
        [ (66)  153  17  8  20229  [ 18 105  20 ] [  2 117  22 ] [  0  -1  -1 ]
                                   [ 26  65  28 ] [  1  80  30 ] [  0  -1  -1 ]
                                   [ 35  35  30 ] [  3  35  28 ] [  1  36  28 ]
                                   [ 52  18  28 ] [  2  38  30 ] [  0  -1  -1 ] ]
        [ (67)  155  17  8  20805  [ 26  84  16 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [ 26  70  30 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [ 45  31  26 ] [  1   9  26 ] [  0  -1  -1 ]
                                   [ 52  20  30 ] [  0  -1  -1 ] [  0  -1  -1 ] ]
        [ (68)  157  17  8  21389  [ 16 126  24 ] [  1 114  22 ] [  1 115  22 ]
                                   [ 23  70  30 ] [  3  65  28 ] [  1  66  28 ]
                                   [ 40  35  30 ] [  1  43  30 ] [  0  -1  -1 ]
                                   [ 46  20  30 ] [  7  19  28 ] [  1  16  28 ] ]
        [ (69)  159  18  8  21993  [ 19 116  22 ] [  1 105  22 ] [  0  -1  -1 ]
                                   [ 20  70  30 ] [  7  66  28 ] [  1  63  28 ]
                                   [ 40  35  30 ] [  1  42  32 ] [  1  43  32 ]
                                   [ 54  20  30 ] [  1  19  30 ] [  0  -1  -1 ] ]
        [ (70)  161  18  8  22593  [ 17 126  24 ] [  2 115  22 ] [  0  -1  -1 ]
                                   [ 24  70  30 ] [  4  74  32 ] [  0  -1  -1 ]
                                   [ 48  31  26 ] [  2  18  26 ] [  0  -1  -1 ]
                                   [ 54  19  28 ] [  6  15  26 ] [  1  14  26 ] ]
        [ (71)  163  18  8  23201  [ 29  84  16 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [ 29  70  30 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [  6  34  30 ] [  3  36  30 ] [ 38  33  28 ]
                                   [ 58  20  30 ] [  0  -1  -1 ] [  0  -1  -1 ] ]
        [ (72)  165  18  8  23817  [ 16 147  28 ] [  1 149  28 ] [  0  -1  -1 ]
                                   [ 31  66  28 ] [  1  37  26 ] [  0  -1  -1 ]
                                   [ 48  33  28 ] [  1  23  26 ] [  0  -1  -1 ]
                                   [ 53  20  30 ] [  6  19  28 ] [  1  17  28 ] ]
        [ (73)  167  19  8  24453  [ 20 115  22 ] [  2 134  24 ] [  0  -1  -1 ]
                                   [ 29  66  28 ] [  2  56  26 ] [  2  57  26 ]
                                   [ 45  36  30 ] [  2  15  28 ] [  0  -1  -1 ]
                                   [ 59  20  30 ] [  2  21  32 ] [  0  -1  -1 ] ]
        [ (74)  169  19  8  25085  [ 17 147  28 ] [  1 134  26 ] [  0  -1  -1 ]
                                   [ 26  70  30 ] [  5  75  32 ] [  0  -1  -1 ]
                                   [ 47  35  30 ] [  1  48  32 ] [  0  -1  -1 ]
                                   [ 64  18  28 ] [  2  33  30 ] [  1  35  30 ] ]
        [ (75)  171  17  9  25373  [ 22 115  22 ] [  1 133  24 ] [  0  -1  -1 ]
                                   [ 33  65  28 ] [  1  74  28 ] [  0  -1  -1 ]
                                   [ 43  36  30 ] [  5  27  28 ] [  1  30  28 ]
                                   [ 57  20  30 ] [  5  21  32 ] [  1  24  32 ] ]
        [ (76)  173  17  9  26021  [ 18 136  26 ] [  2 142  26 ] [  0  -1  -1 ]
                                   [ 33  66  28 ] [  2  49  26 ] [  0  -1  -1 ]
                                   [ 48  35  30 ] [  2  38  28 ] [  0  -1  -1 ]
                                   [ 64  20  30 ] [  1  20  32 ] [  0  -1  -1 ] ]
        [ (77)  175  17  9  26677  [ 19 126  24 ] [  2 135  26 ] [  1 136  26 ]
                                   [ 32  66  28 ] [  2  55  26 ] [  2  56  26 ]
                                   [ 49  36  30 ] [  2  18  32 ] [  0  -1  -1 ]
                                   [ 65  18  28 ] [  5  27  30 ] [  1  29  30 ] ]
        [ (78)  177  18  9  27335  [ 20 137  26 ] [  1 130  26 ] [  0  -1  -1 ]
                                   [ 30  75  32 ] [  2  71  32 ] [  0  -1  -1 ]
                                   [ 46  35  30 ] [  6  39  32 ] [  0  -1  -1 ]
                                   [  3  12  30 ] [ 70  19  28 ] [  0  -1  -1 ] ]
        [ (79)  179  18  9  28007  [ 20 147  28 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [ 35  70  30 ] [  0  -1  -1 ] [  0  -1  -1 ]
                                   [ 49  35  30 ] [  5  35  28 ] [  0  -1  -1 ]
                                   [ 70  20  30 ] [  0  -1  -1 ] [  0  -1  -1 ] ]
        [ (80)  181  18  9  28687  [ 21 136  26 ] [  1 155  28 ] [  0  -1  -1 ]
                                   [ 34  70  30 ] [  1  64  28 ] [  1  65  28 ]
                                   [ 54  35  30 ] [  1  45  30 ] [  0  -1  -1 ]
                                   [ 68  20  30 ] [  3  18  28 ] [  1  19  28 ] ]
        [ (81)  183  18  9  29375  [ 19 126  24 ] [  5 115  22 ] [  1 114  22 ]
                                   [ 33  70  30 ] [  3  65  28 ] [  1  64  28 ]
                                   [ 52  35  30 ] [  3  41  32 ] [  1  40  32 ]
                                   [ 67  20  30 ] [  5  21  32 ] [  1  24  32 ] ]
        [ (82)  185  18  9  30071  [  2 150  28 ] [ 21 136  26 ] [  0  -1  -1 ]
                                   [ 32  70  30 ] [  6  65  28 ] [  0  -1  -1 ]
                                   [ 52  38  32 ] [  2  27  32 ] [  0  -1  -1 ]
                                   [ 73  20  30 ] [  2  22  32 ] [  0  -1  -1 ] ]
        [ (83)  187  17 10  30387  [ 21 126  24 ] [  4 136  26 ] [  0  -1  -1 ]
                                   [ 30  74  32 ] [  6  73  30 ] [  0  -1  -1 ]
                                   [ 54  35  30 ] [  4  40  32 ] [  0  -1  -1 ]
                                   [ 75  20  30 ] [  1  20  28 ] [  0  -1  -1 ] ]
        [ (84)  189  17 10  31091  [ 30 105  20 ] [  1 114  22 ] [  0  -1  -1 ]
                                   [  3  45  22 ] [ 55  47  20 ] [  0  -1  -1 ]
                                   [  2  26  26 ] [ 62  33  28 ] [  0  -1  -1 ]
                                   [ 79  18  28 ] [  4  33  30 ] [  0  -1  -1 ] ]
    ] def

    /eclval eclevel 1 get 49 sub def
    0 1 83 {
        /i exch def
        /m metrics i get def
        /vers m 0 get def                             % Version of symbol
        /size m 1 get def                             % Length of side
        /alnk m 2 get def                             % Regular alignment pattern length
        /alnn m 3 get def                             % Number of alignment patterns
        /alnr size alnk alnn mul sub def              % Remainder alignment pattern length
        /nmod m 4 get def                             % Number of modules
        /ncws nmod 8 idiv def                         % Total number of codewords
        /rbit nmod 8 mod def                          % Number of remainder bits
        /ecbs m 5 eclval 3 mul add 3 getinterval def  % Error correction blocks
        /ecws 0 ecbs {dup 0 get exch 2 get mul add} forall def  % Number of error correction codewords
        /dcws ncws ecws sub def                       % Number of data codewords
        /dmod dcws 8 mul def                          % Number of data modules
        /okay true def
        version (unset) ne version vers ne and {/okay false def} if  % The version must match that supplied
        bits length dmod gt {/okay false def} if      % Bitstream must fit into data modules
        okay {exit} if
    } for

    okay not {
        /bwipp.hanxinNoValidSymbol (No valid symbol available) //raiseerror exec
    } if

    /version vers def
    /msgbits bits def
    /e1nb   ecbs 0 get 0 get def  /e2nb   ecbs 1 get 0 get def  /e3nb   ecbs 2 get 0 get def
    /e1dcws ecbs 0 get 1 get def  /e2dcws ecbs 1 get 1 get def  /e3dcws ecbs 2 get 1 get def
    /e1ecws ecbs 0 get 2 get def  /e2ecws ecbs 1 get 2 get def  /e3ecws ecbs 2 get 2 get def

    % Expand the message bits by adding padding as necessary
    /pad dmod string def
    0 1 pad length 1 sub {pad exch 48 put} for
    pad 0 msgbits putinterval

    % Evaluate the padded message into codewords
    /cws dcws array def
    0 1 cws length 1 sub {
        /c exch def
        /cwb pad c 8 mul 8 getinterval def
        /cw 0 def
        0 1 7 {
            /i exch def
            /cw cw 2 8 i sub 1 sub exp cvi cwb i get 48 sub mul add def
        } for
        cws c cw put
    } for

    /rscodes {

        /rspm exch def
        /rsgf exch def
        /rsnc exch def
        /rscws exch def

        % Calculate the log and anti-log tables
        /rsalog [ 1 rsgf 1 sub { dup 2 mul dup rsgf ge {rspm xor} if } repeat ] def
        /rslog rsgf array def
        1 1 rsgf 1 sub {dup rsalog exch get exch rslog 3 1 roll put} for

        % Function to calculate the product in the field
        /rsprod {
            2 copy 0 ne exch 0 ne and {
                rslog exch get exch rslog exch get add rsgf 1 sub mod rsalog exch get
            } {
                pop pop 0
            } ifelse
        } bind def

        % Generate the coefficients
        /coeffs [ 1 rsnc {0} repeat ] def
        1 1 rsnc {
            /i exch def
            coeffs i coeffs i 1 sub get put
            i 1 sub -1 1 {
                /j exch def
                coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod xor put
            } for
            coeffs 0 coeffs 0 get rsalog i get rsprod put
        } for

        % Extend the input with the error correction values
        /nd rscws length def
        /rscws [ rscws {} forall rsnc {0} repeat 0 ] def
        0 1 nd 1 sub {
            /k exch rscws exch get rscws nd get xor def
            0 1 rsnc 1 sub {
                /j exch def
                rscws nd j add rscws nd j add 1 add get k coeffs rsnc j sub 1 sub get rsprod xor put
            } for
        } for

        % Return all but the last codeword
        rscws 0 rscws length 1 sub getinterval

    } bind def

    % Divide codewords into two groups of blocks and calculate the error correction codewords
    /dcwsb e1nb e2nb add e3nb add array def
    /ecwsb dcwsb length array def
    /in 0 def  /out 0 def
    e1nb {
        cws in e1dcws getinterval e1ecws 256 355 rscodes
        dup 0 e1dcws getinterval dcwsb exch out exch put
        e1dcws e1ecws getinterval ecwsb exch out exch put
        /in in e1dcws add def  /out out 1 add def
    } repeat
    e2nb {
        cws in e2dcws getinterval e2ecws 256 355 rscodes
        dup 0 e2dcws getinterval dcwsb exch out exch put
        e2dcws e2ecws getinterval ecwsb exch out exch put
        /in in e2dcws add def  /out out 1 add def
    } repeat
    e3nb {
        cws in e3dcws getinterval e3ecws 256 355 rscodes
        dup 0 e3dcws getinterval dcwsb exch out exch put
        e3dcws e3ecws getinterval ecwsb exch out exch put
        /in in e3dcws add def  /out out 1 add def
    } repeat

    % Reassemble the codewords
    /cws ncws array def
    /cw 0 def
    0 1 dcwsb length 1 sub {
        /i exch def
        dcwsb i get dup cws exch cw exch putinterval length cw add /cw exch def
        ecwsb i get dup cws exch cw exch putinterval length cw add /cw exch def
    } for

    % Split codewords into groups of 13 and concatenate
    /cws [
        0 1 ncws 1 sub 12 2 copy gt {exch} if pop {
            13 ncws 1 sub { dup ncws lt {cws exch get} {pop} ifelse } for
        } for
    ] def

    % Extend codewords by one if there are remainder bits
    rbit 0 gt {
        /pad cws length 1 add array def
        pad 0 cws putinterval
        pad pad length 1 sub 0 put
        /cws pad def
    } if

    % Create the bitmap
    /pixs [ size size mul {-1} repeat ] def
    /qmv {size mul add} bind def

    % Alignment patterns
    alnn 0 ne {
        /trmv {size mul size add 1 sub exch sub} bind def
        /aplot {
            3 1 roll 3 copy exch trmv pixs exch 3 -1 roll put
            trmv pixs exch 3 -1 roll put
        } bind def
        /i 0 def /stag 0 def {
            i size ge {exit} if
            0 1 size 1 sub {
                /j exch def
                j alnr add size lt {
                    j alnk idiv stag add 2 mod 0 eq   % Staggered groups of k modules
                    i 0 eq j alnk lt and not and      % Keep clear at top right
                    j alnk mod 0 eq or                % Complete regular-spaced grid
                } {
                    alnn stag add 2 mod 0 eq          % Bottom right remainder
                } ifelse
                {
                    j i 1 aplot
                    j 1 add i 1 add 2 copy size lt exch size lt and {0 aplot} {pop pop} ifelse
                } if
            } for
            i alnr add size eq {
                /i i alnr add 1 sub def
            } {
                /i i alnk add def
            } ifelse
            /stag 1 stag sub def
        } loop
        alnk alnk size 2 sub {
            /i exch def
            i alnk idiv 2 mod 0 ne {
                pixs 0 i 1 sub trmv 0 put
                pixs 0 i 1 add trmv 0 put
                pixs 1 i 1 sub trmv 0 put
                pixs 1 i trmv 0 put
                pixs 1 i 1 add trmv 0 put
                pixs i 1 sub 0 trmv 0 put
                pixs i 1 add 0 trmv 0 put
                pixs i 1 sub 1 trmv 0 put
                pixs i 1 trmv 0 put
                pixs i 1 add 1 trmv 0 put
            } if
            pixs size 1 sub i 1 sub trmv get 1 ne {
                pixs size 1 sub i 1 sub trmv 0 put
                pixs size 2 sub i 1 sub trmv 0 put
                pixs size 2 sub i trmv 0 put
                pixs size 2 sub i 1 add trmv 0 put
                pixs size 1 sub i 1 add trmv 0 put
                pixs i 1 sub size 1 sub trmv 0 put
                pixs i 1 sub size 2 sub trmv 0 put
                pixs i size 2 sub trmv 0 put
                pixs i 1 add size 2 sub trmv 0 put
                pixs i 1 add size 1 sub trmv 0 put
            } if
        } for
    } if

    % Finder patterns
    /fpat [
        [ 1 1 1 1 1 1 1 0 ]
        [ 1 0 0 0 0 0 0 0 ]
        [ 1 0 1 1 1 1 1 0 ]
        [ 1 0 1 0 0 0 0 0 ]
        [ 1 0 1 0 1 1 1 0 ]
        [ 1 0 1 0 1 1 1 0 ]
        [ 1 0 1 0 1 1 1 0 ]
        [ 0 0 0 0 0 0 0 0 ]
    ] def
    /fpat2 [
        [ 1 1 1 0 1 0 1 0 ]
        [ 1 1 1 0 1 0 1 0 ]
        [ 1 1 1 0 1 0 1 0 ]
        [ 0 0 0 0 1 0 1 0 ]
        [ 1 1 1 1 1 0 1 0 ]
        [ 0 0 0 0 0 0 1 0 ]
        [ 1 1 1 1 1 1 1 0 ]
        [ 0 0 0 0 0 0 0 0 ]
    ] def
    0 1 fpat length 1 sub {
        /y exch def
        0 1 fpat 0 get length 1 sub {
            /x exch def
            /fpb fpat y get x get def
            /fpb2 fpat2 y get x get def
            pixs x y qmv fpb put
            pixs size x sub 1 sub y qmv fpb put
            pixs size x sub 1 sub size y sub 1 sub qmv fpb put
            pixs x size y sub 1 sub qmv fpb2 put
        } for
    } for

    % Format information modules
    /functionmap [
        [ [ 0 8 ] [ size 1 sub size 9 sub ] ]  [ [ 1 8 ] [ size 2 sub size 9 sub ] ]
        [ [ 2 8 ] [ size 3 sub size 9 sub ] ]  [ [ 3 8 ] [ size 4 sub size 9 sub ] ]
        [ [ 4 8 ] [ size 5 sub size 9 sub ] ]  [ [ 5 8 ] [ size 6 sub size 9 sub ] ]
        [ [ 6 8 ] [ size 7 sub size 9 sub ] ]  [ [ 7 8 ] [ size 8 sub size 9 sub ] ]
        [ [ 8 8 ] [ size 9 sub size 9 sub ] ]
        [ [ 8 7 ] [ size 9 sub size 8 sub ] ]  [ [ 8 6 ] [ size 9 sub size 7 sub ] ]
        [ [ 8 5 ] [ size 9 sub size 6 sub ] ]  [ [ 8 4 ] [ size 9 sub size 5 sub ] ]
        [ [ 8 3 ] [ size 9 sub size 4 sub ] ]  [ [ 8 2 ] [ size 9 sub size 3 sub ] ]
        [ [ 8 1 ] [ size 9 sub size 2 sub ] ]  [ [ 8 0 ] [ size 9 sub size 1 sub ] ]
        [ [ size 9 sub 0 ] [ 8 size 1 sub ] ]  [ [ size 9 sub 1 ] [ 8 size 2 sub ] ]
        [ [ size 9 sub 2 ] [ 8 size 3 sub ] ]  [ [ size 9 sub 3 ] [ 8 size 4 sub ] ]
        [ [ size 9 sub 4 ] [ 8 size 5 sub ] ]  [ [ size 9 sub 5 ] [ 8 size 6 sub ] ]
        [ [ size 9 sub 6 ] [ 8 size 7 sub ] ]  [ [ size 9 sub 7 ] [ 8 size 8 sub ] ]
        [ [ size 9 sub 8 ] [ 8 size 9 sub ] ]
        [ [ size 8 sub 8 ] [ 7 size 9 sub ] ]  [ [ size 7 sub 8 ] [ 6 size 9 sub ] ]
        [ [ size 6 sub 8 ] [ 5 size 9 sub ] ]  [ [ size 5 sub 8 ] [ 4 size 9 sub ] ]
        [ [ size 4 sub 8 ] [ 3 size 9 sub ] ]  [ [ size 3 sub 8 ] [ 2 size 9 sub ] ]
        [ [ size 2 sub 8 ] [ 1 size 9 sub ] ]  [ [ size 1 sub 8 ] [ 0 size 9 sub ] ]
    ] def
    functionmap {
        { {} forall qmv pixs exch 0 put } forall
    } forall

    /maskfuncs [
        {pop pop 1} bind
        {add 2 mod} bind
        {1 index add 3 mod exch 3 mod add 2 mod} bind
        {2 copy mod 3 1 roll 2 copy exch mod 3 1 roll 3 mod exch 3 mod
         add add add 2 mod} bind
    ] def
    mask -1 ne {  % User specifies a mask
        /maskfuncs [maskfuncs mask 1 sub get] def
        /bestmaskval mask 1 sub def
    } if
    /masks maskfuncs length array def
    0 1 masks length 1 sub {
        /m exch def
        /mask size size mul array def
        0 1 size 1 sub {
            /j exch def
            0 1 size 1 sub {
                /i exch def
                i 1 add j 1 add maskfuncs m get exec 0 eq
                pixs i j qmv get -1 eq and {1} {0} ifelse
                mask i j qmv 3 -1 roll put
            } for
        } for
        masks m mask put
    } for

    % Walk the symbol placing the bitstream
    /posx 0 def
    /posy 0 def
    /num 0 def
    { % loop
        posy size eq {exit} if
        pixs posx posy qmv get -1 eq {
            cws num 8 idiv get 7 num 8 mod sub neg bitshift 1 and
            pixs posx posy qmv 3 -1 roll put
            /num num 1 add def
        } if
        /posx posx 1 add def
        posx size eq {/posx 0 def /posy posy 1 add def} if
    } loop

    % Evaluate runlength encoded rows or columns in full symbols
    /evalfulln1n3 {
        /scrle exch def
        % Detect runs of 3 or more like modules
        /scr1 0 scrle { dup 3 ge {4 mul add dup} if pop } forall def
        /scr3 0 def
        % Detect 1:1:1:1:3 ratio next to 3 modules of whitespace
        5 2 scrle length 1 sub {  % Scan odd (dark) runs within bounds
            /j exch def
            scrle j get 3 mod 0 eq {  % Multiple of 3 black modules
                /fact scrle j get 3 idiv def
                scrle j 4 sub 4 getinterval {fact eq} forall and and and {
                    j 5 eq j 2 add scrle length ge or {  % At either extent of run
                        /scr3 scr3 50 add def
                    } {  % Bounded by dark modules
                        scrle j 5 sub get 3 ge scrle j 1 add get 3 ge or {
                            /scr3 scr3 50 add def
                        } if
                    } ifelse
                } if
            } if
        } for
        % Detect 3:1:1:1:1 ratio next to 3 modules of whitespace
        1 2 scrle length 5 sub {  % Scan odd (dark) runs within bounds
            /j exch def
            scrle j get 3 mod 0 eq {  % Multiple of 3 black modules
                /fact scrle j get 3 idiv def
                scrle j 1 add 4 getinterval {fact eq} forall and and and {
                    j 1 eq j 6 add scrle length ge or {  % At either extent of run
                        /scr3 scr3 50 add def
                    } {  % Bounded by dark modules
                        scrle j 1 sub get 3 ge scrle j 5 add get 3 ge or {
                            /scr3 scr3 50 add def
                        } if
                    } ifelse
                } if
            } if
        } for
        scr1 scr3
    } bind def

    % Evaluation algorithm
    /evalfull {
        /sym exch def

        /n1 0 def /n3 0 def
        /rle size 1 add array def
        /lastpairs size array def
        /thispairs size array def
        /sizeadd1 size 1 add def
        0 1 size 1 sub {
            /i exch def

            % Runlength encode (light, dark, light, ...) and evaluate each column
            mark 0 0
            i size dup dup mul 1 sub {
                sym exch get exch 1 index eq {exch 1 add exch} {1 exch} ifelse
            } for
            pop
            rle 0 counttomark 2 sub getinterval astore
            evalfulln1n3 n3 add /n3 exch def n1 add /n1 exch def
            pop

            % Runlength encode (light, dark, light, ...) and evaluate each row
            /symrow sym i size mul size getinterval def
            mark 0 0
            symrow {
                exch 1 index eq {exch 1 add exch} {1 exch} ifelse
            } forall
            pop
            rle 0 counttomark 2 sub getinterval astore
            evalfulln1n3 n3 add /n3 exch def n1 add /n1 exch def
            pop

        } for

        n1 n3 add
    } bind def

    % Evaluate the masked symbols to find the most suitable
    /bestscore 999999999 def
    0 1 masks length 1 sub {
        /m exch def
        /masksym size size mul array def
        0 1 size size mul 1 sub {
            /i exch def
            masksym i pixs i get masks m get i get xor put
        } for
        masks length 1 ne {
            masksym evalfull /score exch def
            score bestscore lt {
                /bestsym masksym def
                /bestmaskval m def
                /bestscore score def
            } if
        } {
            /bestsym masksym def
        } ifelse
    } for
    /pixs bestsym def

    % Add the function information
    /funval size 21 sub 2 idiv 20 add 4 mul eclval add 4 mul bestmaskval add def
    [ funval 16#0F00 and -8 bitshift
      funval 16#00F0 and -4 bitshift
      funval 16#000F and ]
    4 16 19 rscodes /funvals exch def
    /funbits [
        funvals {
            4 tobin {48 sub} forall
        } forall
        0 1 0 1 0 1
    ] def
    0 1 functionmap length 1 sub {
        /i exch def
        functionmap i get {
            pixs exch aload pop qmv funbits i get put
        } forall
    } for

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx size
    /pixy size
    /height size 2 mul 72 div
    /width size 2 mul 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hanxin dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hanxin--

% --BEGIN ENCODER dotcode--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: DotCode
% --EXAM: This is DotCode
% --EXOP: inkspread=0.16
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp dotcode 0.0 2019110800 231200 257094
%%BeginData:       1051 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/dotcode {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /rows -1 def
    /columns -1 def
    /ratio -1 def
    /parse false def
    /parsefnc false def
    /raw false def
    /fast false def
    /mask -1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /rows rows cvi def
    /columns columns cvi def
    /ratio ratio cvr def
    /mask mask cvi def

    % Set the ratio to 3:2 if no size is specified
    ratio -1 eq rows -1 eq and columns -1 eq and {
        /ratio 3 2 div def
    } if

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Convert input into bytes accounting for FNC characters
    /laa  -1 def  /lab  -2 def  /lac  -3 def  /bin  -4 def
    /sfa  -5 def  /sfb  -6 def  /sb2  -7 def  /sb3  -8 def
    /sb4  -9 def  /sb5 -10 def  /sb6 -11 def  /sfc -12 def
    /sc2 -13 def  /sc3 -14 def  /sc4 -15 def  /sc5 -16 def
    /sc6 -17 def  /sc7 -18 def  /bsa -19 def  /bsb -20 def
    /tma -21 def  /tmb -22 def  /tmc -23 def  /tms -24 def
    /fn1 -25 def  /fn2 -26 def  /fn3 -27 def  /crl -28 def
    /aim -29 def  /m05 -30 def  /m06 -31 def  /m12 -32 def
    /mac -33 def

    % Character maps for each state
    /charmaps [
      %  A    B    C         A    B    C         A    B    C
      [  32   32  (00) ]  [ (!)  (!)  (01) ]  [ (")  (")  (02) ]  % 0-2
      [ (#)  (#)  (03) ]  [ ($)  ($)  (04) ]  [ (%)  (%)  (05) ]  % 3-5
      [ (&)  (&)  (06) ]  [ (')  (')  (07) ]  [  40   40  (08) ]  % 6-8
      [  41   41  (09) ]  [ (*)  (*)  (10) ]  [ (+)  (+)  (11) ]  % 9-11
      [ (,)  (,)  (12) ]  [ (-)  (-)  (13) ]  [ (.)  (.)  (14) ]  % 12-14
      [ (/)  (/)  (15) ]  [ (0)  (0)  (16) ]  [ (1)  (1)  (17) ]  % 15-17
      [ (2)  (2)  (18) ]  [ (3)  (3)  (19) ]  [ (4)  (4)  (20) ]  % 18-20
      [ (5)  (5)  (21) ]  [ (6)  (6)  (22) ]  [ (7)  (7)  (23) ]  % 21-23
      [ (8)  (8)  (24) ]  [ (9)  (9)  (25) ]  [ (:)  (:)  (26) ]  % 24-26
      [ (;)  (;)  (27) ]  [ (<)  (<)  (28) ]  [ (=)  (=)  (29) ]  % 27-29
      [ (>)  (>)  (30) ]  [ (?)  (?)  (31) ]  [ (@)  (@)  (32) ]  % 30-32
      [ (A)  (A)  (33) ]  [ (B)  (B)  (34) ]  [ (C)  (C)  (35) ]  % 33-35
      [ (D)  (D)  (36) ]  [ (E)  (E)  (37) ]  [ (F)  (F)  (38) ]  % 36-38
      [ (G)  (G)  (39) ]  [ (H)  (H)  (40) ]  [ (I)  (I)  (41) ]  % 39-41
      [ (J)  (J)  (42) ]  [ (K)  (K)  (43) ]  [ (L)  (L)  (44) ]  % 42-44
      [ (M)  (M)  (45) ]  [ (N)  (N)  (46) ]  [ (O)  (O)  (47) ]  % 45-47
      [ (P)  (P)  (48) ]  [ (Q)  (Q)  (49) ]  [ (R)  (R)  (50) ]  % 48-50
      [ (S)  (S)  (51) ]  [ (T)  (T)  (52) ]  [ (U)  (U)  (53) ]  % 51-53
      [ (V)  (V)  (54) ]  [ (W)  (W)  (55) ]  [ (X)  (X)  (56) ]  % 54-56
      [ (Y)  (Y)  (57) ]  [ (Z)  (Z)  (58) ]  [ ([)  ([)  (59) ]  % 57-59
      [  92   92  (60) ]  [ (])  (])  (61) ]  [ (^)  (^)  (62) ]  % 60-62
      [ (_)  (_)  (63) ]  [   0  (`)  (64) ]  [   1  (a)  (65) ]  % 63-65
      [   2  (b)  (66) ]  [   3  (c)  (67) ]  [   4  (d)  (68) ]  % 66-68
      [   5  (e)  (69) ]  [   6  (f)  (70) ]  [   7  (g)  (71) ]  % 69-71
      [   8  (h)  (72) ]  [   9  (i)  (73) ]  [  10  (j)  (74) ]  % 72-74
      [  11  (k)  (75) ]  [  12  (l)  (76) ]  [  13  (m)  (77) ]  % 75-77
      [  14  (n)  (78) ]  [  15  (o)  (79) ]  [  16  (p)  (80) ]  % 78-80
      [  17  (q)  (81) ]  [  18  (r)  (82) ]  [  19  (s)  (83) ]  % 81-83
      [  20  (t)  (84) ]  [  21  (u)  (85) ]  [  22  (v)  (86) ]  % 84-86
      [  23  (w)  (87) ]  [  24  (x)  (88) ]  [  25  (y)  (89) ]  % 87-89
      [  26  (z)  (90) ]  [  27  ({)  (91) ]  [  28  (|)  (92) ]  % 90-92
      [  29  (})  (93) ]  [  30  (~)  (94) ]  [  31  127  (95) ]  % 93-95
      [ sfb  crl  (96) ]  [ sb2    9  (97) ]  [ sb3   28  (98) ]  % 96-98
      [ sb4   29  (99) ]  [ sb5   30  aim  ]  [ sb6  sfa  laa  ]  % 99-101
      [ lab  laa  sfb  ]  [ sc2  sc2  sb2  ]  [ sc3  sc3  sb3  ]  % 102-104
      [ sc4  sc4  sb4  ]  [ lac  lac  lab  ]  [ fn1  fn1  fn1  ]  % 105-107
      [ fn2  fn2  fn2  ]  [ fn3  fn3  fn3  ]  [ bsa  bsa  bsa  ]  % 108-110
      [ bsb  bsb  bsb  ]  [ bin  bin  bin  ]                      % 111-112
    ] def

    % Invert charmaps to give character to value maps for each state
    /charvals [ 113 dict 117 dict 113 dict ] def
    0 1 charmaps length 1 sub {
        /i exch def
        /encs charmaps i get def
        0 1 2 {
            /j exch def
            encs j get dup type /stringtype eq {0 get} if  % convert string to ASCII if required
            charvals j get exch i put
        } for
    } for
    /Avals charvals 0 get def
    /Bvals charvals 1 get def
    Bvals m05  97 put
    Bvals m06  98 put
    Bvals m12  99 put
    Bvals mac 100 put
    /Cvals charvals 2 get def
    /BINvals <<
        102 [ sc2 sc3 sc4 sc5 sc6 sc7 tma tmb tmc tms ] {exch 1 add dup} forall pop
    >> def

    /fncvals <<
        (FNC1) fn1
        (FNC2) fn2
        (FNC3) fn3
    >> def
    /msg barlen array def
    /i 0 def /j 0 def {
        i barlen eq {exit} if
        /char barcode i get def
        parsefnc char 94 eq and i barlen 4 sub lt and {
            barcode i 1 add get 94 ne {
                /char fncvals barcode i 1 add 4 getinterval get def
                /i i 4 add def
            } {
                /i i 1 add def
            } ifelse
        } if
        msg j char put
        /i i 1 add def
        /j j 1 add def
    } loop
    /msg msg 0 j getinterval def
    /msglen msg length def

    % Pre-compute properties of the input at each point
    /nDigits      [ msglen 1 add {0} repeat     ] def
    /SeventeenTen [ msglen 1 add {false} repeat ] def
    /ECI          [ msglen 1 add {false} repeat ] def
    /DatumA       [ msglen 1 add {false} repeat ] def
    /DatumB       [ msglen 1 add {false} repeat ] def
    /DatumC       [ msglen 1 add {false} repeat ] def
    /Binary       [ msglen 8 add {false} repeat ] def
    /AheadC       [ msglen 1 add {0} repeat     ] def
    /TryC         [ msglen 1 add {0} repeat     ] def
    /AheadA       [ msglen 1 add {0} repeat     ] def
    /AheadB       [ msglen 1 add {0} repeat     ] def
    /UntilEndSeg  [ msglen 1 add {0} repeat     ] def
    msglen 1 sub -1 0 {
        /i exch def
        /barchar msg i get def
        barchar 48 ge barchar 57 le and {
            nDigits i nDigits i 1 add get 1 add put
        } if
        Avals barchar known {DatumA i true put} if
        Bvals barchar known {DatumB i true put} if
        /CRLF false def
        barchar 13 eq i msglen 1 sub lt and {
            msg i 1 add get 10 eq {/CRLF true def} if
        } if
        CRLF {DatumB i true put} if
        nDigits i get 2 ge  {DatumC i true put} if
        barchar 0 lt        {DatumC i true put} if  % FNCx
        barchar 128 ge      {Binary i true put} if
        nDigits i get 10 ge {  % 17xxxxxx10
            mark
            msg i 10 getinterval aload pop
            1 {  % common exit
                48 ne {false exit} if
                49 ne {false exit} if
                pop pop pop pop pop pop
                55 ne {false exit} if
                49 ne {false exit} if
                true
            } repeat
            SeventeenTen i 3 -1 roll put
            cleartomark
        } if
        nDigits i 1 add get 6 ge msg i get fn2 eq and {  % ^FNC2xxxxxx
            ECI i true put
        } if
        barchar 0 lt barchar fn3 ne and {  % FNCx, except FNC3
            AheadC i AheadC i 1 add get 1 add put
        } {
            nDigits i get 1 le {
                AheadC i 0 put
            } {
                AheadC i AheadC i 2 add get 1 add put
            } ifelse
        } ifelse
        nDigits i get 0 gt AheadC i get AheadC i 1 add get gt and {
            TryC i AheadC i get put
        } if
        DatumA i get TryC i get 2 lt and barchar fn3 ne and {
            AheadA i AheadA i 1 add get 1 add put
        } if
        DatumB i get TryC i get 2 lt and barchar fn3 ne and {
            AheadB i AheadB i 1 add CRLF {1 add} if get 1 add put
        } if
        barchar fn3 ne {
            UntilEndSeg i UntilEndSeg i 1 add get 1 add put
        } if
    } for

    /A 0 def  /B 1 def  /C 2 def  /BIN 3 def

    /addtocws {
        dup cws exch j exch putinterval
        /j exch length j add def
    } bind def

    % Base 259 to one more in base 103
    /base259to103 {
        /in exch def
        /inlen in length def
        /in [ 5 inlen sub {0} repeat in aload pop ] def
        /out 6 array def
        /msbs [ in 0 2 getinterval aload pop ] def
        /mscs [
            msbs aload pop exch 259 mul add
            2 {dup 103 mod exch 103 idiv} repeat
        ] def
        /lsbs [ in 2 3 getinterval aload pop ] def
        /lscs [
            lsbs aload pop exch 259 mul add exch 67081 mul add
            3 {dup 103 mod exch 103 idiv} repeat
        ] def
        lscs 0 get mscs 0 get 42 mul add
        out 5 2 index 103 mod put
        103 idiv lscs 1 get add mscs 0 get 68 mul add mscs 1 get 42 mul add
        out 4 2 index 103 mod put
        103 idiv lscs 2 get add mscs 0 get 92 mul add mscs 1 get 68 mul add mscs 2 get 42 mul add
        out 3 2 index 103 mod put
        103 idiv lscs 3 get add mscs 0 get 15 mul add mscs 1 get 92 mul add mscs 2 get 68 mul add
        out 2 2 index 103 mod put
        103 idiv mscs 1 get 15 mul add mscs 2 get 92 mul add
        out 1 2 index 103 mod put
        103 idiv mscs 2 get 15 mul add
        out 0 3 -1 roll 103 mod put
        out 6 inlen sub 1 sub inlen 1 add getinterval
    } bind def

    /finaliseBIN {
        bpos 0 ne {
            bvals 0 bpos getinterval base259to103 aload pop
            /bpos 0 def
        } if
    } bind def

    /addtobin {
        bvals exch bpos exch put
        /bpos bpos 1 add def
        bpos 5 eq { finaliseBIN } if
    } bind def

    /ECIabc {  % ECI encoding for modes A, B and C
        msg i 1 add 6 getinterval 0 exch {48 sub add 10 mul} forall 10 idiv
        dup 40 ge {
            40 sub
            dup 12769 idiv 40 add exch 12769 mod
            dup   113 idiv        exch   113 mod
        } if
    } bind def

    /ECIbin {  % ECI encoding for binary mode
        [
            msg i 1 add 6 getinterval 0 exch {48 sub add 10 mul} forall 10 idiv
            dup 65536 ge {
                258 exch dup 65536 idiv exch 65536 mod dup 256 idiv exch 256 mod
            } {
                dup 256 ge {
                    257 exch dup 256 idiv exch 256 mod
                } {
                    256 exch
                } ifelse
            } ifelse
        ] {
            addtobin
        } forall
    } bind def

    /encC {
        1 {  % Common exit
            i segstart eq {  % Structured data macros
                1 {  % common exit
                    i segend 7 sub gt {0 exit} if
                    msg segstart       get 91 ne {0 exit} if                    % [
                    msg segstart 1 add get 41 ne {0 exit} if                    % )
                    msg segstart 2 add get 62 ne {0 exit} if                    % >
                    msg segstart 3 add get 30 ne {0 exit} if                    % {RS}
                    msg segstart 4 add get dup 48 lt exch 57 gt or {0 exit} if  % digit
                    msg segstart 5 add get dup 48 lt exch 57 gt or {0 exit} if  % digit
                    msg segend   1 sub get  4 ne {0 exit} if                    % End: {EOT}
                    msg segstart 4 add get 48 sub 10 mul msg segstart 5 add get 48 sub add
                    dup dup 05 ne exch dup 06 ne exch 12 ne and and {pop mac exit} if
                    msg segstart 6 add get 29 ne {pop 0 exit} if                % {GS}
                    msg segend   2 sub get 30 ne {pop 0 exit} if                % End: {RS}
                    dup 05 eq {pop m05 exit} if
                        06 eq {    m06 exit} if
                                   m12 exit
                } repeat
                /inmac exch def
                inmac 0 ne {
                    /mode B def
                    [ Bvals inmac get ] addtocws
                    /i i inmac mac ne {7} {6} ifelse add def
                    exit
                } if
            } if
            % Special treatment of FNC1 in First for Dotcode
            i segstart eq {
                % Encode an FNC1 if two digits start a segment
                nDigits i get 2 ge {
                    [ Cvals fn1 get ] addtocws
                } if
                % Skip an FNC1 if followed by two digits at start of segment
                msg i get fn1 eq nDigits i 1 add get 2 ge and {
                    /i i 1 add def
                } if
            } if
            SeventeenTen i get {
                [  % 17xxxxxx10 macro
                    Cvals aim get
                    msg i 2 add get 48 sub 10 mul msg i 3 add get 48 sub add
                    msg i 4 add get 48 sub 10 mul msg i 5 add get 48 sub add
                    msg i 6 add get 48 sub 10 mul msg i 7 add get 48 sub add
                ] addtocws
                /i i 10 add def
                exit
            } if
            DatumC i get {
                msg i get dup fn1 eq exch dup fn2 eq exch fn3 eq or or {  % FNCx
                    [ Cvals msg i get get ] addtocws
                    ECI i get {  % FNC2 then 6 digits
                        [ ECIabc ] addtocws
                        /i i 7 add def
                        exit
                    } if
                    msg i get fn3 eq segstart i ne and {  % FNC3
                        /i i 1 add def
                        /inmac 0 def
                        /segstart i def
                        /segend i UntilEndSeg i get add def
                        exit
                    } if
                    /i i 1 add def
                    exit
                } if
                [ msg i get 48 sub 10 mul msg i 1 add get 48 sub add ] addtocws
                /i i 2 add def
                exit
            } if
            Binary i get {  % Binary
                nDigits i 1 add get 0 gt {
                    msg i get 160 lt {
                        [ Cvals bsa get Avals msg i get 128 sub get ] addtocws
                    } {
                        [ Cvals bsb get Bvals msg i get 128 sub get ] addtocws
                    } ifelse
                    /i i 1 add def
                    exit
                } if
                [ Cvals bin get ] addtocws
                /mode BIN def
                exit
            } if
            /m AheadA i get def  /n AheadB i get def
            m n gt {
                [ Cvals laa get ] addtocws
                /mode A def
                exit
            } if
            i segstart eq {
                msg i get dup 9 eq exch dup 28 eq exch dup 29 eq exch 30 eq or or or {
                    [ Cvals laa get ] addtocws
                    /mode A def
                    exit
                } if
            } if
            n 4 gt {
                [ Cvals lab get ] addtocws
                /mode B def
                exit
            } if
            [ Cvals [ sfb sb2 sb3 sb4 ] n 1 sub get get ] addtocws
            n {
                [ Bvals msg i get get ] addtocws
                /i i 1 add def
            } repeat
            exit
        } repeat
    } bind def  % encC

    /encB {
        1 {  % Common exit
            /n TryC i get def
            n 2 ge {
                n 4 gt {
                    [ Bvals lac get ] addtocws
                    /mode C def
                    exit
                } if
                [ Bvals [ sfc sc2 sc3 sc4 ] n 1 sub get get ] addtocws
                n {
                    msg i get 0 lt {
                        [ Cvals msg i get get ] addtocws
                        /i i 1 add def
                    } {
                        [ msg i get 48 sub 10 mul msg i 1 add get 48 sub add ] addtocws
                        /i i 2 add def
                    } ifelse
                } repeat
                exit
            } if
            DatumB i get {
                msg i get dup fn1 eq exch dup fn2 eq exch fn3 eq or or {  % FNCx
                    [ Bvals msg i get get ] addtocws
                    ECI i get {  % FNC2 then 6 digits
                        [ ECIabc ] addtocws
                        /i i 7 add def
                        exit
                    } if
                    msg i get fn3 eq i segstart ne and {  % FNC3
                        /i i 1 add def
                        /mode C def
                        /inmac 0 def
                        /segstart i def
                        /segend i UntilEndSeg i get add def
                        exit
                    } if
                    /i i 1 add def
                    exit
                } if
                msg i get 13 eq i msglen 1 sub lt and {
                    msg i 1 add get 10 eq {  % CRLF
                        [ Bvals crl get ] addtocws
                        /i i 2 add def
                        exit
                    } if
                } if
                [ Bvals msg i get get ] addtocws
                /i i 1 add def
                exit
            } if
            Binary i get {  % Binary
                DatumB i 1 add get {
                    msg i get 160 lt {
                        [ Bvals bsa get Avals msg i get 128 sub get ] addtocws
                    } {
                        [ Bvals bsb get Bvals msg i get 128 sub get ] addtocws
                    } ifelse
                    /i i 1 add def
                    exit
                } if
                [ Bvals bin get ] addtocws
                /mode BIN def
                exit
            } if
            AheadA i get 1 eq {
                [ Bvals sfa get Avals msg i get get ] addtocws
                /i i 1 add def
                exit
            } if
            [ Bvals laa get ] addtocws
            /mode A def
            exit
        } repeat
    } bind def

    /encA {
        1 {  % Common exit
            /n TryC i get def
            n 2 ge {
                n 4 gt {
                    [ Avals lac get ] addtocws
                    /mode C def
                    exit
                } if
                [ Avals [ sfc sc2 sc3 sc4 ] n 1 sub get get ] addtocws
                n {
                    msg i get 0 lt {
                        [ Cvals msg i get get ] addtocws
                        /i i 1 add def
                    } {
                        [ msg i get 48 sub 10 mul msg i 1 add get 48 sub add ] addtocws
                        /i i 2 add def
                    } ifelse
                } repeat
                exit
            } if
            DatumA i get {
                msg i get dup fn1 eq exch dup fn2 eq exch fn3 eq or or {  % FNCx
                    [ Avals msg i get get ] addtocws
                    ECI i get {  % FNC2 then 6 digits
                        [ ECIabc ] addtocws
                        /i i 7 add def
                        exit
                    } if
                    msg i get fn3 eq i segstart ne and {  % FNC3
                        /i i 1 add def
                        /mode C def
                        /inmac 0 def
                        /segstart i def
                        /segend i UntilEndSeg i get add def
                        exit
                    } if
                    /i i 1 add def
                    exit
                } if
                [ Avals msg i get get ] addtocws
                /i i 1 add def
                exit
            } if
            Binary i get {  % Binary
                DatumA i 1 add get {
                    msg i get 160 lt {
                        [ Avals bsa get Avals msg i get 128 sub get ] addtocws
                    } {
                        [ Avals bsb get Bvals msg i get 128 sub get ] addtocws
                    } ifelse
                    /i i 1 add def
                    exit
                } if
                [ Avals bin get ] addtocws
                /mode BIN def
                exit
            } if
            /n AheadB i get def
            n 6 gt {
                [ Avals lab get ] addtocws
                /mode B def
                exit
            } if
            [ Avals [ sfb sb2 sb3 sb4 sb5 sb6 ] n 1 sub get get ] addtocws
            n {
                [ Bvals msg i get get ] addtocws
                /i i 1 add def
            } repeat
            exit
        } repeat
    } bind def

    /encBIN {
        1 {  % Common exit
            /n TryC i get def
            n 2 ge {
                [ finaliseBIN ] addtocws
                n 7 gt {  % Terminate to C
                    [ BINvals tmc get ] add
                    /mode C def
                    exit
                } if
                [ BINvals [ sc2 sc3 sc4 sc5 sc6 sc7 ] n 2 sub get get ] addtocws
                n {
                    msg i get 0 lt {
                        [ Cvals msg i get get ] addtocws
                        /i i 1 add def
                    } {
                        [ msg i get 48 sub 10 mul msg i 1 add get 48 sub add ] addtocws
                        /i i 2 add def
                    } ifelse
                } repeat
                exit
            } if
            ECI i get Binary i 7 add get and {  % ECI then binary
                [ ECIbin ] addtocws
                /i i 7 add def
                i msglen eq { [ finaliseBIN ] addtocws } if
                exit
            } if
            msg i get 0 ge {  % Not FNCx
                Binary i       get    Binary i 1 add get or
                Binary i 2 add get or Binary i 3 add get or
                ECI i 1 add get       Binary i 8 add get and or {
                    [ msg i get addtobin ] addtocws
                    /i i 1 add def
                    i msglen eq { [ finaliseBIN ] addtocws } if
                    exit
                } if
            } if
            [ finaliseBIN ] addtocws
            i msglen 1 sub ne {  % Not last character
                msg i get fn3 eq i segstart ne and {  % FNC3
                    [ BINvals tms get ] addtocws
                    /i i 1 add def
                    /mode C def
                    /inmac 0 def
                    /segstart i def
                    /segend i UntilEndSeg i get add def
                    exit
                } if
                AheadA i get AheadB i get gt {
                    [ BINvals tma get ] addtocws
                    /mode A def
                } {
                    [ BINvals tmb get ] addtocws
                    /mode B def
                } ifelse
                exit
            } if
            exit
        } repeat
    } bind def

    /cws barlen 2 mul 1 add array def
    /mode C def
    /bvals 5 array def  /bpos 0 def
    /inmac 0 def  /segstart 0 def  /segend UntilEndSeg 0 get def
    /i 0 def  /j 0 def  {
        i msglen ge {exit} if
        inmac 0 ne {  % Jump over macro trailers
            inmac mac ne i segend 2 sub eq and {  % {RS}{EOT}
                /i i 2 add def
                i msglen ge {exit} if
            } if
            inmac mac eq i segend 1 sub eq and {  % {EOT}
                /i i 1 add def
                i msglen ge {exit} if
            } if
        } if
        [ /encA /encB /encC /encBIN ] mode get load exec
    } loop
    /cws cws 0 j getinterval def

    % Determine the symbol size
    /nd cws length def
    /minarea nd 3 add nd 2 idiv add 9 mul 2 add 2 mul def
    ratio -1 ne {        % Fixed ratio
        /hgt minarea ratio div sqrt def
        /wid minarea ratio mul sqrt def
        /h hgt cvi def  /w wid cvi def
        h w add 2 mod 1 eq {
            h w mul minarea lt {/h h 1 add def  /w w 1 add def} if
        } {
            hgt w mul wid h mul lt {
                /w w 1 add def
                h w mul minarea lt {
                    /w w 1 sub def  /h h 1 add def
                    h w mul minarea lt {/w w 2 add def} if
                } if
            } {
                /h h 1 add def
                h w mul minarea lt {
                    /h h 1 sub def  /w w 1 add def
                    h w mul minarea lt {/h h 2 add def} if
                } if
            } ifelse
        } ifelse
        /rows h def  /columns w def
    } {
        columns -1 eq {  % Fixed height
            /columns minarea rows add 1 sub rows idiv dup rows add 2 mod 0 eq {1 add} if def
        } if
        rows -1 eq {     % Fixed width
            /rows minarea columns add 1 sub columns idiv dup columns add 2 mod 0 eq {1 add} if def
        } if
    } ifelse

    % Extend the codewords with padding
    /ndots rows columns mul 2 idiv def
    {
        nd 1 add dup 2 idiv 3 add add 9 mul 2 add ndots gt {exit} if
        /nd nd 1 add def
    } loop
    /nc nd 2 idiv 3 add def
    /nw nd nc add def
    /rembits ndots nw 9 mul 2 add sub def
    nd cws length gt {
        /cws [
            cws aload pop
            mode BIN eq {109} {106} ifelse
            nd cws length sub 1 sub {106} repeat
        ] def
    } if

    % Create an array containing the character mappings
    /encs [
        (101010101) (010101011) (010101101) (010110101) (011010101)
        (101010110) (101011010) (101101010) (110101010) (010101110)
        (010110110) (010111010) (011010110) (011011010) (011101010)
        (100101011) (100101101) (100110101) (101001011) (101001101)
        (101010011) (101011001) (101100101) (101101001) (110010101)
        (110100101) (110101001) (001010111) (001011011) (001011101)
        (001101011) (001101101) (001110101) (010010111) (010011011)
        (010011101) (010100111) (010110011) (010111001) (011001011)
        (011001101) (011010011) (011011001) (011100101) (011101001)
        (100101110) (100110110) (100111010) (101001110) (101011100)
        (101100110) (101101100) (101110010) (101110100) (110010110)
        (110011010) (110100110) (110101100) (110110010) (110110100)
        (111001010) (111010010) (111010100) (001011110) (001101110)
        (001110110) (001111010) (010011110) (010111100) (011001110)
        (011011100) (011100110) (011101100) (011110010) (011110100)
        (100010111) (100011011) (100011101) (100100111) (100110011)
        (100111001) (101000111) (101100011) (101110001) (110001011)
        (110001101) (110010011) (110011001) (110100011) (110110001)
        (111000101) (111001001) (111010001) (000101111) (000110111)
        (000111011) (000111101) (001001111) (001100111) (001110011)
        (001111001) (010001111) (011000111) (011100011) (011110001)
        (100011110) (100111100) (101111000) (110001110) (110011100)
        (110111000) (111000110) (111001100)
    ] def

    % Final six dots arranged at edges
    rows 2 mod 0 eq {
        /sixedges [
            [ columns 1 sub  rows 2 sub ]
            [ 0              rows 2 sub ]
            [ columns 2 sub  rows 1 sub ]
            [ 1              rows 1 sub ]
            [ columns 1 sub  0          ]
            [ 0              0          ]
        ] def
    } {
        /sixedges [
            [ columns 2 sub  0          ]
            [ columns 2 sub  rows 1 sub ]
            [ columns 1 sub  1          ]
            [ columns 1 sub  rows 2 sub ]
            [ 0              0          ]
            [ 0              rows 1 sub ]
        ] def
    } ifelse

    /dmv {columns mul add} bind def

    % Construct the template
    /outline rows columns mul array def
    0 1 rows 1 sub {
        /y exch def
        0 1 columns 1 sub {
            /x exch def
            outline x y dmv x y add 2 mod 1 sub put
        } for
    } for
    sixedges {
        outline exch aload pop dmv 1 put
    } forall

    /clearcol {
        /x exch def
        true
        x 1 and 2 rows 1 sub {
            x exch dmv sym exch get 1 eq {pop false exit} if
        } for
    } bind def

    /clearrow {
        /y exch def
        true
        y 1 and 2 columns 1 sub {
            y dmv sym exch get 1 eq {pop false exit} if
        } for
    } bind def

    % Evaluate the symbol
    /evalsymbol {
        /sym exch def

        % Identify the worst side
        /worst 9999999 def
        [ [ /x 0 ] [ /x 1 ] [ /y 0 ] [ /y 1 ] ] {  % Top Bottom Left Right
            aload pop  /fl exch def  /dir exch def
            /sum 0 def  /first -1 def  /last -1 def
            0 1 dir /x eq {columns} {rows} ifelse 1 sub {
                dir exch def
                sym
                dir load
                dir /x eq {rows} {columns} ifelse 1 sub fl mul
                dir /y eq {exch} if
                dmv get 1 eq {
                    first -1 eq {/first dir load def} if
                    /last dir load def
                    /sum sum 1 add def
                } if
            } for
            sum last add first sub
            dir /x eq {rows} {columns} ifelse mul
            dup worst lt {/worst exch def} {pop} ifelse
        } forall

        /pen 0 def

        % Check for groups of blank columns unless data is encoded vertically
        % in a symbol of sufficient height to overcome up to six consecutive 0s
        % in two neighbouring 5 of 9 dot patterns
        rows 2 mod 1 eq rows 12 le or {
            /sum 0 def  /p 0 def
            1 1 columns 2 sub {
                clearcol {
                    /sum sum 1 add def
                    /p sum 1 eq {rows} {p rows mul} ifelse def
                } {
                    /sum 0 def
                    /pen pen p add def
                    /p 0 def
                } ifelse
            } for
            /pen pen p add def
        } if

        % Check for groups of blank rows unless data is encoded horizontally
        % in a symbol of sufficent width to overcome up to six consecutive 0s
        % in two neighbouring 5 of 9 dot patterns
        rows 2 mod 0 eq columns 12 le or {
            /sum 0 def  /p 0 def
            1 1 rows 2 sub {
                clearrow {
                    /sum sum 1 add def
                    /p sum 1 eq {columns} {p columns mul} ifelse def
                } {
                    /sum 0 def
                    /pen pen p add def
                    /p 0 def
                } ifelse
            } for
            /pen pen p add def
        } if

        % Pad twice on all sides
        /symp [
            columns 4 add 2 mul {0} repeat
            0 columns sym length 1 sub {
                0 exch 0 exch
                sym exch columns getinterval aload pop
                0 0
            } for
            columns 4 add 2 mul {0} repeat
        ] def

        % Count voids and isolated dots
        /columns columns 4 add def
        /rows    rows    4 add def
        /sum 0 def
        2 1 rows 3 sub {
            /y exch def
            y 1 and 2 add 2 columns 3 sub {
                /x exch def
                1 {  % Common exit
                    symp x 1 sub y 1 sub dmv get 1 eq {exit} if
                    symp x 1 add y 1 sub dmv get 1 eq {exit} if
                    symp x 1 sub y 1 add dmv get 1 eq {exit} if
                    symp x 1 add y 1 add dmv get 1 eq {exit} if
                    symp x y dmv get 0 eq {/sum sum 1 add def exit} if
                    symp x 2 sub y       dmv get 1 eq {exit} if
                    symp x       y 2 sub dmv get 1 eq {exit} if
                    symp x 2 add y       dmv get 1 eq {exit} if
                    symp x       y 2 add dmv get 1 eq {exit} if
                    /sum sum 1 add def
                } repeat
            } for
        } for
        /columns columns 4 sub def
        /rows    rows    4 sub def

        worst 0 eq {  % Fixed penalty to disqualify a symbol with an unlit edge
            -99999
        } {
            worst sum sum mul sub pen sub
        } ifelse

    } bind def

    % Reed Solomon antilog table
    /rsalog [ 1 112 { dup 3 mul 113 mod } repeat ] def
    /step nw 112 idiv 1 add def
    /offset {step mul start add} bind def

    % Evaluate the symbols in the following order:
    % fast mode: m3 -> m3' -> m2 -> m2' -> m1 -> m1' -> m0 -> m0'
    % dflt mode: (m0 m1 m2 m3) -> (m0' m1' m2' m3')
    % -> : Test if we have met the HxW/2 threshold
    % m' : Symbols with six edge dots forcibly lit
    % () : Best of
    /bestscore -99999999 def
    /masks mask -1 ne {
        [ mask ]
    } {
        fast { [ 2#11 2#10 2#01 2#00 ] } { [ 2#00 2#01 2#10 2#11 ] } ifelse
    } ifelse def
    /litmasks 4 array def
    masks {  % For each mask pattern

        /mask exch def

        % Calculate the error correction codewords for each block
        /rscws [
             mask
             [ 0 3 7 17 ] mask get 0 cws {1 index add 113 mod exch 2 index add exch 3 1 roll} forall pop pop
             nc {0} repeat
        ] def
        0 1 step 1 sub {
            /start exch def
            /ND nd 1 add start sub step add 1 sub step idiv def
            /NW nw 1 add start sub step add 1 sub step idiv def
            /NC NW ND sub def
            /coeffs [ 1 NC {0} repeat ] def
            1 1 NC {
                /i exch def
                NC -1 1 {
                    /j exch def
                    coeffs j coeffs j get 113 add rsalog i get coeffs j 1 sub get mul 113 mod sub 113 mod put
                } for
            } for
            0 1 ND 1 sub {
                /t exch rscws exch offset get rscws ND offset get add 113 mod def
                0 1 NC 2 sub {
                    /j exch def
                    rscws ND j add offset rscws ND j add 1 add offset get 113 add t coeffs j 1 add get mul 113 mod sub 113 mod put
                } for
                rscws ND NC add 1 sub offset 113 t coeffs NC get mul 113 mod sub 113 mod put
            } for
            ND 1 NW 1 sub { dup rscws exch offset 113 rscws 5 -1 roll offset get sub 113 mod put } for
        } for

        % Create the bitstream
        /bits ndots string def
        bits 0 [ (00) (01) (10) (11) ] mask get putinterval
        1 1 nw {
            /i exch def
            bits i 1 sub 9 mul 2 add encs rscws i get get putinterval
        } for
        rembits 0 gt {
            bits nw 9 mul 2 add (11111111111111111) 0 rembits getinterval putinterval
        } if

        % Walk the symbol placing the bitstream
        /pixs outline dup length array copy def
        /posx 0 def
        /posy rows 2 mod 0 eq {0} {rows 1 sub} ifelse def
        bits 0 bits length 6 sub getinterval {
            {  % Move to next vacant position
                pixs posx posy dmv get -1 eq {exit} if
                rows 2 mod 0 eq {
                    /posy posy 1 add def
                    posy rows eq {
                        /posy 0 def
                        /posx posx 1 add def
                    } if
                } {
                    /posx posx 1 add def
                    posx columns eq {
                        /posx 0 def
                        /posy posy 1 sub def
                    } if
                } ifelse
            } loop
            pixs posx posy dmv 3 -1 roll 48 sub put
        } forall
        0 1 5 {  % Last six edge dots
            /i exch def
            pixs sixedges i get aload pop dmv
            bits bits length 6 sub i add get 48 sub put
        } for

        % Evaluate the symbol to find the most suitable mask
        /score pixs evalsymbol def
        score bestscore gt {
            /bestsym pixs def
            /bestscore score def
            fast bestscore rows columns mul 2 idiv gt and {exit} if
        } if

        % Make a copy with lit edges for possible later evaluation
        /litmask pixs dup length array copy def
        0 1 5 {  % Light last six edge dots
            /i exch def
            litmask sixedges i get aload pop dmv
            1 put
        } for
        litmasks mask litmask put

        % In fast mode immediately score the lit symbol
        fast {
            /score litmask evalsymbol def
            score bestscore gt {
                /bestsym litmask def
                /bestscore score def
                bestscore rows columns mul 2 idiv gt {exit} if
            } if
        } if

    } forall
    /pixs bestsym def

    % For default mode, if best mask fails threshold then recalculate with lit corners and pick best
    fast not bestscore rows columns mul 2 idiv le and {
        /bestscore -99999999 def
        masks {
            litmasks exch get /litmask exch def
            /score litmask evalsymbol def
            score bestscore gt {
                /bestsym litmask def
                /bestscore score def
            } if
        } forall
        /pixs bestsym def
    } if

    % Return the arguments
    <<
    /ren //renmatrix
    /dotty true
    /pixs pixs
    /pixx columns
    /pixy rows
    /height rows 2 mul 72 div
    /width columns 2 mul 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /dotcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER dotcode--

% --BEGIN ENCODER ultracode--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: Ultracode
% --EXAM: Awesome colours!
% --EXOP: eclevel=EC2
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp ultracode 0.0 2019110800 86884 86411
%%BeginData:        335 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ultracode {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /eclevel (EC2) def     % EC0-EC5
    /parse false def
    /parsefnc false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Convert input into bytes accounting for FNC characters
    /fn1 -1 def  /fn3 -2 def
    /fncvals <<
        (FNC1) fn1
        (FNC3) fn3
    >> def
    /msg barlen array def
    /i 0 def /j 0 def {
        i barlen eq {exit} if
        /char barcode i get def
        parsefnc char 94 eq and i barlen 4 sub lt and {
            barcode i 1 add get 94 ne {
                /char fncvals barcode i 1 add 4 getinterval get def
                /i i 4 add def
            } {
                /i i 1 add def
            } ifelse
        } if
        msg j char put
        /i i 1 add def
        /j j 1 add def
    } loop
    /msg msg 0 j getinterval def
    /msglen msg length def

    % Basic high level encoding
    /start 257 def  % 8-bit ISO-8859-1
    /scr [] def     % Empty symbol control region
    /link1 0 def
    /scp [] def     % Empty start sequence parameters
    /dcws [
        scr aload pop
        scp aload pop
        msg {
            dup fn1 eq {pop 268} if
            dup fn3 eq {pop 269} if
        } forall
    ] def
    /mcc dcws length 3 add def  % start mcc acc dcws

    /eclval eclevel 2 get 48 sub def
    eclval 0 ne {
        /qcc [0 1 2 4 6 8] eclval get mcc 25 idiv mcc 25 mod 0 ne {1 add} if mul 5 add def
    } {
        /qcc 3 def
    } ifelse
    /acc qcc 3 sub 78 link1 mul add def
    /tcc mcc qcc add def

    % Lookup the most appropriate symbol specification
    /metrics [
        % rows  minc  maxc  mcol
        [   2     4    34     5  ]
%        [   3    33    78    13  ]
        [   3    33    82    13  ]   % TODO Adjusted to fill gap in spec
        [   4    82   158    23  ]
        [   5   134   282    30  ]
    ] def
    0 1 3 {
        /i exch def
        /m metrics i get def
        /rows m 0 get def
        /minc m 1 get def
        /maxc m 2 get def
        /mcol m 3 get def
        /okay true def
        tcc minc lt tcc maxc gt or {/okay false def} if
        okay {exit} if
    } for

    okay not {
        /bwipp.ultracodeNoValidSymbol (No valid symbol available) //raiseerror exec
    } if

    % Determine required number of columns and pads
    mcol 1 61 {
        /columns exch def
        columns
        columns 15 ge {1 sub} if
        columns 31 ge {1 sub} if
        columns 47 ge {1 sub} if
        rows mul 3 sub tcc sub dup 0 ge {
            /pads exch def
            exit
        } if
        pop
    } for
    /dcc columns mcol sub def

    % Reed-Solomon error correction
    /rsseq [
        start
        mcc
        acc
        scr  aload pop
        dcws aload pop
        qcc {0} repeat
        0  % Working space
    ] def

    % Calculate the log and anti-log tables
    /rsalog [ 1 282 {dup 3 mul 283 mod} repeat ] def
    /rslog 283 array def
    1 1 282 {dup rsalog exch get exch rslog 3 1 roll put} for

    % Function to calculate the product in the field
    /rsprod {
        2 copy 0 ne exch 0 ne and {
            rslog exch get exch rslog exch get add 282 mod rsalog exch get
        } {
            pop pop 0
        } ifelse
    } bind def

    % Generate the coefficients
    /n mcc def  /k qcc def
    /coeffs [ 1 k {0} repeat ] def
    1 1 k {
        /i exch def
        coeffs i coeffs i 1 sub get put
        i 1 sub -1 1 {
            /j exch def
            coeffs j coeffs j 1 sub get coeffs j get rsalog i get rsprod add 283 mod put
        } for
        coeffs 0 coeffs 0 get rsalog i get rsprod put
    } for
    /coeffs coeffs 0 coeffs length 1 sub getinterval def
    coeffs length 1 sub -2 0 {coeffs exch 2 copy get 283 exch sub put} for

    % Derive the error codewords
    0 1 n 1 sub {
        /t exch rsseq exch get rsseq n get add 283 mod def
        0 1 k 1 sub {
            /j exch def
            rsseq n j add rsseq n j add 1 add get 283 t coeffs k j sub 1 sub get mul 283 mod sub add 283 mod put
        } for
    } for
    n 1 n k add { dup rsseq exch 283 rsseq 5 -1 roll get sub 283 mod put } for
    /ecws rsseq n k getinterval def

    /dccu [
        51363  51563  51653  53153  53163  53513  53563  53613  %  0-7
        53653  56153  56163  56313  56353  56363  56513  56563  %  8-15
        51316  51356  51536  51616  53156  53516  53536  53616  % 16-23
        53636  53656  56136  56156  56316  56356  56516  56536  % 24-31
    ] def

    /dccl [
        61351  61361  61531  61561  61631  61651  63131  63151  %  0-7
        63161  63531  63561  63631  65131  65161  65351  65631  %  8-15
        31351  31361  31531  31561  31631  31651  35131  35151  % 16-23
        35161  35361  35631  35651  36131  36151  36351  36531  % 24-31
    ] def

    /tiles [
        13135  13136  13153  13156  13163  13165  13513  13515  13516  13531  %   0-9
        13535  13536  13561  13563  13565  13613  13615  13616  13631  13635  %  10-19
        13636  13651  13653  13656  15135  15136  15153  15163  15165  15313  %  20-29
        15315  15316  15351  15353  15356  15361  15363  15365  15613  15615  %  30-39
        15616  15631  15635  15636  15651  15653  15656  16135  16136  16153  %  40-49
        16156  16165  16313  16315  16316  16351  16353  16356  16361  16363  %  50-59
        16365  16513  16515  16516  16531  16535  16536  16561  16563  16565  %  60-69
        31315  31316  31351  31356  31361  31365  31513  31515  31516  31531  %  70-79
        31535  31536  31561  31563  31565  31613  31615  31631  31635  31636  %  80-89
        31651  31653  31656  35131  35135  35136  35151  35153  35156  35161  %  90-99
        35163  35165  35315  35316  35351  35356  35361  35365  35613  35615  % 100-109
        35616  35631  35635  35636  35651  35653  35656  36131  36135  36136  % 110-119
        36151  36153  36156  36163  36165  36315  36316  36351  36356  36361  % 120-129
        36365  36513  36515  36516  36531  36535  36536  36561  36563  36565  % 130-139
        51313  51315  51316  51351  51353  51356  51361  51363  51365  51513  % 140-149
        51516  51531  51536  51561  51563  51613  51615  51616  51631  51635  % 150-159
        51636  51651  51653  51656  53131  53135  53136  53151  53153  53156  % 160-169
        53161  53163  53165  53513  53516  53531  53536  53561  53563  53613  % 170-179
        53615  53616  53631  53635  53636  53651  53653  53656  56131  56135  % 180-189
        56136  56151  56153  56156  56161  56163  56165  56313  56315  56316  % 190-199
        56351  56353  56356  56361  56363  56365  56513  56516  56531  56536  % 200-209
        56561  56563  61313  61315  61316  61351  61353  61356  61361  61363  % 210-219
        61365  61513  61515  61516  61531  61535  61536  61561  61563  61565  % 220-229
        61615  61631  61635  61651  61653  63131  63135  63136  63151  63153  % 230-239
        63156  63161  63163  63165  63513  63515  63516  63531  63535  63536  % 240-249
        63561  63563  63565  63613  63615  63631  63635  63651  63653  65131  % 250-259
        65135  65136  65151  65153  65156  65161  65163  65165  65313  65315  % 260-269
        65316  65351  65353  65356  65361  65363  65365  65613  65615  65631  % 270-279
        65635  65651  65653  56565  51515                                     % 280-284
    ] def

    % Create the bitmap
    /rows rows 6 mul 1 add def
    /columns columns 6 add def
    /pixs [ rows columns mul {-1} repeat ] def
    /qmv {columns mul add} bind def
    0 1 columns 1 sub {
        /i exch def
        0 6 rows 1 sub {
            /j exch def
            i 5 ge {pixs i j qmv i 2 mod 9 mul put} if
        } for
        pixs i 0 qmv 9 put
        pixs i rows 1 sub qmv 9 put
    } for
    1 1 rows 2 sub {
        /i exch def
        3 16 columns 1 sub {
            /j exch def
            pixs j i qmv 1 i 2 mod sub 9 mul put
        } for
        pixs 0 i qmv 9 put
        pixs 1 i qmv 1 i 2 mod sub 9 mul put
        pixs 2 i qmv 0 put
        pixs 3 i qmv 9 put
        pixs 4 i qmv 0 put
        pixs columns 1 sub i qmv 9 put
    } for

    % DCCU and DCCL tiles
    /i rows 2 idiv 5 sub def
    [
        dccu dcc get 10 5 string cvrs {48 sub} forall
        0
        dccl dcc get 10 5 string cvrs {48 sub} forall
    ] {
        pixs 2 i qmv 3 -1 roll put
        /i i 1 add def
    } forall

    % Data tiles
    /tileseq [
        start
        mcc
        ecws aload pop
        tcc
        283  % SEP
        acc
        scr  aload pop
        dcws aload pop
        pads {284} repeat
        qcc
    ] def

    /x 5 def /y 1 def
    tileseq {
         tiles exch get 10 5 string cvrs {
              pixs x y qmv 3 -1 roll 48 sub put
              /y y 1 add def
         } forall
         y rows 1 sub ne {
              /y y 1 add def      % Jump horizontal timing pattern
         } {
              /x x 1 add def  /y 1 def
              pixs x y qmv get -1 ne {
                  /x x 1 add def  % Jump vertical timing pattern
              } if
         } ifelse
    } forall

    % Return the arguments
    <<
    /ren //renmatrix
    /pixs pixs
    /pixx columns
    /pixy rows
    /height rows 72 div 2 mul
    /width columns 72 div 2 mul
    /colormap <<
        0 (00000000)
        9 (000000FF)
        1 (FF000000)
        3 (00FF0000)
        5 (0000FF00)
        6 (7F00FF00)
    >>
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ultracode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ultracode--

% --BEGIN ENCODER jabcode--
% --REQUIRES preamble raiseerror renmatrix--
% --DESC: JAB Code (Beta)
% --EXAM: This is JAB Code
% --EXOP: eclevel=6
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp jabcode 0.0 2019110800 245332 280591
%%BeginData:       1168 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/jabcode {

    20 dict begin

    /options exch def
    /barcode exch def

    /dontdraw false def
    /rows -1 def
    /columns -1 def
    /slave false def
    /colors 16 def
    /eclevel 6 def  % 0-10
    /raw false def
    /parse false def
    /parsefnc false def
    /mask -1 def    % 0-7

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /rows rows cvi def
    /columns columns cvi def
    /colors colors cvi def
    /eclevel eclevel cvi def
    /mask mask cvi def

    /databpm colors ln 2 ln div round cvi def
    /metabpm colors dup 8 gt {pop 8} if ln 2 ln div round cvi def

    % Parse ordinals of the form ^NNN to ASCII
%psc     parse {
%psc         /msg barcode length string def
%psc         /j 0 def
%psc         barcode
%psc         { % loop
%psc             (^) search {
%psc                 dup msg exch j exch putinterval
%psc                 length j add 1 add /j exch def
%psc                 pop
%psc                 dup 0 3 getinterval cvi msg exch j 1 sub exch put
%psc                 dup length 3 sub 3 exch getinterval
%psc             } {
%psc                 dup msg exch j exch putinterval
%psc                 length j add /j exch def
%psc                 /barcode msg 0 j getinterval def
%psc                 exit
%psc             } ifelse
%psc         } loop
%psc     } if

    /barlen barcode length def

    % Convert input into bytes accounting for FNC characters
    /fn1 -1 def
    /fncvals <<
        (FNC1) fn1
    >> def
    /msg barlen array def
    /i 0 def /j 0 def {
        i barlen eq {exit} if
        /char barcode i get def
        parsefnc char 94 eq and i barlen 4 sub lt and {
            barcode i 1 add get 94 ne {
                /char fncvals barcode i 1 add 4 getinterval get def
                /i i 4 add def
            } {
                /i i 1 add def
            } ifelse
        } if
        msg j char put
        /i i 1 add def
        /j j 1 add def
    } loop
    /msg msg 0 j getinterval def
    /msglen msg length def

    % Wide array support, as needed
%psc     {65536 array} stopped {
%psc         pop
%psc         /arrayw {
%psc             dup 65535 idiv 1 add dup array exch 0 exch 1 sub {2 copy 65535 array put 1 add} repeat
%psc             1 index 4 1 roll 3 -1 roll 65535 mod array put
%psc         } bind def
%psc         /getw  {exch 1 index 65535 idiv get exch 65535 mod get} bind def
%psc         /putw  {3 1 roll exch 1 index 65535 idiv get exch 65535 mod 3 -1 roll put} bind def
%psc         /copyw {exch 0 exch {dup length array copy 3 copy put pop 1 add} forall pop} bind def
%psc     } {
%psc         pop
%psc         /arrayw {array} bind def
%psc         /getw   {get}   bind def
%psc         /putw   {put}   bind def
%psc         /copyw  {copy}  bind def
%psc     } ifelse

    /addtobits {
        dup bits j 3 -1 roll putinterval
        length j add /j exch def
    } bind def

    /tofixedbits {  % Zero padded base 2 string
        (0000000000000) 13 string copy dup 4 -1 roll 2 13 string cvrs
        dup length 4 index exch sub exch putinterval
        0 3 -1 roll getinterval
    } bind def

    % Encode the data using byte mode encoding and terminate with EOM
    /bits 7 msglen 15 le {4} {17} ifelse add msglen 8 mul add 12 add string def
    /j 0 def
    31 5 tofixedbits addtobits  % MS
    (00) addtobits              % S/B
    msglen 15 le {
        msglen 4 tofixedbits addtobits
    } {
        (0000) addtobits
        msglen 16 sub 13 tofixedbits addtobits
    } ifelse
    0 1 msglen 1 sub {
        msg exch get 8 tofixedbits addtobits
    } for
    28 5 tofixedbits addtobits  % L/L
    31 5 tofixedbits addtobits  % MS
    (11) addtobits              % EOM

    % TODO Cascade
    /diffside 21 def
    /sameshape false def
    /sameecc false def
    /hasslaves false def

    % Determine the metrics for a symbol of a given size
    /metrics {
        /mc exch def  /mr exch def
        mc mr mul                                      % All modules
        mc 25 sub 16 idiv 2 add mr 25 sub 16 idiv 2 add
        mul 4 sub 7 mul                                % Alignment modules
        64 colors 2 copy gt {exch} if pop 2 mul        % Palette modules
        slave {7} {17} ifelse 4 mul                    % Finder modules

        % Metadata bits and modules
        slave not {  % Master
            /metass mr mc eq {0} {1} ifelse def
            mr mc 2 copy lt {exch} if pop
            21 sub 16 idiv [ 0 1 2 2 3 3 3 3 ] exch get  /metavf exch def
            /metavlen metass 0 eq {[2 2 3 4]} {[4 6 8 10]} ifelse metavf get def
            /metaelen metavf 2 mul 10 add def
            7                                          % II:  SS VF MSK SF
            metavlen add metaelen add                  % III: V E
            hasslaves {4 add} if                       % III: S
            2 mul                                      % LDPC
            metabpm div ceiling cvi
            dup metabpm mul 6 add /nummetabits exch def
            6 add                                      % I:   Nc into 6 modules
        } {  % Slave
            3                                          % I:   SS SE SF
            sameshape not {5 add} if                   % II:  V
            hasslaves     {3 add} if                   % II:  S
            sameecc not {
                mr mc 2 copy lt {exch} if pop
                21 sub 16 idiv [ 10 12 14 14 16 16 16 16 ] exch get
                add                                    % III: E
            } if
            2 mul                                      % LDPC
            metabpm div ceiling cvi
            dup metabpm mul /nummetabits exch def
        } ifelse

        dup              /nummetamodules exch def
        add add add sub  /numdatamodules exch def
        /numdatabits numdatamodules databpm mul def
    } bind def

    % Select a symbol size sufficient to carry the message
    /coderate [ 0.67 0.63 0.57 0.55 0.50 0.43 0.34 0.25 0.20 0.17 0.14 ] eclevel get def
    /grosslen bits length coderate div ceiling cvi def
    /snapsize {ceiling cvi 18 sub dup 0 lt {pop 0} if 4 idiv 4 mul 21 add} bind def

    rows -1 eq columns -1 eq and {        % Square if neither rows or columns fixed
        /size grosslen sqrt snapsize def
        {
            size size metrics
            grosslen numdatabits le {exit} if
            /size size 4 add def
        } loop
        /rows size def
        /columns size def
    } {
        columns -1 eq rows -1 ne and {     % Fixed height
            /columns grosslen rows div snapsize def
            {
                rows columns metrics
                grosslen numdatabits le {exit} if
                /columns columns 4 add def
            } loop
        } if
        rows -1 eq columns -1 ne and {     % Fixed width
            /rows grosslen columns div snapsize def
            {
                rows columns metrics
                grosslen numdatabits le {exit} if
                /rows rows 4 add def
            } loop
        } if
        rows -1 ne columns -1 ne and {     % Fixed height and width
            rows columns metrics
        } if
    } ifelse
    /C numdatabits def
    /cols columns def

    % TODO Reject all invalid sizes
    rows 145 gt cols 145 gt or {
        /bwipp.jabcodeNoValidSymbol (No valid symbol available) //raiseerror exec
    } if

    % Pick ECC params to maximally fill symbol
    /min C def
    3 1 8 {
        /i exch def
        i 1 add 1 9 {
            /j exch def
            /dist C j idiv j mul C j idiv i mul sub bits length sub def
            dist min lt dist 0 ge and {
                /datawc i def
                /datawr j def
                /min dist def
            } if
        } for
    } for

    % Extend the encoded data to fill the required data length
    /tmpbits C datawr idiv datawr mul C datawr idiv datawc mul sub string def
    tmpbits 0 bits putinterval
    bits length 1 tmpbits length 1 sub {
        dup 1 sub tmpbits exch get dup 2 mod 0 eq {1 add} {1 sub} ifelse
        tmpbits 3 1 roll put
    } for
    /bits tmpbits def

    % Avoid 15-bit overflow when multiplying the digits by stealing from the second digit
    % m = 6364136223846793005 = 0x 5851 f42d 4c95 7f2d
    /m0 16#5851 16#1 add def  /m1 16#f42d 16#10000 sub def  /m2 16#4c95 def  /m3 16#7f2d def

    /lcg64_temper {

        % Multiply seed by 6364136223846793005 then add 1

        /p00 m0 s0 mul def  /p01 m0 s1 mul def  /p02 m0 s2 mul def  /p03 m0 s3 mul def
        /p10 m1 s0 mul def  /p11 m1 s1 mul def  /p12 m1 s2 mul def  /p13 m1 s3 mul def
        /p20 m2 s0 mul def  /p21 m2 s1 mul def  /p22 m2 s2 mul def  /p23 m2 s3 mul def
        /p30 m3 s0 mul def  /p31 m3 s1 mul def  /p32 m3 s2 mul def  /p33 m3 s3 mul def

        /s3 p33 16#10000 mod                     1 add def  % 1 added here
        /s2 p32 16#10000 mod p33 16#10000 idiv add
            p23 16#10000 mod                       add def
        /s1 p31 16#10000 mod p32 16#10000 idiv add
            p22 16#10000 mod p23 16#10000 idiv add add
            p13 16#10000 mod                       add def
        /s0 p30 16#10000 mod p31 16#10000 idiv add
            p21 16#10000 mod p22 16#10000 idiv add add
            p12 16#10000 mod p13 16#10000 idiv add add
            p03 16#10000 mod                       add def

        % Simplify carry by making each digit positive by borrowing from more significant digit
        /s3 s3 16#10000 add def
        /s2 s2 16#ffff  add def
        /s1 s1 16#ffff  add def
        /s0 s0 16#ffff  add def

        % Carry
        /s2 s3 16#10000 idiv s2 add def  /s3 s3 16#10000 mod def
        /s1 s2 16#10000 idiv s1 add def  /s2 s2 16#10000 mod def
        /s0 s1 16#10000 idiv s0 add def  /s1 s1 16#10000 mod def
                                         /s0 s0 16#10000 mod def

        % Temper most significant 32 bits
        s0 16#8000 sub 16#10000 mul s1 add 16#80000000 xor
        16#ffffffff and
        dup -11 bitshift xor
        dup   7 bitshift 16#62d3a980 neg and xor  % 0x9D2C5680 - 0x100000000
        dup  15 bitshift 16#103a0000 neg and xor  % 0xEFC60000 - 0x100000000
        16#ffffffff and
        dup -18 bitshift xor

    } bind def

    /createMatrixA {

        /nb_pcb wr 4 lt {Pg_sub_block 2 idiv} {Pg_sub_block wr idiv wc mul} ifelse def
        /offset Pg_sub_block 32 div ceiling cvi def
        /effwidth offset 32 mul def
        /matrixA offset nb_pcb mul arrayw def
        0 1 offset nb_pcb mul 1 sub {matrixA exch 0 putw} for
        /permutation Pg_sub_block array def
        0 1 Pg_sub_block 1 sub {permutation exch dup put} for

        0 1 Pg_sub_block wr idiv 1 sub {
            /i exch def
            0 1 wr 1 sub {
                /j exch def
                matrixA i effwidth wr add mul j add 32 idiv
                2 copy getw 1 31 i effwidth wr add mul j add 32 mod sub bitshift or putw
            } for
        } for

        % Pseudorandom permutation
        /s0 16#0000 def  /s1 16#0000 def  /s2 16#000B def  /s3 16#FC39 def  % s=785465
        1 1 wc 1 sub {
            /i exch def
            /off_index Pg_sub_block wr idiv i mul def
            0 1 Pg_sub_block 1 sub {
                /j exch def
                lcg64_temper
                dup 0 lt {16#80000000 xor 2147483648.0 add} if
                4294967296.0 div Pg_sub_block j sub mul cvi  % (float)UINT32_MAX = 65536.0 * 65536
                /pos exch def
                0 1 Pg_sub_block wr idiv 1 sub {
                    /k exch def
                    matrixA off_index k add offset mul j 32 idiv add
                    2 copy getw
                        matrixA permutation pos get 32 idiv k offset mul add getw
                        31      permutation pos get 32 mod  sub neg bitshift 1 and
                        31 j                        32 mod  sub bitshift
                    or putw
                } for
                permutation pos permutation Pg_sub_block 1 sub j sub 2 copy get permutation pos get
                exch 4 1 roll   % p b p a p[a] p[b] -> p b p[a] p a p[b]
                put put
            } for
        } for

    } bind def

    /createMetadataMatrixA {

        /nb_pcb Pg_sub_block 2 idiv def
        /offset Pg_sub_block 32 div ceiling cvi def
        /matrixA offset nb_pcb mul arrayw def
        0 1 offset nb_pcb mul 1 sub {matrixA exch 0 putw} for
        /permutation Pg_sub_block array def
        0 1 Pg_sub_block 1 sub {permutation exch dup put} for

        % Pseudorandom permutation
        /s0 16#0000 def  /s1 16#0000 def  /s2 16#0000 def  /s3 16#9691 def  % s=38545
        /nb_once nb_pcb wc div Pg_sub_block mul 3 add cvi nb_pcb idiv def
        0 1 nb_pcb 1 sub {
            /i exch def
            0 1 nb_once 1 sub {
                /j exch def
                lcg64_temper
                dup 0 lt {16#80000000 xor 2147483648.0 add} if
                4294967296.0 div Pg_sub_block j sub mul cvi  % (float)UINT32_MAX = 65536.0 * 65536
                /pos exch def
                matrixA i offset mul permutation pos get 32 idiv add
                2 copy getw 1 31 permutation pos get 32 mod sub bitshift or putw
                permutation pos permutation Pg_sub_block 1 sub j sub 2 copy get permutation pos get
                exch 4 1 roll   % p b p a p[a] p[b] -> p b p[a] p a p[b]
                put put
            } for
        } for

    } bind def

    /GaussJordan {

        /nb_pcb wr 4 lt {Pg_sub_block 2 idiv} {Pg_sub_block wr idiv wc mul} ifelse def
        /offset Pg_sub_block 32 div ceiling cvi def
        /matrixH matrixA dup length array copyw def
        /column_arrangement [ Pg_sub_block       {0}     repeat ] def
        /processed_column   [ Pg_sub_block       {false} repeat ] def
        /zero_lines_nb      [ nb_pcb             {0}     repeat ] def
        /swap_col           [ Pg_sub_block 2 mul {0}     repeat ] def
        /zero_lines 0 def

        /loop0 0 def
        0 1 nb_pcb 1 sub {
            /i exch def
            /pivot_column Pg_sub_block 1 add def
            0 1 Pg_sub_block 1 sub {
                /j exch def
                matrixH offset 32 mul i mul j add 32 idiv getw
                31 offset 32 mul i mul j add 32 mod sub neg bitshift 1 and 1 eq {
                    /pivot_column j def
                    exit
                } if
            } for
            pivot_column Pg_sub_block lt {
                processed_column   pivot_column true put
                column_arrangement pivot_column i put
                pivot_column nb_pcb ge {
                    swap_col loop0 2 mul pivot_column put
                    /loop0 loop0 1 add def
                } if
                /off_index  pivot_column 32 idiv def
                /off_index1 pivot_column 32 mod def
                0 1 nb_pcb 1 sub {
                    /j exch def
                    i j ne {
                        matrixH off_index j offset mul add getw
                        31 off_index1 sub neg bitshift 1 and 1 eq {
                            0 1 offset 1 sub {
                                /k exch def
                                matrixH offset j mul k add
                                2 copy getw matrixH offset i mul k add getw xor putw
                            } for
                        } if
                    } if
                } for
            } {
                zero_lines_nb zero_lines i put
                /zero_lines zero_lines 1 add def
            } ifelse
        } for

        /matrix_rank nb_pcb zero_lines sub def
        /loop2 0 def
        matrix_rank 1 nb_pcb 1 sub {
            /i exch def
            column_arrangement i get 0 gt {
                0 1 nb_pcb 1 sub {
                    /j exch def
                    processed_column j get not {
                        column_arrangement j column_arrangement i get put
                        column_arrangement i 0 put
                        processed_column   j true put
                        processed_column   i false put
                        swap_col loop0 2 mul       i put
                        swap_col loop0 2 mul 1 add j put
                        column_arrangement i j put
                        /loop0 loop0 1 add def
                        /loop2 loop2 1 add def
                        exit
                    } if
                } for
            } if
        } for

        /loop1 0 def
        0 1 nb_pcb 1 sub {
            /kl exch def
            processed_column kl get not loop1 loop0 loop2 sub lt and {
                column_arrangement kl column_arrangement swap_col loop1 2 mul get get put
                processed_column kl true put
                swap_col loop1 2 mul 1 add kl put
                /loop1 loop1 1 add def
            } if
        } for

        /loop1 0 def
        0 1 nb_pcb 1 sub {
            /kl exch def
            processed_column kl get not {
                column_arrangement kl zero_lines_nb loop1 get put
                /loop1 loop1 1 add def
            } if
        } for

        0 1 nb_pcb 1 sub {
            /i exch def
            0 1 offset 1 sub {
                /j exch def
                matrixH column_arrangement i get offset mul j add getw
                matrixA exch i offset mul j add exch putw
            } for
        } for

        /tmp 0 def
        0 1 loop0 1 sub {
            /i exch def
            0 1 nb_pcb 1 sub {
                /j exch def
                matrixA swap_col i 2 mul get 32 idiv j offset mul add getw
                31 swap_col i 2 mul get 32 mod sub neg bitshift 1 and neg tmp xor 1 and
                tmp xor /tmp exch def
                matrixA     swap_col i 2 mul       get 32 idiv j offset mul add
                2 copy getw
                    matrixA swap_col i 2 mul 1 add get 32 idiv j offset mul add getw
                    31      swap_col i 2 mul 1 add get 32 mod  sub neg bitshift 1 and neg
                    matrixA swap_col i 2 mul       get 32 idiv j offset mul add getw xor
                    1 31    swap_col i 2 mul       get 32 mod  sub     bitshift and
                xor putw
                matrixA swap_col i 2 mul 1 add get 32 idiv j offset mul add
                2 copy getw
                    tmp 1 and neg
                    matrixA swap_col i 2 mul 1 add get 32 idiv j offset mul add getw xor
                    1 31    swap_col i 2 mul 1 add get 32 mod  sub     bitshift and
                xor putw
            } for
        } for

    } bind def

    /createGeneratorMatrix {

        /pn Pg_sub_block matrix_rank sub def
        /offset pn 32 div ceiling cvi def
        /effwidth offset 32 mul def
        /offset_cap Pg_sub_block 32 div ceiling cvi def
        /G offset Pg_sub_block mul arrayw def
        0 1 offset Pg_sub_block mul 1 sub {
            G exch 0 putw
        } for
        0 1 pn 1 sub {
            /i exch def
            G Pg_sub_block pn sub i add offset mul i 32 idiv add
            2 copy getw 1 31 i 32 mod sub bitshift or putw
        } for
        /matrix_index Pg_sub_block pn sub def
        /loop0 0 def
        0 1 Pg_sub_block pn sub effwidth mul 1 sub {
            /i exch def
            matrix_index Pg_sub_block ge {
                /loop0 loop0 1 add def
                /matrix_index Pg_sub_block pn sub def
            } if
            i effwidth mod pn lt {
                G i 32 idiv
                2 copy getw
                    matrixA matrix_index 32 idiv offset_cap loop0 mul add getw
                    31      matrix_index 32 mod sub neg bitshift 1 and neg
                    G       i            32 idiv getw xor
                    1 31    i            32 mod sub     bitshift and
                xor putw
                /matrix_index matrix_index 1 add def
            } if
        } for

    } bind def

    /ldpc {

        /wr exch def
        /wc exch def
        [ exch {48 sub} forall ] /data exch def

        /Pn data length def
        wr -1 ne {  % Message data
            /Pg Pn wr mul wr wc sub div ceiling wr div ceiling wr mul cvi def
            /nb_sub_blocks Pg 2700 idiv 1 add def
            /Pg_sub_block  Pg nb_sub_blocks idiv wr idiv wr mul def
            /Pn_sub_block  Pg_sub_block wr wc sub mul wr idiv def
            /nb_sub_blocks Pg Pg_sub_block idiv def
            /encoding_iterations Pg Pg_sub_block idiv Pn_sub_block nb_sub_blocks mul Pn lt {1 sub} if def
            createMatrixA
        } {         % Metadata
            /Pg Pn 2 mul def
            /nb_sub_blocks 1 def
            /Pg_sub_block  Pg def
            /Pn_sub_block  Pn def
            /encoding_iterations 1 def
            createMetadataMatrixA
        } ifelse
        GaussJordan
        createGeneratorMatrix

        /ecc_encoded_data Pg array def

        /offset Pg_sub_block matrix_rank sub 32 div ceiling cvi def
        0 1 encoding_iterations 1 sub {
            /iter exch def
            0 1 Pg_sub_block 1 sub {
                /i exch def
                /temp 0 def
                /loop0 0 def
                /offset_index offset i mul def
                iter Pn_sub_block mul 1 iter 1 add Pn_sub_block mul 1 sub {
                    data exch get
                    G offset_index loop0 32 idiv add getw 31 loop0 32 mod sub neg bitshift 1 and and
                    /temp exch temp xor def
                    /loop0 loop0 1 add def
                } for
                ecc_encoded_data i iter Pg_sub_block mul add temp put
            } for
        } for

        encoding_iterations nb_sub_blocks ne {
            /start      encoding_iterations Pn_sub_block mul def
            /last_index encoding_iterations Pg_sub_block mul def
            /Pg_sub_block Pg encoding_iterations Pg_sub_block mul sub def
            /Pn_sub_block Pg_sub_block wr wc sub mul wr idiv def
            createMatrixA
            GaussJordan
            createGeneratorMatrix
            /offset Pg_sub_block matrix_rank sub 32 div ceiling cvi def
            0 1 Pg_sub_block 1 sub {
                /i exch def
                /temp 0 def
                /loop0 0 def
                /offset_index offset i mul def
                start 1 Pn 1 sub {
                    data exch get
                    G offset_index loop0 32 idiv add getw 31 loop0 32 mod sub neg bitshift 1 and and
                    /temp exch temp xor def
                    /loop0 loop0 1 add def
                } for
                ecc_encoded_data i last_index add temp put
            } for
        } if

        /out Pg string def
        0 1 Pg 1 sub {
            dup ecc_encoded_data exch get
            out 3 1 roll 48 add put
        } for
        out

    } bind def

    % Replace data bitstream with LDPC error correction stream
    /bits bits datawc datawr ldpc def

    % Interleave via pseudorandom permutation
    /s0 16#0000 def  /s1 16#0000 def  /s2 16#0003 def  /s3 16#75C7 def  % s=226759
    bits length 1 sub -1 1 {
        /l exch def
        lcg64_temper
        dup 0 lt {16#80000000 xor 2147483648.0 add} if
        4294967296.0 div l 1 add mul cvi  % (float)UINT32_MAX = 65536.0 * 65536
        /r exch def
        bits l get bits r get
        bits exch l exch put
        bits exch r exch put
    } for

    % Append padding bits to the interleaved, ECC encoded data up to capacity
    /tmpbits C string def
    tmpbits 0 bits putinterval
    /j bits length def
    C j sub 1 add 2 idiv {
        tmpbits j 48 put
        j 1 add C lt {tmpbits j 1 add 49 put} if
        /j j 2 add def
    } repeat
    /bits tmpbits def

    % Define the color palette
    colors 4 eq {
        /bi 0 def  /gi 1 def  /mi 2 def  /yi 3 def
        /ki 4 def  /wi 5 def  % Extended
        /palette <<
            bi (0000FF)  gi (00FF00)  mi (FF00FF)  yi (FFFF00)
            ki (000000)  wi (FFFFFF)
        >> def
        /metacolorindex [bi gi mi yi] def
        /palettelayout  [bi gi mi yi] def
    } {
        /rgbres <<
              % r g b   Graduations
           8  [ 2 2 2 ]
          16  [ 4 2 2 ]
          32  [ 4 4 2 ]
          64  [ 4 4 4 ]
         128  [ 8 4 4 ]
         256  [ 8 8 4 ]
        >> colors get def

        /rvals rgbres 0 get [ exch 1 sub dup 0 exch 1 exch {255 2 index div mul round cvi exch} for pop ] def
        /gvals rgbres 1 get [ exch 1 sub dup 0 exch 1 exch {255 2 index div mul round cvi exch} for pop ] def
        /bvals rgbres 2 get [ exch 1 sub dup 0 exch 1 exch {255 2 index div mul round cvi exch} for pop ] def

        /palette colors dict def
        /palettelayout 64 colors 2 copy gt {exch} if pop array def
        /i 0 def  /j 8 def
        rvals {
            /r exch def
            gvals {
                /g exch def
                bvals {
                    /b exch def
                    r 16 bitshift g 8 bitshift or b or
                    (000000) 6 string copy dup 3 -1 roll 16 6 string cvrs dup length 6 exch sub exch putinterval
                    false
                    1 index (000000) eq {/ki i def  pop true} if
                    1 index (0000FF) eq {/bi i def  pop true} if
                    1 index (00FF00) eq {/gi i def  pop true} if
                    1 index (00FFFF) eq {/ci i def  pop true} if
                    1 index (FF0000) eq {/ri i def  pop true} if
                    1 index (FF00FF) eq {/mi i def  pop true} if
                    1 index (FFFF00) eq {/yi i def  pop true} if
                    1 index (FFFFFF) eq {/wi i def  pop true} if
                    not {
                        colors 64 le
                        colors 128 eq
                            r 0 eq r 73 eq or r 182 eq or r 255 eq or and
                        colors 256 eq
                            r 0 eq r 73 eq or r 182 eq or r 255 eq or and
                            g 0 eq g 73 eq or g 182 eq or g 255 eq or and
                        or or {  % RGB space is sampled into 64 slots
                            palettelayout j i put
                            /j j 1 add def
                        } if
                    } if
                    palette exch i exch put
                    /i i 1 add def
                } forall
            } forall
        } forall
        palettelayout 0 [ki bi gi ci ri mi yi wi] putinterval
        /metacolorindex [ki bi gi ci ri mi yi wi] def
    } ifelse

    % Create the pixel map
    /pixs [rows cols mul {-1} repeat] def
    /jmv {cols mul add} bind def

    % Finder patterns
    slave not {  % Master alignment pattern
        /fpat [
            [ 1 1 1 0 0 ]
            [ 1 2 2 0 0 ]
            [ 1 2 1 2 1 ]
            [ 0 0 2 2 1 ]
            [ 0 0 1 1 1 ]
        ] def
        /fmap [
            [ -1 bi yi ]  % UL
            [ -1 yi bi ]  % LL
            [ -1 gi mi ]  % UR
            [ -1 mi gi ]  % LR
        ] def
    } {  % Slave alignment pattern
        /fpat [
            [ 0 0 0 0 0 ]
            [ 0 2 2 0 0 ]
            [ 0 2 1 2 0 ]
            [ 0 0 2 2 0 ]
            [ 0 0 0 0 0 ]
        ] def
        /fmap [
            [ -1 ki wi ]  % UL
            [ -1 ki wi ]  % LL
            [ -1 ki wi ]  % UR
            [ -1 ki wi ]  % LR
        ] def
    } ifelse
    0 1 4 {
      /y exch def
      0 1 4 {
        /x exch def
        /fpb fpat y get x get def
        pixs x 1 add y 1 add                     jmv fmap 0 get fpb get put
        pixs x 1 add           rows y sub 2 sub  jmv fmap 1 get fpb get put
        pixs x cols add 6 sub  y 1 add           jmv fmap 2 get fpb get put
        pixs x cols add 6 sub  rows y sub 2 sub  jmv fmap 3 get fpb get put
      } for
    } for

    % Alignment patterns
    /algnpat0 [
        [ ki ki -1 ]
        [ ki wi ki ]
        [ -1 ki ki ]
    ] def
    /algnpat1 [
        [ -1 ki ki ]
        [ ki wi ki ]
        [ ki ki -1 ]
    ] def
    /num cols 16 div round cvi 1 sub def
    /algnrpos [ 3 17 ] def
    num 0 gt {
        /algnrpos [ 0 1 num {cols 7 sub num div mul cvi 3 add} for ] def
    } if
    /num rows 16 div round cvi 1 sub def
    /algncpos [ 3 17 ] def
    num 0 gt {
        /algncpos [ 0 1 num {rows 7 sub num div mul cvi 3 add} for ] def
    } if
    /putalgnpat {
        /pp exch def
        /py exch def
        /px exch def
        0 1 2 {
            /pb exch def
            0 1 2 {
                /pa exch def
                pixs px pa add py pb add jmv pp pb get pa get put
            } for
        } for
    } bind def
    0 1 algncpos length 1 sub {
        /j exch def
        /y algncpos j get def
        0 1 algnrpos length 1 sub {
            /i exch def
            /x algnrpos i get def
            pixs x y jmv get -1 eq {
                x 1 sub y 1 sub i j add 2 mod 0 eq {algnpat0} {algnpat1} ifelse putalgnpat
            } if
        } for
    } for

    slave not {

        [  % Expanded to [ x y ] [ x -y ] [ -x -y ] [ x -y ]
            % Metadata and palette
            [ 6 1 ] [ 6 2 ] [ 6 3 ] [ 6 4 ] [ 6 5 ] [ 6 6 ] [ 5 6 ] [ 4 6 ] [ 3 6 ] [ 2 6 ]  %  0-39
            [ 1 6 ] [ 7 1 ] [ 7 2 ] [ 7 3 ] [ 7 4 ] [ 7 5 ] [ 7 6 ] [ 7 7 ] [ 6 7 ] [ 5 7 ]  % 40-79
            % Palette only
            [  4  7 ] [  3  7 ] [  2  7 ] [  1  7 ] [  8  1 ] [  8  2 ] [  8  3 ] [  8  4 ]  % 16-31
            [  8  5 ] [  8  6 ] [  8  7 ] [  8  8 ] [  7  8 ] [  6  8 ] [  5  8 ] [  4  8 ]  % 32-47
            [  3  8 ] [  2  8 ] [  1  8 ] [  9  1 ] [  9  2 ] [  9  3 ] [  9  4 ] [  9  5 ]  % 48-63
        ] {
            aload pop /y exch def /x exch def
            [ x y ] [ x neg y ] [ x neg y neg ] [ x y neg ]
        } forall
        176 array astore /metadatamap exch def

        /palettemap1 [
            [  4  1 ] [  4  2 ] [  5  1 ] [  5  2 ] [  2  4 ] [  2  5 ] [  1  4 ] [  1  5 ]  %  0-7
            [ -2  1 ] [ -2  2 ] [ -1  1 ] [ -1  2 ] [ -4  4 ] [ -4  5 ] [ -5  4 ] [ -5  5 ]  %  8-15
        ] def

        /palettemap2 [
            [ -4 -5 ] [ -4 -4 ] [ -5 -5 ] [ -5 -4 ] [ -2 -2 ] [ -2 -1 ] [ -1 -2 ] [ -1 -1 ]  %  0-7
            [  2 -5 ] [  2 -4 ] [  1 -5 ] [  1 -4 ] [  4 -2 ] [  4 -1 ] [  5 -2 ] [  5 -1 ]  %  8-15
        ] def

    } {  % Slave

        % TODO Cascade

        /metadatamap [
            1 1 19 {
                /i exch def
                [ 0 i ] [ 1 i ]
            } for
            5 1 12 {
                /i exch def
                [ 2 i ] [ 3 i ]
            } for
        ] def

        /palettemap1 [
             5  1 12 { [ exch 4 exch ] } for
            12 -1  5 { [ exch 5 exch ] } for
             5  1 12 { [ exch 6 exch ] } for
            12 -1  5 { [ exch 7 exch ] } for
        ] def

        /palettemap2 [
            palettemap1 {[ exch aload pop neg exch neg exch]} forall
        ] def

    } ifelse

    % Normalise wrapping
    metadatamap {
        dup 0 get dup 0 lt {cols add 1 sub 1 index 0 3 -1 roll put} {pop} ifelse
        dup 1 get dup 0 lt {rows add 1 sub 1 index 1 3 -1 roll put} {pop} ifelse
        pop
    } forall
    palettemap1 {
        dup 0 get dup 0 lt {cols add 1 sub 1 index 0 3 -1 roll put} {pop} ifelse
        dup 1 get dup 0 lt {rows add 1 sub 1 index 1 3 -1 roll put} {pop} ifelse
        pop
    } forall
    palettemap2 {
        dup 0 get dup 0 lt {cols add 1 sub 1 index 0 3 -1 roll put} {pop} ifelse
        dup 1 get dup 0 lt {rows add 1 sub 1 index 1 3 -1 roll put} {pop} ifelse
        pop
    } forall

    % Reserve the metadata modules to be placed once mask is determined
    0 1 nummetamodules 1 sub {
        pixs exch metadatamap exch get aload pop jmv 0 put
    } for

    % Place the color palette
    slave not {
        % Up to first 16 colors into finder slots
        0 1 16 colors 2 copy gt {exch} if pop 1 sub {
            /i exch def
            palettelayout i get dup
            pixs exch palettemap1 i get aload pop jmv exch put
            pixs exch palettemap2 i get aload pop jmv exch put
        } for
        /i 16 def
    } {
        /i 0 def
    } ifelse

    % Continue palette placement after end of metadata modules
    /j nummetamodules def
    i 2 palettelayout length 1 sub {
        /i exch def
        palettelayout i get dup
        pixs exch metadatamap j       get aload pop jmv exch put
        pixs exch metadatamap j 2 add get aload pop jmv exch put
        palettelayout i 1 add get dup
        pixs exch metadatamap j 1 add get aload pop jmv exch put
        pixs exch metadatamap j 3 add get aload pop jmv exch put
        /j j 4 add def
    } for

    % Calculate the mask patterns applied to data modules
    /maskfuncs [
        {add colors mod} bind
        {pop colors mod} bind
        {exch pop colors mod} bind
        {3 idiv exch 2 idiv add colors mod} bind
        {2 idiv exch 3 idiv add colors mod} bind
        {add dup 2 idiv exch 3 idiv add colors mod} bind
        {2 copy exch dup mul mul 7 mod 3 1 roll exch dup mul add 2 mul 19 mod add colors mod} bind
        {2 copy dup mul mul 5 mod 3 1 roll dup mul exch 2 mul add 13 mod add colors mod} bind
    ] def
    mask -1 ne {  % User specifies a mask
        /maskfuncs [maskfuncs mask get] def
        /bestmaskval mask def
    } if
    /masks maskfuncs length array def
    0 1 masks length 1 sub {
        /m exch def
        /mask rows cols mul array def
        0 1 rows 1 sub {
            /j exch def
            0 1 cols 1 sub {
                /i exch def
                pixs i j jmv get -1 eq {i j maskfuncs m get exec} {0} ifelse
                mask i j jmv 3 -1 roll put
            } for
        } for
        masks m mask put
    } for

    % Walk the symbol placing the data bitstream
    /posx 0 def  /posy 0 def
    /i 0 def
    { % loop
        posx cols eq {exit} if
        pixs posx posy jmv get -1 eq {
            bits i databpm getinterval 0 exch {48 sub add 2 mul} forall 2 idiv
            pixs posx posy jmv 3 -1 roll put
            /i i databpm add def
        } if
        /posy posy 1 add def
        posy rows eq {/posy 0 def /posx posx 1 add def} if
    } loop

    % Evaluate runlength encoded rows or columns in full symbols
    /evalrle {
        /scrle exch def
        /scr1 0 def  /scr3 0 def
        0 2 scrle length 2 sub {
            /j exch def
            scrle j 1 add get -1 ne {  % Skip over voids
                % Detect runs of 5 or more like modules, except in voids
                scrle j get dup 5 ge {2 sub /scr1 exch scr1 add def} {pop} ifelse
                % Detect finder pattern
                j 4 ge j scrle length 5 sub le and {
                    scrle j 4 sub 10 getinterval                     % n1 c1 ... n5 c5
                    dup {1 eq} forall pop 4 {exch pop and} repeat {  % n{1-5}=1
                        mark exch aload pop
                        8 index dup 6 index eq exch 2 index eq and   % c1=c3=c5
                        7 index 4 index eq and {                     % c2=c4
                            2 index  /c4 exch def  /c5 exch def
                            c4 bi eq c5 yi eq and  c4 yi eq c5 bi eq and
                            c4 gi eq c5 mi eq and  c4 mi eq c5 gi eq and
                            or or or {/scr3 scr3 100 add def} if
                        } if
                        cleartomark
                    } {pop} ifelse
                } if
            } if
        } for
        scr1 scr3
    } bind def

    /evalmask {
        /sym exch def

        /n1 0 def /n2 0 def /n3 0 def
        /rle rows cols 2 copy lt {exch} if pop 2 mul 2 add array def
        /lastpairs cols array def
        /thispairs cols array def

        % Runlength encode and evaluate each column
        0 1 cols 1 sub {
            /i exch def
            mark 0 -1
            i cols rows cols mul 1 sub {
                sym exch get 2 copy eq {pop exch 1 add exch} {1 exch} ifelse
            } for
            rle 0 counttomark 2 sub getinterval astore
            evalrle n3 add /n3 exch def n1 add /n1 exch def
            pop
        } for

        0 1 rows 1 sub {
            /i exch def

            % Runlength encode and evaluate each row
            /symrow sym i cols mul cols getinterval def
            mark 0 -1
            symrow {
                2 copy eq {pop exch 1 add exch} {1 exch} ifelse
            } forall
            rle 0 counttomark 2 sub getinterval astore
            evalrle n3 add /n3 exch def n1 add /n1 exch def
            pop

            % Count and score same coloured blocks
            /lastpairs thispairs /thispairs lastpairs def def
            -1 symrow {exch 2 copy ne {pop -1 exch} if} forall
            pop
            thispairs astore pop
            i 0 gt {
                mark
                lastpairs aload pop thispairs aload pop
                n2 cols { exch dup -1 ne { cols 1 add index eq {3 add} if } {pop} ifelse } repeat
                /n2 exch def
                cleartomark
            } if
        } for

        n1 n2 add n3 add
    } bind def

    % Evaluate the masked symbols to find the most suitable
    /bestscore 999999999 def
    0 1 masks length 1 sub {
        /m exch def
        /masksym rows cols mul array def
        0 1 rows cols mul 1 sub {
            /i exch def
            masksym i pixs i get masks m get i get xor put
        } for
        masks length 1 ne {
            masksym evalmask /score exch def
            score bestscore lt {
                /bestsym masksym def
                /bestmaskval m def
                /bestscore score def
            } if
        } {
            /bestsym masksym def
        } ifelse
    } for
    /pixs bestsym def
    /metamask bestmaskval def

    % Derive the metadata bitstream
    /addtometapart {
        dup metapart p 3 -1 roll putinterval
        length p add /p exch def
    } bind def

    /addtometabits {
        dup metabits q 3 -1 roll putinterval
        length q add /q exch def
    } bind def

    /metapart 40 string def
    /metabits nummetabits string def
    /p 0 def  /q 0 def
    slave not {

        % Part I
        colors ln 2 ln div round cvi 1 sub
        3 tofixedbits addtometapart                                 % Nc
        metapart 0 p getinterval 2 -1 ldpc addtometabits  /p 0 def

        % Part II
        metass   1 tofixedbits addtometapart                        % SS
        metavf   2 tofixedbits addtometapart                        % VF
        metamask 3 tofixedbits addtometapart                        % MSK
        hasslaves {(1)} {(0)} ifelse addtometapart                  % SF
        metapart 0 p getinterval 2 -1 ldpc addtometabits  /p 0 def

        % Part III
        metass 0 eq {  % Square
            cols 17 sub 4 idiv [ 0 4 8 16 ] metavf get sub 1 sub
            metavlen tofixedbits addtometapart                      % V
        } {  % Rectangular
            cols 17 sub 4 idiv 1 sub
            metavlen 2 idiv tofixedbits addtometapart               % V1
            rows 17 sub 4 idiv 1 sub
            metavlen 2 idiv tofixedbits addtometapart               % V2
        } ifelse
        datawc 3 sub metaelen 2 idiv tofixedbits addtometapart      % E1
        datawr 4 sub metaelen 2 idiv tofixedbits addtometapart      % E2
        hasslaves {  % TODO Cascading
            0 4 tofixedbits addtometapart                           % S
        } if
        metapart 0 p getinterval 2 -1 ldpc addtometabits  /p 0 def

    } {  % slave

        % Part I
        sameshape {0} {1} ifelse 1 tofixedbits addtometapart        % SS
        sameecc   {0} {1} ifelse 1 tofixedbits addtometapart        % SE
        hasslaves {1} {0} ifelse 1 tofixedbits addtometapart        % SF
        metapart 0 p getinterval 2 -1 ldpc addtometabits  /p 0 def

        % Part II
        sameshape not {
            diffside 17 sub 4 idiv 1 sub
            5 tofixedbits addtometapart                             % V
        } if
        hasslaves {  % TODO Cascading
            0 3 tofixedbits addtometapart                           % S
        } if
        metapart 0 p getinterval 2 -1 ldpc addtometabits  /p 0 def

        % Part III
        sameecc not {
            datawc 3 sub metaelen 2 idiv tofixedbits addtometapart  % E1
            datawr 4 sub metaelen 2 idiv tofixedbits addtometapart  % E2
        } if
        metapart 0 p getinterval 2 -1 ldpc addtometabits  /p 0 def

    } ifelse
    q 1 nummetabits 1 sub {  % Pad with 0s
        metabits exch 48 put
    } for

    % Place the metadata
    /i 0 def  /j 0 def
    slave not {  % Two-color encoding of Part I (Nc) in master symbols
        metabits i 6 getinterval {
            colors 4 eq {[bi yi]} {[ki wi]} ifelse exch 48 sub get
            pixs metadatamap j get aload pop jmv 3 -1 roll put
            /j j 1 add def
        } forall
        /i i 6 add def
    } if
    nummetabits i sub metabpm idiv {
        metabits i metabpm getinterval 0 exch {48 sub add 2 mul} forall 2 idiv
        metacolorindex exch get
        pixs metadatamap j get aload pop jmv 3 -1 roll put
        /i i metabpm add def
        /j j 1 add def
    } repeat

    <<
    /ren //renmatrix
    /pixs pixs
    /pixx cols
    /pixy rows
    /colormap palette
    /height rows 2 mul 72 div
    /width  cols 2 mul 72 div
    /opt options
    >>

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /jabcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER jabcode--

% --BEGIN ENCODER gs1-cc--
% --REQUIRES preamble raiseerror renmatrix micropdf417 pdf417--
% --DESC: GS1 Composite 2D Component
% --EXAM: (01)95012345678903(3103)000123
% --EXOP: ccversion=b cccolumns=4
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp gs1-cc 0.0 2019110800 185545 184297
%%BeginData:        658 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /pdf417 dup /uk.co.terryburton.bwipp findresource put
%psc dup /micropdf417 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/gs1-cc {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def
    /ccversion (a) def
    /cccolumns -1 def
    /lintype () def
    /linwidth -1 def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /cccolumns cccolumns cvi def
    /linwidth linwidth cvi def

    % Select columns based on linear type
    cccolumns -1 eq {
        <<
            /ean13                  4
            /upca                   4
            /ean8                   3
            /upce                   2
            /gs1-128
                ccversion (c) ne {4} {linwidth 52 sub 17 idiv} ifelse
            /databaromni            4
            /databarstacked         2
            /databarstackedomni     2
            /databartruncated       4
            /databarlimited         3
            /databarexpanded        4
            /databarexpandedstacked 4
        >> lintype get /cccolumns exch def
    } if

    % Expand ordinals of the form ^NNN to ASCII
    /expand {
        /in exch def
        /out in length string def
        /j 0 def
        in
        { % loop
            (^) search {
                dup out exch j exch putinterval
                length j add 1 add /j exch def
                pop
                dup 0 3 getinterval cvi out exch j 1 sub exch put
                dup length 3 sub 3 exch getinterval
            } {
                dup out exch j exch putinterval
                length j add /j exch def
                out 0 j getinterval exit
            } ifelse
        } loop
    } bind def

    % Parse out AIs
    /ais  [] def
    /vals [] def
    barcode dup length 1 sub 1 exch getinterval
    {  % loop
        dup () eq {exit} if
        (\)) search pop
        exch pop
        exch (\() search {
            exch pop exch 3 1 roll
        } {
            () 3 1 roll
        } ifelse
        [ ais  aload pop counttomark 2 add index ] /ais exch def
        [ vals aload pop counttomark 1 add index expand ] /vals exch def
        pop pop
    } loop
    pop

    % Method selection
    /isupper {dup 65 ge exch 90 le and} bind def  % A-Z
    /isnum0  {dup 48 ge exch 57 le and} bind def  % 0-9
    /isnum1  {dup 49 ge exch 57 le and} bind def  % 1-9
    {  % common exit

        % (10/11/17)...
        ais length 1 ge {
            ais 0 get (10) eq ais 0 get (11) eq or ais 0 get (17) eq or {
                -1 (10) exit
            } if
        } if

        % (90){0-3 digits not starting 0}{upper alpha}...
        ais length 1 ge {
            ais 0 get (90) eq {
                /v vals 0 get def
                v length 1 ge {
                   v 0 get isupper {
                       0 (11) exit
                   } if
                } if
                v length 2 ge {
                   v 0 get isnum1
                   v 1 get isupper and {
                       1 (11) exit
                   } if
                } if
                v length 3 ge {
                    v 0 get isnum1
                    v 1 get isnum0 and
                    v 2 get isupper and {
                        2 (11) exit
                    } if
                } if
                v length 4 ge {
                    v 0 get isnum1
                    v 1 get isnum0 and
                    v 2 get isnum0 and
                    v 3 get isupper and {
                        3 (11) exit
                    } if
                } if
            } if
        } if

        % Freeform
        -1 (0) exit

    } loop
    /method exch def
    /npre exch def

    /fnc1 -1 def /lnumeric -2 def /lalphanumeric -3 def /liso646 -4 def

    /tobin {
        string dup length 1 sub 0 exch 1 exch {1 index exch 48 put} for
        dup 3 -1 roll 2 2 index length string cvrs dup length 2 index length exch sub exch putinterval
    } bind def

    /alpha <<
        65 1 90 {dup 65 sub 5 tobin} for
        48 1 57 {dup 4 add 6 tobin} for
        fnc1 (11111)
    >> def

    /numeric <<
        0 1 119 {
            dup (00) 2 string copy dup 3 -1 roll 11 2 string cvrs
            dup length 2 exch sub exch putinterval
            dup 0 get 65 eq {dup 0 94 put} if
            dup 1 get 65 eq {dup 1 94 put} if
            exch 8 add
            (0000000) 7 string copy dup 3 -1 roll 2 7 string cvrs
            dup length 7 exch sub exch putinterval
        } for
        lalphanumeric (0000)
    >> def

    /alphanumeric <<
        48 1 57 {dup 43 sub 5 tobin} for
        fnc1 (01111)
        65 1 90 {dup 33 sub 6 tobin} for
        42 (111010)
        44 1 47 {dup 15 add 6 tobin} for
        lnumeric (000)
        liso646 (00100)
    >> def

    /iso646 <<
        48 1 57 {dup 43 sub 5 tobin} for
        fnc1 (01111)
        65 1 90 {dup 1 sub 7 tobin} for
        97 1 122 {dup 7 sub 7 tobin} for
        33 (11101000)
        34 (11101001)
        37 1 47 {dup 197 add 8 tobin} for
        58 1 63 {dup 187 add 8 tobin} for
        95 (11111011)
        32 (11111100)
        lnumeric (000)
        lalphanumeric (00100)
    >> def

    method (10) eq {  % TODO: fixme
        ais 0 get (11) eq ais 0 get (17) eq or {
            vals 0 get
            dup 0 2 getinterval cvi 384 mul exch
            dup 2 2 getinterval cvi 1 sub 32 mul exch
            4 2 getinterval cvi add add
            (0000000000000000) 16 string copy dup 3 -1 roll 2 16 string cvrs
            dup length 16 exch sub exch putinterval
            [ 1 0
              4 -1 roll {48 sub} forall
              ais 0 get (11) eq {0} {1} ifelse
            ] /cdf exch def
            /ais  ais  1 ais  length 1 sub getinterval def
            /vals vals 1 vals length 1 sub getinterval def
        } {
            /cdf [ 1 0  1 1 ] def
        } ifelse
        ais length 0 ne {
            ais 0 get (10) eq {
                /gpf [ vals 0 get {} forall ] def
                ais length 1 gt {/gpf [ gpf aload pop fnc1 ] def} if  % TODO: check
                /ais  ais  1 ais  length 1 sub getinterval def
                /vals vals 1 vals length 1 sub getinterval def
            } {
                /gpf [fnc1] def  % TODO: check
            } ifelse
        } {
            /cdf [ cdf aload pop 0 0 0 0 0 1 1 1 1 ] def
            /gpf [] def
        } ifelse
        /mode (numeric) def
    } if

    method (11) eq {
        /cdf [ 1 1 ] def
        /ai90 vals 0 get def
        npre 1 add ai90 length ne {
            ai90 npre 1 add ai90 length npre sub 1 sub getinterval
        } {
            ()
        } ifelse
        /ai90rem exch def
        /nalpha 0 ai90rem {dup 65 ge exch 90 le and {1 add} if} forall def
        /nnums  0 ai90rem {dup 48 ge exch 57 le and {1 add} if} forall def
        /mode nalpha nnums gt {(alpha)} {(numeric)} ifelse def
        nalpha nnums add ai90rem length ne {/mode (alphanumeric) def} if
        /cdf [
            cdf aload pop
            mode (alphanumeric) eq {0} if
            mode (numeric) eq {1 0} if
            mode (alpha) eq {1 1} if
        ] def
        /ais1  ais  length 1 gt {ais  1 get} {-1} ifelse def
        /vals1 vals length 1 gt {vals 1 get} {-1} ifelse def
        ais1 (21) eq ais1 (8004) eq or {
            /cdf [ cdf aload pop ais1 (21) eq {1 0} {1 1} ifelse ] def
        } {
            /cdf [ cdf aload pop 0 ] def
        } ifelse
        /nval npre 0 ne {ai90 0 npre getinterval cvi} {0} ifelse def
        (BDHIJKLNPQRSTVXZ) ai90 npre 1 getinterval search {
            length exch pop exch pop
            /aval exch def
        } {
            pop /aval -1 def
        } ifelse
        nval 31 lt aval -1 ne and {
            (00000) 5 string copy dup nval 2 5 string cvrs
            dup length 5 exch sub exch putinterval
            [ exch {48 sub} forall ] /nbits exch def
            (0000) 4 string copy dup aval 2 4 string cvrs
            dup length 4 exch sub exch putinterval
            [ exch {48 sub} forall ] /abits exch def
            /cdf [
                cdf aload pop
                nbits aload pop
                abits aload pop
            ] def
        } {
            (0000000000) 10 string copy dup nval 2 10 string cvrs
            dup length 10 exch sub exch putinterval
            [ exch {48 sub} forall ] /nbits exch def
            (00000) 5 string copy dup ai90 npre get 65 sub 2 5 string cvrs
            dup length 5 exch sub exch putinterval
            [ exch {48 sub} forall ] /abits exch def
            /cdf [
                cdf aload pop
                1 1 1 1 1
                nbits aload pop
                abits aload pop
            ] def
        } ifelse
        mode (numeric) eq {
            /gpf [ ai90rem {} forall ais length 1 gt {fnc1} if ] def
        } {
            /encs mode (alpha) eq {alpha} {alphanumeric} ifelse def
            /in [ ai90rem {} forall ais length 1 gt {fnc1} if ] def
            /out in length 6 mul array def
            /j 0 def
            0 1 in length 1 sub {
                in exch get encs exch get
                dup [ exch {48 sub} forall ] out exch j exch putinterval
                length j add /j exch def
            } for
            /cdf [
                cdf aload pop
                out 0 j getinterval aload pop
            ] def
            /gpf [] def
            ais length 1 gt mode (alpha) ne or {/mode (numeric) def} if
        } ifelse
        /ais  ais  1 ais  length 1 sub getinterval def
        /vals vals 1 vals length 1 sub getinterval def
        ais length 0 ne {
            ais1 (21) eq ais1 (8004) eq or {
                /gpf [
                    gpf aload pop
                    vals1 {} forall
                ] def
                /ais  ais  1 ais  length 1 sub getinterval def
                /vals vals 1 vals length 1 sub getinterval def
                ais length 0 ne {/gpf [gpf aload pop fnc1] def} if
            } if
        } if
    } if

    method (0) eq {
        /cdf [ 0 ] def
        /gpf [] def
        /mode (numeric) def
    } if

    % Pre-defined fixed length data field AIs
    % any AI whose prefix is not included in this table must be
    % terminated with "FNC1", even if it's fixed length
    /aifixed 23 dict def
    [
        0 1 4 {} for
    ] {
        (00) 2 string copy dup dup 1 5 -1 roll 48 add put aifixed 3 1 roll put
    } forall
    [
        11 1 20 {} for
        23
        31 1 36 {} for
        41
    ] {
        10 2 string cvrs dup aifixed 3 1 roll put
    } forall

    % Append the remaining AI data
    0 1 ais length 1 sub {
        /i exch def
        /ai ais i get def
        /val vals i get def
        gpf length ai length add val length add array
        dup 0 gpf putinterval
        dup gpf length ai [ exch {} forall ] putinterval
        dup gpf length ai length add val [ exch {} forall ] putinterval
        /gpf exch def
        i ais length 1 sub ne aifixed ai 0 2 getinterval known not and {  % Append FNC1
            gpf length 1 add array
            dup 0 gpf putinterval
            dup gpf length fnc1 put
            /gpf exch def
        } if
    } for

    % Calculate the number of bits remaining to the next valid symbol size
    /rembits {
        /used exch def
        ccversion (c) ne {  % cc-a or cc-b
            <<
            /a [
                [167 138 118 108 88 78 59]
                [167 138 118  98 78]
                [197 167 138 108 78]
            ]
            /b [
                [ 336  296 256 208 160 104  56]
                [ 768  648 536 416 304 208 152 112  72 32]
                [1184 1016 840 672 496 352 264 208 152 96 56]
            ]
            >> ccversion get cccolumns 2 sub get /bitcaps exch def
            -1 bitcaps {dup used ge {exch} if pop} forall
            dup -1 ne {used sub} if
        } {
            << /c -1 >> ccversion get pop  % Assert cc-c
            /m used 8 div ceiling cvi dup 6 idiv 5 mul exch 6 mod add def
            m   40 le               {8 } if
            m   41 ge m  160 le and {16} if
            m  161 ge m  320 le and {32} if
            m  321 ge               {64} if
            /eccws exch def
            /m m eccws add 3 add def
            /c linwidth 52 sub 17 idiv def
            m c idiv 90 gt {/c c 1 add def} if
            /r m c div ceiling cvi def
            /tgt c r mul eccws sub 3 sub dup 5 idiv 6 mul exch 5 mod add 8 mul def
            used 8296 le {tgt used sub} {-1} ifelse
        } ifelse
        dup -1 eq {  % Upgrade CC-A to CC-B or CC-B to CC-C to fit
            pop
            ccversion (a) eq {
                /ccversion (b) def
            } {
                ccversion (b) eq lintype (gs1-128) eq and {
                    /ccversion (c) def
                    /cccolumns linwidth 52 sub 17 idiv def
                } {
                    /ccversion -1 def
                } ifelse
            } ifelse
            used rembits
        } if
    } bind def

    /encode {
        dup /raw ne {exch get} {pop} ifelse
        [ exch {48 sub} forall ]
        dup length exch
        gpfenc exch j exch putinterval
        /j exch j add def
    } bind def

    % Pre-compute alphanumeric and numeric runlengths and position of next ISO646-only characters
    /numericruns [ gpf length {0} repeat 0 -1 ] def
    /alphanumericruns [ gpf length {0} repeat 0 ] def
    /nextiso646only [ gpf length {0} repeat 9999 ] def
    gpf length 1 sub -1 0 {
        /i exch def
        gpf i get
        (00) 2 string copy
        dup 0 gpf i get dup fnc1 eq {pop 94} if put
        i gpf length 1 sub lt {dup 1 gpf i 1 add get dup fnc1 eq {pop 94} if put} if
        numeric exch known {
            numericruns i numericruns i 2 add get 2 add put
        } {
            numericruns i 0 put
        } ifelse
        dup alphanumeric exch known {
            alphanumericruns i alphanumericruns i 1 add get 1 add put
        } {
            alphanumericruns i 0 put
        } ifelse
        dup iso646 exch known exch alphanumeric exch known not and {
            nextiso646only i 0 put
        } {
            nextiso646only i nextiso646only i 1 add get 1 add put
        } ifelse
    } for

    % Encode the general purpose field
    /gpfenc 8296 array def
    /i 0 def /j 0 def
    {  % loop
        i gpf length eq {exit} if
        {  % not a loop but common exit point

            mode (numeric) eq {
                i gpf length 2 sub le {
                    2 string
                    dup 0 gpf i get dup fnc1 eq {pop 94} if put
                    dup 1 gpf i 1 add get dup fnc1 eq {pop 94} if put
                    dup numeric exch known {
                        numeric encode
                        /i i 2 add def
                        exit
                    } if
                    pop
                    lalphanumeric numeric encode
                    /mode (alphanumeric) def
                    exit
                } {
                    gpf i get dup 48 lt exch 57 gt or {
                        lalphanumeric numeric encode
                        /mode (alphanumeric) def
                        exit
                    } if
                    /rem cdf length j add rembits def
                    rem 4 ge rem 6 le and {  % C1 + 1 into 4 to 6 bits
                        (000000) 6 string copy 0 rem getinterval
                        dup gpf i get 47 sub 2 4 string cvrs
                        dup length 4 exch sub exch putinterval /raw encode
                        /i i 1 add def
                        exit
                    } {  % C1.FNC1
                        2 string dup 0 gpf i get put dup 1 94 put numeric encode
                        /i i 1 add def
                        exit
                    } ifelse
                } ifelse
            } if

            mode (alphanumeric) eq {
                gpf i get fnc1 eq {
                    fnc1 alphanumeric encode
                    /mode (numeric) def
                    /i i 1 add def
                    exit
                } if
                gpf i get dup iso646 exch known exch alphanumeric exch known not and {
                     liso646 alphanumeric encode
                     /mode (iso646) def
                     exit
                } if
                numericruns i get 6 ge {
                    lnumeric alphanumeric encode
                    /mode (numeric) def
                    exit
                } if
                numericruns i get dup 4 ge exch i add gpf length eq and {
                    lnumeric alphanumeric encode
                    /mode (numeric) def
                    exit
                } if
                gpf i get alphanumeric encode
                /i i 1 add def
                exit
            } if

            mode (iso646) eq {
                gpf i get fnc1 eq {
                    fnc1 iso646 encode
                    /mode (numeric) def
                    /i i 1 add def
                    exit
                } if
                numericruns i get 4 ge nextiso646only i get 10 ge and {
                    lnumeric iso646 encode
                    /mode (numeric) def
                    exit
                } if
                alphanumericruns i get 5 ge nextiso646only i get 10 ge and {
                    lalphanumeric iso646 encode
                    /mode (alphanumeric) def
                    exit
                } if
                gpf i get iso646 encode
                /i i 1 add def
                exit
            } if

        } loop
    } loop
    /gpf gpfenc 0 j getinterval def

    % Create pad
    /pad cdf length gpf length add rembits array def
    pad length 0 gt {
        0 5 pad length 1 sub {  % Fill with 00100
            /i exch def
            pad i [ 0 0 1 0 0 ] 0 pad length i sub 5 2 copy gt {exch} if pop getinterval putinterval
        } for
        mode (numeric) eq {  % Prefix shift from numeric to ASCII
            /pad [ 0 0 0 0 pad aload pop ] 0 pad length getinterval def
        } if
        mode (alpha) eq {  % Prefix FNC1
            /pad [ 1 1 1 1 1 pad aload pop ] 0 pad length getinterval def
        } if
    } if

    % Concatinate fields
    /bits [
        cdf aload pop
        gpf aload pop
        pad aload pop
    ] def

    ccversion (a) eq {
        /pwr928 [
            [ 0 0 0 0 0 0 1 ]
            68 {7 array} repeat
        ] def
        1 1 68 {
            /j exch def
            /v 0 def
            6 -1 1 {
                /i exch def
                /v pwr928 j 1 sub get i get 2 mul v 928 idiv add def
                pwr928 j get i v 928 mod put
            } for
            pwr928 j get 0 pwr928 j 1 sub get 0 get 2 mul v 928 idiv add put
        } for
        /cws [ 28 {0} repeat ] def
        /b 0 def /c 0 def
        {  % loop
            b bits length eq {exit} if
            /bs bits b 69 bits length b sub 2 copy gt {exch} if pop getinterval def
            /bsl bs length def
            /cs cws c bsl 10 idiv 1 add getinterval def
            /csl cs length def
            0 1 bsl 1 sub {
                /i exch def
                0 1 csl 1 sub {
                    /j exch def
                    cs j 2 copy get
                    pwr928 i get j 7 add csl sub get
                    bs bsl i sub 1 sub get
                    mul add put
                } for
            } for
            csl 1 sub -1 1 {
                /i exch def
                cs i 1 sub 2 copy get cs i get 928 idiv add put
                cs i 2 copy get 928 mod put
            } for
            /b b bsl add def
            /c c csl add def
        } loop
        /cws cws 0 c getinterval def
        /barcode cws length 4 mul string def
        0 1 cws length 1 sub {
            /i exch def
            (^   ) 4 string copy dup cws i get 10 4 string cvrs
            dup length 4 exch sub exch putinterval
            barcode i 4 mul 3 -1 roll putinterval
        } for
        options (dontdraw) true put
        options (cca) true put
        options (columns) cccolumns put
        /args barcode options //micropdf417 exec def
    } if

    ccversion (b) eq {
        /barcode bits length 8 idiv string def
        0 1 barcode length 1 sub {
            /i exch def
            bits i 8 mul 8 getinterval 0 exch {add 2 mul} forall 2 idiv
            barcode exch i exch put
        } for
        options (dontdraw) true put
        options (ccb) true put
        options (columns) cccolumns put
        /args barcode options //micropdf417 exec def
    } if

    ccversion (c) eq {
        /barcode bits length 8 idiv string def
        0 1 barcode length 1 sub {
            /i exch def
            bits i 8 mul 8 getinterval 0 exch {add 2 mul} forall 2 idiv
            barcode exch i exch put
        } for
        options (dontdraw) true put
        options (ccc) true put
        options (columns) cccolumns put
        /args barcode options //pdf417 exec def
    } if

    args
    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /gs1-cc dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER gs1-cc--

% --BEGIN ENCODER ean13composite--
% --REQUIRES preamble raiseerror renlinear renmatrix ean5 ean2 ean13 micropdf417 pdf417 gs1-cc--
% --DESC: EAN-13 Composite
% --EXAM: 2112345678900|(99)1234-abcd
% --EXOP: includetext
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp ean13composite 0.0 2019110800 80617 76899
%%BeginData:         74 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean13 dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ean13composite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (ean13) put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //ean13 exec //renlinear exec

    % Plot the separator
    -1 72 rmoveto <<
        /ren //renmatrix
        /pixs [
            0 1  93 {0} repeat  1 0
            1 0  93 {0} repeat  0 1
            0 1  93 {0} repeat  1 0
        ]
        /pixx 97
        /pixy 3
        /height 6 72 div
        /width 97 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    -2 6 rmoveto comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ean13composite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ean13composite--

% --BEGIN ENCODER ean8composite--
% --REQUIRES preamble raiseerror renlinear renmatrix ean5 ean2 ean8 micropdf417 pdf417 gs1-cc--
% --DESC: EAN-8 Composite
% --EXAM: 02345673|(21)A12345678
% --EXOP: includetext
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp ean8composite 0.0 2019110800 80958 77241
%%BeginData:         77 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /ean8 dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/ean8composite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    % Get the result of encoding with ean8 and gs1-cc
    options (lintype) (ean8) put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //ean8 exec //renlinear exec

    % Plot the separator
    -1 72 rmoveto <<
        /ren //renmatrix
        /pixs [
            0 1  65 {0} repeat  1 0
            1 0  65 {0} repeat  0 1
            0 1  65 {0} repeat  1 0
        ]
        /pixx 69
        /pixy 3
        /height 6 72 div
        /width 69 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    comp options //gs1-cc exec
    dup (pixx) get 69 exch sub 6 rmoveto
    //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /ean8composite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER ean8composite--

% --BEGIN ENCODER upcacomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix ean5 ean2 upca micropdf417 pdf417 gs1-cc--
% --DESC: UPC-A Composite
% --EXAM: 416000336108|(99)1234-abcd
% --EXOP: includetext
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp upcacomposite 0.0 2019110800 77177 76892
%%BeginData:         74 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /upca dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/upcacomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (ean13) put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //upca exec //renlinear exec

    % Plot the separator
    -1 72 rmoveto <<
        /ren //renmatrix
        /pixs [
            0 1  93 {0} repeat  1 0
            1 0  93 {0} repeat  0 1
            0 1  93 {0} repeat  1 0
        ]
        /pixx 97
        /pixy 3
        /height 6 72 div
        /width 97 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    -2 6 rmoveto comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /upcacomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER upcacomposite--

% --BEGIN ENCODER upcecomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix ean5 ean2 upce micropdf417 pdf417 gs1-cc--
% --DESC: UPC-E Composite
% --EXAM: 00123457|(15)021231
% --EXOP: includetext
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp upcecomposite 0.0 2019110800 81667 74403
%%BeginData:         89 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /upce dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/upcecomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    % Define the separator
    /sep <<
        /ren //renmatrix
        /pixs [
            0 1  49 {0} repeat  1 0
            1 0  49 {0} repeat  0 1
            0 1  49 {0} repeat  1 0
        ]
        /pixx 53
        /pixy 3
        /height 6 72 div
        /width 53 72 div
        /opt options
    >> def

    gsave

    options (lintype) (upce) put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //upce exec //renlinear exec

    % Plot the separator
    -1 72 rmoveto <<
        /ren //renmatrix
        /pixs [
            0 1  49 {0} repeat  1 0
            1 0  49 {0} repeat  0 1
            0 1  49 {0} repeat  1 0
        ]
        /pixx 53
        /pixy 3
        /height 6 72 div
        /width 53 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    -2 6 rmoveto comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /upcecomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER upcecomposite--

% --BEGIN ENCODER databaromnicomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix databaromni micropdf417 pdf417 gs1-cc--
% --DESC: GS1 DataBar Omnidirectional Composite
% --EXAM: (01)03612345678904|(11)990102
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databaromnicomposite 0.0 2019110800 77440 77328
%%BeginData:        102 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /databaromni dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databaromnicomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (databaromni) put
    options (linkage) true put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //databaromni exec
    dup (sbs) get /linsbs exch def
    dup (bhs) get 0 get 72 mul /linheight exch def
    //renlinear exec

    % Plot the separator
    /sepfinder {
        /fp exch def
        fp 1 fp 12 add {
            /i exch def
            bot i get 0 eq {
                bot i 1 sub get 1 eq {
                    1
                } {
                    sep i 1 sub get 0 eq {1} {0} ifelse
                } ifelse
            } {
                0
            } ifelse
            sep exch i exch put
        } for
        /f3 [1 1 1 1 1 1 1 1 1 0 1 1 1] def
        true 0 1 12 {dup bot exch fp add get exch f3 exch get eq and} for {
            % Right shifted module for value 3 finder
            sep fp [ 0 0 0 0 0 0 0 0 0 0 1 0 0 ] putinterval
        } if
    } bind def
    mark
    0 linsbs {1 index 1 eq {{0}} {{1}} ifelse repeat} forall
    counttomark 1 sub array astore /bot exch def pop pop
    /sep [ bot {1 exch sub} forall ] def
    sep 0 [0 0 0] putinterval
    sep sep length 4 sub [0 0 0 0] putinterval
    18 sepfinder 64 sepfinder
    0 linheight rmoveto <<
        /ren //renmatrix
        /pixs sep
        /pixx sep length
        /pixy 1
        /height 1 72 div
        /width sep length 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    -5 1 rmoveto comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databaromnicomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databaromnicomposite--

% --BEGIN ENCODER databarstackedcomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix databaromni databarstacked micropdf417 pdf417 gs1-cc--
% --DESC: GS1 DataBar Stacked Composite
% --EXAM: (01)03412345678900|(17)010200
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databarstackedcomposite 0.0 2019110800 79502 82705
%%BeginData:         98 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /databarstacked dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarstackedcomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (databarstacked) put
    options (linkage) true put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //databarstacked exec
    dup (pixs) get 0 2 index (pixx) get getinterval /bot exch def
    dup (pixy) get /linheight exch def
    //renmatrix exec

    % Plot the separator
    /sepfinder {
        /fp exch def
        fp 1 fp 12 add {
            /i exch def
            bot i get 0 eq {
                bot i 1 sub get 1 eq {
                    1
                } {
                    sep i 1 sub get 0 eq {1} {0} ifelse
                } ifelse
            } {
                0
            } ifelse
            sep exch i exch put
        } for
        /f3 [1 1 1 1 1 1 1 1 1 0 1 1 1] def
        true 0 1 12 {dup bot exch fp add get exch f3 exch get eq and} for {
            % Right shifted module for value 3 finder
            sep fp [ 0 0 0 0 0 0 0 0 0 0 1 0 0 ] putinterval
        } if
    } bind def
    /sep [ bot {1 exch sub} forall ] def
    sep 0 [ 0 0 0 0 ] putinterval
    sep sep length 4 sub [ 0 0 0 0 ] putinterval
    18 sepfinder
    0 linheight rmoveto <<
        /ren //renmatrix
        /pixs sep
        /pixx sep length
        /pixy 1
        /height 1 72 div
        /width sep length 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    1 1 rmoveto comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarstackedcomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarstackedcomposite--

% --BEGIN ENCODER databarstackedomnicomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix databaromni databarstackedomni micropdf417 pdf417 gs1-cc--
% --DESC: GS1 DataBar Stacked Omnidirectional Composite
% --EXAM: (01)03612345678904|(11)990102
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databarstackedomnicomposite 0.0 2019110800 79514 82713
%%BeginData:         98 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /databarstackedomni dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarstackedomnicomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (databarstackedomni) put
    options (linkage) true put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //databarstackedomni exec
    dup (pixs) get 0 2 index (pixx) get getinterval /bot exch def
    dup (pixy) get /linheight exch def
    //renmatrix exec

    % Plot the separator
    /sepfinder {
        /fp exch def
        fp 1 fp 12 add {
            /i exch def
            bot i get 0 eq {
                bot i 1 sub get 1 eq {
                    1
                } {
                    sep i 1 sub get 0 eq {1} {0} ifelse
                } ifelse
            } {
                0
            } ifelse
            sep exch i exch put
        } for
        /f3 [1 1 1 1 1 1 1 1 1 0 1 1 1] def
        true 0 1 12 {dup bot exch fp add get exch f3 exch get eq and} for {
            % Right shifted module for value 3 finder
            sep fp [ 0 0 0 0 0 0 0 0 0 0 1 0 0 ] putinterval
        } if
    } bind def
    /sep [ bot {1 exch sub} forall ] def
    sep 0 [ 0 0 0 ] putinterval
    sep sep length 4 sub [ 0 0 0 0 ] putinterval
    18 sepfinder
    0 linheight rmoveto <<
        /ren //renmatrix
        /pixs sep
        /pixx sep length
        /pixy 1
        /height 1 72 div
        /width sep length 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    1 1 rmoveto comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarstackedomnicomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarstackedomnicomposite--

% --BEGIN ENCODER databartruncatedcomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix databaromni databartruncated micropdf417 pdf417 gs1-cc--
% --DESC: GS1 DataBar Truncated Composite
% --EXAM: (01)03612345678904|(11)990102
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databartruncatedcomposite 0.0 2019110800 80572 87191
%%BeginData:        102 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /databartruncated dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databartruncatedcomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (databartruncated) put
    options (linkage) true put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //databartruncated exec
    dup (sbs) get /linsbs exch def
    dup (bhs) get 0 get 72 mul /linheight exch def
    //renlinear exec

    % Plot the separator
    /sepfinder {
        /fp exch def
        fp 1 fp 12 add {
            /i exch def
            bot i get 0 eq {
                bot i 1 sub get 1 eq {
                    1
                } {
                    sep i 1 sub get 0 eq {1} {0} ifelse
                } ifelse
            } {
                0
            } ifelse
            sep exch i exch put
        } for
        /f3 [1 1 1 1 1 1 1 1 1 0 1 1 1] def
        true 0 1 12 {dup bot exch fp add get exch f3 exch get eq and} for {
            % Right shifted module for value 3 finder
            sep fp [ 0 0 0 0 0 0 0 0 0 0 1 0 0 ] putinterval
        } if
    } bind def
    mark
    0 linsbs {1 index 1 eq {{0}} {{1}} ifelse repeat} forall
    counttomark 1 sub array astore /bot exch def pop pop
    /sep [ bot {1 exch sub} forall ] def
    sep 0 [0 0 0] putinterval
    sep sep length 4 sub [0 0 0 0] putinterval
    18 sepfinder 64 sepfinder
    0 linheight rmoveto <<
        /ren //renmatrix
        /pixs sep
        /pixx sep length
        /pixy 1
        /height 1 72 div
        /width sep length 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    -5 1 rmoveto comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databartruncatedcomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databartruncatedcomposite--

% --BEGIN ENCODER databarlimitedcomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix databarlimited micropdf417 pdf417 gs1-cc--
% --DESC: GS1 DataBar Limited Composite
% --EXAM: (01)03512345678907|(21)abcdefghijklmnopqrstuv
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databarlimitedcomposite 0.0 2019110800 74353 74150
%%BeginData:         81 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /databarlimited dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarlimitedcomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (databarlimited) put
    options (linkage) true put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //databarlimited exec
    dup (sbs) get /linsbs exch def
    dup (bhs) get 0 get 72 mul /linheight exch def
    //renlinear exec

    % Plot the separator
    mark
    1 linsbs {1 index 0 eq {{1}} {{0}} ifelse repeat} forall
    counttomark 1 sub array astore /sep exch def pop pop
    sep 0 [0 0 0] putinterval
    sep sep length 4 sub [0 0 0 0] putinterval
    0 linheight rmoveto <<
        /ren //renmatrix
        /pixs sep
        /pixx sep length
        /pixy 1
        /height 1 72 div
        /width sep length 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    comp options //gs1-cc exec
    dup (pixx) get 72 exch sub 1 rmoveto
    //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarlimitedcomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarlimitedcomposite--

% --BEGIN ENCODER databarexpandedcomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix databarexpanded micropdf417 pdf417 gs1-cc--
% --DESC: GS1 DataBar Expanded Composite
% --EXAM: (01)93712345678904(3103)001234|(91)1A2B3C4D5E
% --EXOP:
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp databarexpandedcomposite 0.0 2019110800 77111 76984
%%BeginData:        100 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /databarexpanded dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarexpandedcomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (databarexpanded) put
    options (linkage) true put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //databarexpanded exec
    dup (sbs) get /linsbs exch def
    dup (bhs) get 0 get 72 mul /linheight exch def
    //renlinear exec

    % Plot the separator
    /sepfinder {
        /fp exch def
        fp 1 fp 12 add {
            /i exch def
            bot i get 0 eq {
                bot i 1 sub get 1 eq {
                    1
                } {
                    sep i 1 sub get 0 eq {1} {0} ifelse
                } ifelse
            } {
                0
            } ifelse
            sep exch i exch put
        } for
    } bind def
    mark
    0 linsbs {1 index 1 eq {{0}} {{1}} ifelse repeat} forall
    counttomark 1 sub array astore /bot exch def pop pop
    /sep [ bot {1 exch sub} forall ] def
    sep 0 [0 0 0] putinterval
    sep sep length 4 sub [0 0 0 0] putinterval
    [  % Finder pattern module positions
        18 98 bot length 13 sub {} for
        69 98 bot length 13 sub {} for
    ] {sepfinder} forall
    0 linheight rmoveto <<
        /ren //renmatrix
        /pixs sep
        /pixx sep length
        /pixy 1
        /height 1 72 div
        /width sep length 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    1 1 rmoveto comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarexpandedcomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarexpandedcomposite--

% --BEGIN ENCODER databarexpandedstackedcomposite--
% --REQUIRES preamble raiseerror renlinear renmatrix databarexpanded databarexpandedstacked micropdf417 pdf417 gs1-cc--
% --DESC: GS1 DataBar Expanded Stacked Composite
% --EXAM: (01)00012345678905(10)ABCDEF|(21)12345678
% --EXOP: segments=4
% --RNDR: renmatrix renlinear
%%BeginResource: uk.co.terryburton.bwipp databarexpandedstackedcomposite 0.0 2019110800 79561 82617
%%BeginData:         97 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /databarexpandedstacked dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/databarexpandedstackedcomposite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (lintype) (databarexpandedstacked) put
    options (linkage) true put
    options (inkspread) (0) put
    options (dontdraw) true put

    % Plot the linear part
    linear options //databarexpandedstacked exec
    dup (pixs) get 0 2 index (pixx) get getinterval /bot exch def
    dup (pixy) get /linheight exch def
    //renmatrix exec

    % Plot the separator
    /sepfinder {
        /fp exch def
        fp 1 fp 12 add {
            /i exch def
            bot i get 0 eq {
                bot i 1 sub get 1 eq {
                    1
                } {
                    sep i 1 sub get 0 eq {1} {0} ifelse
                } ifelse
            } {
                0
            } ifelse
            sep exch i exch put
        } for
    } bind def
    /sep [ bot {1 exch sub} forall ] def
    sep 0 [ 0 0 0 ] putinterval
    sep sep length 4 sub [ 0 0 0 0 ] putinterval
    [  % Finder pattern module positions
        19 98 bot length 13 sub {} for
        70 98 bot length 13 sub {} for
    ] {sepfinder} forall
    0 linheight rmoveto <<
        /ren //renmatrix
        /pixs sep
        /pixx sep length
        /pixy 1
        /height 1 72 div
        /width sep length 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    bot 0 get 0 eq {2} {0} ifelse 1 rmoveto
    comp options //gs1-cc exec //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /databarexpandedstackedcomposite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER databarexpandedstackedcomposite--

% --BEGIN ENCODER gs1-128composite--
% --REQUIRES preamble raiseerror renlinear renmatrix code128 gs1-128 micropdf417 pdf417 gs1-cc--
% --DESC: GS1-128 Composite
% --EXAM: (00)030123456789012340|(02)13012345678909(37)24(10)1234567ABCDEFG
% --EXOP: ccversion=c
% --RNDR: renlinear renmatrix
%%BeginResource: uk.co.terryburton.bwipp gs1-128composite 0.0 2019110800 80790 80307
%%BeginData:        102 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 2 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-128 dup /uk.co.terryburton.bwipp findresource put
%psc dup /gs1-cc dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/gs1-128composite {

    20 dict begin            % Confine variables to local scope

    /options exch def
    /barcode exch def

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Split the linear and composite parts
    barcode (|) search {
        /linear exch def
        pop
        /comp exch def
    } {
        pop
    } ifelse

    gsave

    options (inkspread) (0) put
    options (dontdraw) true put

    % Dummy plot of linear part with CC-A to get width
    options (linkagea) true put
    linear << options {} forall >> //gs1-128 exec
    (sbs) get 0 exch {add} forall /linwidth exch def

    % Create 2D part and determine type
    options (lintype) (gs1-128) put
    options (linwidth) linwidth put
    comp options //gs1-cc exec /compsym exch def
    compsym (pixx) get 99 eq {(a)} {(c)} ifelse /linktype exch def

    % Plot linear part
    linktype (a) eq {
        options (linkagea) true put
        options (linkagec) false put
    } {
        options (linkagea) false put
        options (linkagec) true put
    } ifelse
    linear << options {} forall >> //gs1-128 exec
    dup (sbs) get /linsbs exch def
    dup (bhs) get 0 get 72 mul /linheight exch def
    //renlinear exec

    % Plot the separator
    mark
    1 linsbs {1 index 0 eq {{1}} {{0}} ifelse repeat} forall
    counttomark 1 sub array astore /sep exch def pop pop
    0 linheight rmoveto <<
        /ren //renmatrix
        /pixs sep
        /pixx sep length
        /pixy 1
        /height 1 72 div
        /width sep length 72 div
        /opt options
    >> //renmatrix exec

    % Plot the 2D part
    linktype (a) eq {
        /s linwidth 2 sub 11 idiv def
        /p s 9 sub 2 idiv def
        /x s p sub 1 sub 11 mul 10 add p 0 eq {2 add} if 99 sub def
        x 1 rmoveto
    } {
        -7 1 rmoveto
    } ifelse

    compsym //renmatrix exec

    grestore

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /gs1-128composite dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER gs1-128composite--

% --BEGIN ENCODER gs1datamatrix--
% --REQUIRES preamble raiseerror renmatrix datamatrix--
% --DESC: GS1 Data Matrix
% --EXAM: (01)03453120000011(17)120508(10)ABCD1234(410)9501101020917
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp gs1datamatrix 0.0 2019110800 65679 68908
%%BeginData:        137 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /datamatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/gs1datamatrix {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Expand ordinals of the form ^NNN to ASCII
    /expand {
        /in exch def
        /out in length string def
        /j 0 def
        in
        { % loop
            (^) search {
                dup out exch j exch putinterval
                length j add 1 add /j exch def
                pop
                dup 0 3 getinterval cvi out exch j 1 sub exch put
                dup length 3 sub 3 exch getinterval
            } {
                dup out exch j exch putinterval
                length j add /j exch def
                out 0 j getinterval exit
            } ifelse
        } loop
    } bind def

    % Parse out AIs
    /ais  [] def
    /vals [] def
    barcode dup length 1 sub 1 exch getinterval
    {  % loop
        dup () eq {exit} if
        (\)) search pop
        exch pop
        exch (\() search {
            exch pop exch 3 1 roll
        } {
            () 3 1 roll
        } ifelse
        [ ais  aload pop counttomark 2 add index ] /ais exch def
        [ vals aload pop counttomark 1 add index expand ] /vals exch def
        pop pop
    } loop
    pop

    % Pre-defined fixed length data field AIs
    % any AI whose prefix is not included in this table must be
    % terminated with "FNC1", even if it's fixed length
    /aifixed 23 dict def
    [
        0 1 4 {} for
    ] {
        (00) 2 string copy dup dup 1 5 -1 roll 48 add put aifixed 3 1 roll put
    } forall
    [
        11 1 20 {} for
        23
        31 1 36 {} for
        41
    ] {
        10 2 string cvrs dup aifixed 3 1 roll put
    } forall

    % Create the datamatrix data
    /fnc1 -1 def
    /dmtx [ fnc1 ] def
    0 1 ais length 1 sub {
        /i exch def
        /ai ais i get def
        /val vals i get def
        dmtx length ai length add val length add array
        dup 0 dmtx putinterval
        dup dmtx length ai [ exch {} forall ] putinterval
        dup dmtx length ai length add val [ exch {} forall ] putinterval
        /dmtx exch def
        i ais length 1 sub ne aifixed ai 0 2 getinterval known not and {  % Append FNC1
            dmtx length 1 add array
            dup 0 dmtx putinterval
            dup dmtx length fnc1 put
            /dmtx exch def
        } if
    } for

    % Compose input to datamatrix
    /barcode dmtx length 1 add 5 mul string def
    /i 0 def /j 0 def {
        i dmtx length eq {exit} if
        dmtx i get dup fnc1 eq {
            pop barcode j (^FNC1) putinterval
            /j j 4 add def
        } {
            barcode exch j exch put
        } ifelse
        /i i 1 add def
        /j j 1 add def
    } loop
    /barcode barcode 0 j getinterval def

    % Get the result of encoding with datamatrix
    options (dontdraw) true put
    options (parsefnc) true put
    /args barcode options //datamatrix exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /gs1datamatrix dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER gs1datamatrix--

% --BEGIN ENCODER gs1datamatrixrectangular--
% --REQUIRES preamble raiseerror renmatrix datamatrix--
% --DESC: GS1 Data Matrix Rectangular
% --EXAM: (01)03453120000011(17)120508(10)ABCD1234(410)9501101020917
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp gs1datamatrixrectangular 0.0 2019110800 65882 69100
%%BeginData:        138 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /datamatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/gs1datamatrixrectangular {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Expand ordinals of the form ^NNN to ASCII
    /expand {
        /in exch def
        /out in length string def
        /j 0 def
        in
        { % loop
            (^) search {
                dup out exch j exch putinterval
                length j add 1 add /j exch def
                pop
                dup 0 3 getinterval cvi out exch j 1 sub exch put
                dup length 3 sub 3 exch getinterval
            } {
                dup out exch j exch putinterval
                length j add /j exch def
                out 0 j getinterval exit
            } ifelse
        } loop
    } bind def

    % Parse out AIs
    /ais  [] def
    /vals [] def
    barcode dup length 1 sub 1 exch getinterval
    {  % loop
        dup () eq {exit} if
        (\)) search pop
        exch pop
        exch (\() search {
            exch pop exch 3 1 roll
        } {
            () 3 1 roll
        } ifelse
        [ ais  aload pop counttomark 2 add index ] /ais exch def
        [ vals aload pop counttomark 1 add index expand ] /vals exch def
        pop pop
    } loop
    pop

    % Pre-defined fixed length data field AIs
    % any AI whose prefix is not included in this table must be
    % terminated with "FNC1", even if it's fixed length
    /aifixed 23 dict def
    [
        0 1 4 {} for
    ] {
        (00) 2 string copy dup dup 1 5 -1 roll 48 add put aifixed 3 1 roll put
    } forall
    [
        11 1 20 {} for
        23
        31 1 36 {} for
        41
    ] {
        10 2 string cvrs dup aifixed 3 1 roll put
    } forall

    % Create the datamatrix data
    /fnc1 -1 def
    /dmtx [ fnc1 ] def
    0 1 ais length 1 sub {
        /i exch def
        /ai ais i get def
        /val vals i get def
        dmtx length ai length add val length add array
        dup 0 dmtx putinterval
        dup dmtx length ai [ exch {} forall ] putinterval
        dup dmtx length ai length add val [ exch {} forall ] putinterval
        /dmtx exch def
        i ais length 1 sub ne aifixed ai 0 2 getinterval known not and {  % Append FNC1
            dmtx length 1 add array
            dup 0 dmtx putinterval
            dup dmtx length fnc1 put
            /dmtx exch def
        } if
    } for

    % Compose input to datamatrix
    /barcode dmtx length 1 add 5 mul string def
    /i 0 def /j 0 def {
        i dmtx length eq {exit} if
        dmtx i get dup fnc1 eq {
            pop barcode j (^FNC1) putinterval
            /j j 4 add def
        } {
            barcode exch j exch put
        } ifelse
        /i i 1 add def
        /j j 1 add def
    } loop
    /barcode barcode 0 j getinterval def

    % Get the result of encoding with datamatrix
    options (dontdraw) true put
    options (parsefnc) true put
    options (format) (rectangle) put
    /args barcode options //datamatrix exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /gs1datamatrixrectangular dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER gs1datamatrixrectangular--

% --BEGIN ENCODER gs1qrcode--
% --REQUIRES preamble raiseerror renmatrix qrcode--
% --DESC: GS1 QR Code
% --EXAM: (01)03453120000011(8200)http://www.abc.net(10)ABCD1234(410)9501101020917
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp gs1qrcode 0.0 2019110800 66007 72672
%%BeginData:        136 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /qrcode dup /uk.co.terryburton.bwipp findresource put
%psc begin
/gs1qrcode {

    20 dict begin            % Confine variables to local scope

    /options exch def  % We are given an option string
    /barcode exch def  % We are given a barcode string

    /dontdraw false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Expand ordinals of the form ^NNN to ASCII
    /expand {
        /in exch def
        /out in length string def
        /j 0 def
        in
        { % loop
            (^) search {
                dup out exch j exch putinterval
                length j add 1 add /j exch def
                pop
                dup 0 3 getinterval cvi out exch j 1 sub exch put
                dup length 3 sub 3 exch getinterval
            } {
                dup out exch j exch putinterval
                length j add /j exch def
                out 0 j getinterval exit
            } ifelse
        } loop
    } bind def

    % Parse out AIs
    /ais  [] def
    /vals [] def
    barcode dup length 1 sub 1 exch getinterval
    {  % loop
        dup () eq {exit} if
        (\)) search pop
        exch pop
        exch (\() search {
            exch pop exch 3 1 roll
        } {
            () 3 1 roll
        } ifelse
        [ ais  aload pop counttomark 2 add index ] /ais exch def
        [ vals aload pop counttomark 1 add index expand ] /vals exch def
        pop pop
    } loop
    pop

    % Pre-defined fixed length data field AIs
    % any AI whose prefix is not included in this table must be
    % terminated with "FNC1", even if it's fixed length
    /aifixed 23 dict def
    [
        0 1 4 {} for
    ] {
        (00) 2 string copy dup dup 1 5 -1 roll 48 add put aifixed 3 1 roll put
    } forall
    [
        11 1 20 {} for
        23
        31 1 36 {} for
        41
    ] {
        10 2 string cvrs dup aifixed 3 1 roll put
    } forall

    % Create the qrcode data
    /fnc1 -1 def
    /qrc [ fnc1 ] def
    0 1 ais length 1 sub {
        /i exch def
        /ai ais i get def
        /val vals i get def
        qrc length ai length add val length add array
        dup 0 qrc putinterval
        dup qrc length ai [ exch {} forall ] putinterval
        dup qrc length ai length add val [ exch {} forall ] putinterval
        /qrc exch def
        i ais length 1 sub ne aifixed ai 0 2 getinterval known not and {  % Append FNC1
            qrc length 1 add array
            dup 0 qrc putinterval
            dup qrc length fnc1 put
            /qrc exch def
        } if
    } for

    % Compose input to qrcode
    /barcode qrc length 1 add 5 mul string def
    /i 0 def /j 0 def {
        i qrc length eq {exit} if
        qrc i get dup fnc1 eq {
            pop barcode j (^FNC1) putinterval
            /j j 4 add def
        } {
            barcode exch j exch put
        } ifelse
        /i i 1 add def
        /j j 1 add def
    } loop
    /barcode barcode 0 j getinterval def

    % Get the result of encoding with qrcode
    options (dontdraw) true put
    options (parsefnc) true put
    /args barcode options //qrcode exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /gs1qrcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER gs1qrcode--

% --BEGIN ENCODER hibccode39--
% --REQUIRES preamble raiseerror renlinear code39--
% --DESC: HIBC Code 39
% --EXAM: A123BJC5D6E71
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp hibccode39 0.0 2019110800 57669 61040
%%BeginData:         94 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code39 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibccode39 {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /textxoffset 0 def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /textxoffset textxoffset cvr def

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.hibccode39badCharacter (HIBC Code 39 must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibccode39badCheckDigit (Incorrect HIBC Code 39 check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    /text barlen 4 add string def
    text 0 42 put
    text 1 barcode putinterval
    text barlen 2 add barcode barlen 1 add get dup 32 eq {pop 95} if put
    text barlen 3 add 42 put

    % Get the result of encoding with code39
    options (dontdraw) true put
    options (includecheck) false put
    options (validatecheck) false put
    /args barcode options //code39 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibccode39 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibccode39--

% --BEGIN ENCODER hibccode128--
% --REQUIRES preamble raiseerror renlinear code128--
% --DESC: HIBC Code 128
% --EXAM: A123BJC5D6E71
% --EXOP: includetext
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp hibccode128 0.0 2019110800 57700 60899
%%BeginData:         93 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%psc dup /code128 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibccode128 {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /textfont /Courier def
    /textsize 10 def
    /textyoffset -8.5 def
    /textxoffset 0 def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textyoffset textyoffset cvr def
    /textxoffset textxoffset cvr def

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.hibccode128badCharacter (HIBC Code 128 must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibccode128badCheckDigit (Incorrect HIBC Code 128 check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    /text barlen 4 add string def
    text 0 42 put
    text 1 barcode putinterval
    text barlen 2 add barcode barlen 1 add get dup 32 eq {pop 95} if put
    text barlen 3 add 42 put

    % Get the result of encoding with code128
    options (dontdraw) true put
    options (validatecheck) false put
    /args barcode options //code128 exec def

    args (txt) [ [text textxoffset textyoffset textfont textsize] ] put
    args (textxalign) (center) put
    args (opt) options put
    args

    dontdraw not //renlinear if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibccode128 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibccode128--

% --BEGIN ENCODER hibcdatamatrix--
% --REQUIRES preamble raiseerror renmatrix datamatrix--
% --DESC: HIBC Data Matrix
% --EXAM: A123BJC5D6E71
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp hibcdatamatrix 0.0 2019110800 55039 58317
%%BeginData:         76 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /datamatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibcdatamatrix {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.hibcdatamatrixBadCharacter (HIBC Data Matrix must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibcdatamatrixBadCheckDigit (Incorrect HIBC Data Matrix check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    % Get the result of encoding with datamatrix
    options (dontdraw) true put
    options (validatecheck) false put
    /args barcode options //datamatrix exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibcdatamatrix dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibcdatamatrix--

% --BEGIN ENCODER hibcdatamatrixrectangular--
% --REQUIRES preamble raiseerror renmatrix datamatrix--
% --DESC: HIBC Data Matrix Rectangular
% --EXAM: A123BJC5D6E71
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp hibcdatamatrixrectangular 0.0 2019110800 55392 58637
%%BeginData:         77 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /datamatrix dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibcdatamatrixrectangular {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.hibcdatamatrixrectangularBadCharacter (HIBC Data Matrix Rectangular must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibcdatamatrixrectangularBadCheckDigit (Incorrect HIBC Data Matrix Rectangular check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    % Get the result of encoding with datamatrix
    options (dontdraw) true put
    options (validatecheck) false put
    options (format) (rectangle) put
    /args barcode options //datamatrix exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibcdatamatrixrectangular dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibcdatamatrixrectangular--

% --BEGIN ENCODER hibcpdf417--
% --REQUIRES preamble raiseerror renmatrix pdf417--
% --DESC: HIBC PDF417
% --EXAM: A123BJC5D6E71
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp hibcpdf417 0.0 2019110800 55668 58766
%%BeginData:         80 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /pdf417 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibcpdf417 {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /columns 2 def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /columns columns cvi def

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.hibcpdf417BadCharacter (HIBC PDF417 must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibcpdf417BadCheckDigit (Incorrect HIBC PDF417 check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    % Get the result of encoding with pdf417
    options (dontdraw) true put
    options (columns) columns put
    options (validatecheck) false put
    /args barcode options //pdf417 exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibcpdf417 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibcpdf417--

% --BEGIN ENCODER hibcmicropdf417--
% --REQUIRES preamble raiseerror renmatrix micropdf417--
% --DESC: HIBC MicroPDF417
% --EXAM: A123BJC5D6E71
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp hibcmicropdf417 0.0 2019110800 55614 58777
%%BeginData:         80 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /micropdf417 dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibcmicropdf417 {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /columns 2 def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /columns columns cvi def

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.hibcmicropdf417BadCharacter (HIBC MicroPDF417 must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibcmicropdf417BadCheckDigit (Incorrect HIBC MicroPDF417 check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    % Get the result of encoding with micropdf417
    options (dontdraw) true put
    options (columns) columns put
    options (validatecheck) false put
    /args barcode options //micropdf417 exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibcmicropdf417 dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibcmicropdf417--

% --BEGIN ENCODER hibcqrcode--
% --REQUIRES preamble raiseerror renmatrix qrcode--
% --DESC: HIBC QR Code
% --EXAM: A123BJC5D6E71
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp hibcqrcode 0.0 2019110800 54983 58185
%%BeginData:         76 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /qrcode dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibcqrcode {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.hibcqrcodeBadCharacter (HIBC QR Code must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibcqrcodeBadCheckDigit (Incorrect HIBC QR Code check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    % Get the result of encoding with qrcode
    options (dontdraw) true put
    options (validatecheck) false put
    /args barcode options //qrcode exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibcqrcode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibcqrcode--

% --BEGIN ENCODER hibccodablockf--
% --REQUIRES preamble raiseerror renmatrix codablockf--
% --DESC: HIBC Codablock F
% --EXAM: A123BJC5D6E71
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp hibccodablockf 0.0 2019110800 55123 58317
%%BeginData:         76 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /codablockf dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibccodablockf {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.codablockfBadCharacter (HIBC Codablock F must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibccodablockfBadCheckDigit (Incorrect HIBC Codablock F check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    % Get the result of encoding with codablockf
    options (dontdraw) true put
    options (validatecheck) false put
    /args barcode options //codablockf exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibccodablockf dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibccodablockf--

% --BEGIN ENCODER hibcazteccode--
% --REQUIRES preamble raiseerror renmatrix azteccode--
% --DESC: HIBC Aztec Code
% --EXAM: A123BJC5D6E71
% --EXOP:
% --RNDR: renmatrix
%%BeginResource: uk.co.terryburton.bwipp hibcazteccode 0.0 2019110800 55027 58310
%%BeginData:         76 ASCII Lines
%psc /setpacking where {pop currentpacking true setpacking} if
%psc 1 dict
%psc dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%psc dup /renmatrix dup /uk.co.terryburton.bwipp findresource put
%psc dup /azteccode dup /uk.co.terryburton.bwipp findresource put
%psc begin
/hibcazteccode {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /validatecheck false def

    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    % Create a string of the available characters
    /barchars (0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%) def
    /charvals 43 dict def
    0 1 42 {charvals exch dup barchars exch 1 getinterval exch put} for

    % Validate the input
    0 1 barcode length 1 sub {
        barcode exch 1 getinterval charvals exch known not {
            /bwipp.hibcazteccodeBadCharacter (HIBC Aztec Code must contain only digits, capital letters, spaces and the symbols -.$/+%) //raiseerror exec
        } if
    } for

    /barlen barcode length validatecheck {1 sub} if def

    /checksum 41 def
    0 1 barlen 1 sub {
        barcode exch 1 getinterval charvals exch get
        checksum add /checksum exch def
    } for
    /checksum checksum 43 mod def
    validatecheck {
        barcode barlen get barchars checksum get ne {
            /bwipp.hibcazteccodeBadCheckDigit (Incorrect HIBC Aztec Code check digit provided) //raiseerror exec
        } if
        /barcode barcode 0 barlen getinterval def
    } if

    /barcode barlen 2 add string dup 1 barcode putinterval def
    barcode 0 43 put
    barcode barlen 1 add barchars checksum get put

    % Get the result of encoding with azteccode
    options (dontdraw) true put
    options (validatecheck) false put
    /args barcode options //azteccode exec def

    args (opt) options put
    args

    dontdraw not //renmatrix if

    end

}
%psc [/barcode] {null def} forall
bind def
%psc /hibcazteccode dup load /uk.co.terryburton.bwipp defineresource pop
%psc end
%psc /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER hibcazteccode--

% --END TEMPLATE--
% --BEGIN ENCODER channelcode--
% --REQUIRES preamble raiseerror renlinear--
% --DESC: Channel Code
% --EXAM: 3493
% --EXOP: height=0.5 includetext 
% --RNDR: renlinear
%%BeginResource: uk.co.terryburton.bwipp channelcode 0.0 2017071000 68302 68105
%%BeginData:        149 ASCII Lines
%%/setpacking where {pop currentpacking true setpacking} if
%%1 dict
%%dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%%dup /renlinear dup /uk.co.terryburton.bwipp findresource put
%%begin
/channelcode {

    20 dict begin                 % Confine variables to local scope

    /options exch def       % We are given an option string
    /barcode exch def       % We are given a barcode string

    /dontdraw false def
    /shortfinder false def
    /includetext false def
    /includecheck false def
    /height 1 def
    
    % Parse the input options
%psc     options type /stringtype eq {
%psc         1 dict begin
%psc         options {
%psc             token false eq {exit} if dup length string cvs (=) search
%psc             true eq {cvlit exch pop exch def} {cvlit true def} ifelse
%psc         } loop
%psc         currentdict end /options exch def
%psc     } if
    options {def} forall

    /height height cvr def

    % Validate the input
    barcode length 2 lt barcode length 7 gt or {
        /bwipp.channelcodeBadLength (Channel Code must be 2 to 7 digits) //raiseerror exec
    } if
    barcode {
        dup 48 lt exch 57 gt or {
            /bwipp.channelcodeBadCharacter (Channel Code must contain only digits) //raiseerror exec
        } if
    } forall
    barcode cvi [ 26 292 3493 44072 576688 7742862 ] barcode length 2 sub get gt {
        /bwipp.channelcodeTooBig (The Channel Code value is too big for the number of channels) //raiseerror exec
    } if

    /nextb {
        dup
        dup s exch get exch
        dup b exch 1 sub get exch
        dup s exch 1 sub get exch
        b exch 2 sub get exch
        add add add 4 gt {1} {2} ifelse
        1 index chan 2 add lt {
            dup 1 4 index {
                b 3 index 2 index put
                3 index exch sub 1 add 4 index 3 index 1 add nexts
            } for
        } {
            dup 3 index le {
                b 2 index 4 index put
                value target eq {
                    /out [ 
                        3 1 10 {dup s exch get exch b exch get} for
                    ] 0 chan 2 mul getinterval def 
                } if
                /value value 1 add def
            } if
        } ifelse 
        pop pop pop pop
    } bind def

    /nexts {
        dup chan 2 add lt {1} {1 index} ifelse 1 3 index {
            s 2 index 2 index put
            2 index exch sub 1 add 3 index 2 index nextb
        } for
        pop pop pop
    } bind def

    /encode {
        /chan exch def
        /target exch def
        /value 0 def
        /out -1 def
        /b [ 1 1 1 0 0 0 0 0 0 0 0 ] def
        /s [ 0 1 1 0 0 0 0 0 0 0 0 ] def
        chan dup 3 nexts
        out
    } bind def

    /barlen barcode length def

    % Determine finder
    /finder shortfinder { [ 1 1 1 1 1 ] } { [ 1 1 1 1 1 1 1 1 1 ] } ifelse def

    % Encode the main data
    /data barcode cvi barlen 1 add encode def

    % Determine check data
    /check [] def
    includecheck {
        /mod23 [
            [] []
            [ 13 12  4  9  3  1 ]
            [ 13  2 12  3 18 16  4  1 ]
            [ 11 16 17  8 20  4 10  2  5  1 ]
            [  1  4 16 18  3 12  2  8  9 13  6  1 ]
            [ 20 16 22 13 15 12  5  4  8  9 21  3  7  1 ]
            [  2  6 18  8  1  3  9  4 12 13 16  2  6 18  8  1 ]
        ] barlen get def
        0
        0 1 data length 1 sub {
            dup data exch get 1 sub exch mod23 exch get mul add
        } for
        23 mod 3 encode /check exch def
    } if

    % Construct the symbol
    /sbs [
        finder aload pop
        data aload pop
        check aload pop
    ] def

    % Create the human readable text
    /txt barlen array def
    0 1 barlen 1 sub {
        /i exch def
        txt i [barcode i 1 getinterval 0 0 () 0] put
    } for

    % Return the arguments
    <<
    /ren //renlinear
    /sbs sbs
    /bhs [sbs length 1 add 2 idiv {height} repeat]
    /bbs [sbs length 1 add 2 idiv {0} repeat]
    /txt txt
    /textxalign (center)
    /opt options
    >>

    dontdraw not //renlinear if

    end

} bind def
%%/channelcode dup load /uk.co.terryburton.bwipp defineresource pop
%%end
%%/setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END ENCODER channelcode--

% --BEGIN RENDERER renlinear--
% --REQUIRES preamble raiseerror--
%%BeginResource: uk.co.terryburton.bwipp renlinear 0.0 2015021800 76908 76502
%%BeginData:        237 ASCII Lines
%% /setpacking where {pop currentpacking true setpacking} if
%% 1 dict
%% dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%% begin
/renlinear {
bwipjs_dontdraw { return } if
    20 dict begin          % Confine variables to local scope

    /args exch def   % We are given some arguments

    % Default options
    /sbs [] def
    /bhs [] def
    /bbs [] def
    /txt [] def
    /barcolor (unset) def
    /includetext false def
    /textcolor (unset) def
    /textxalign (unset) def
    /textyalign (unset) def
    /textfont (Courier) def
    /textsize 10 def
    /textxoffset 0 def
    /textyoffset 0 def
    /textgaps 0 def
    /alttext () def
    /bordercolor (unset) def
    /backgroundcolor (unset) def
    /inkspread 0 def			% MRW was 0.15
    /width 0 def
    /barratio 1 def
    /spaceratio 1 def
    /showborder false def
    /borderleft 10 def
    /borderright 10 def
    /bordertop 1 def
    /borderbottom 1 def
    /borderwidth 0.5 def
    /guardwhitespace false def
    /guardleftpos 0 def
    /guardleftypos 0 def
    /guardrightpos 0 def
    /guardrightypos 0 def
    /guardwidth 7 def			% MRW was 6
    /guardheight 7 def
    
    % Apply the renderer options and the user options
    args {def} forall
    opt {def} forall 

    /barcolor barcolor cvlit def
    /textcolor textcolor cvlit def
    /textxalign textxalign cvlit def
    /textyalign textyalign cvlit def
    /textfont textfont cvlit def
    /textsize textsize cvr def
    /textxoffset textxoffset cvr def
    /textyoffset textyoffset cvr def
    /textgaps textgaps cvr def
    /alttext alttext cvlit def
    /bordercolor bordercolor cvlit def
    /backgroundcolor backgroundcolor cvlit def
    /inkspread inkspread cvr def
    /width width cvr def
    /barratio barratio cvr def
    /spaceratio spaceratio cvr def
    /borderleft borderleft cvr def
    /borderright borderright cvr def
    /bordertop bordertop cvr def
    /borderbottom borderbottom cvr def
    /borderwidth borderwidth cvr def
    /guardleftpos guardleftpos cvr def
    /guardleftypos guardleftypos cvr def
    /guardrightpos guardrightpos cvr def
    /guardrightypos guardrightypos cvr def
    /guardwidth guardwidth cvr def
    /guardheight guardheight cvr def
    
    % Create bar elements and put them into the bars array
    /bars sbs length 1 add 2 idiv array def
    /x 0.00 def /maxh 0 def
    0 1 sbs length 1 add 2 idiv 2 mul 2 sub {
        /i exch def
        i 2 mod 0 eq {           % i is even
            /d sbs i get barratio mul barratio sub 1 add def  % d=digit*r-r+1
            sbs i get 0 ne {
                /h bhs i 2 idiv get 72 mul def  % Height from bhs
                /c d 2 div x add def            % Centre of the bar = x + d/2
                /y bbs i 2 idiv get 72 mul def  % Baseline from bbs
                /w d inkspread sub def          % bar width = digit - inkspread
                bars i 2 idiv [h c y w] put     % Add the bar entry
                h y add maxh gt {/maxh h y add def} if
            } {
                bars i 2 idiv -1 put            % Dummy entry
            } ifelse
        } {
            /d sbs i get spaceratio mul spaceratio sub 1 add def  % d=digit*r-r+1 
        } ifelse
        /x x d add def  % x+=d
    } for

    gsave

    currentpoint translate

    % Force symbol to given width
    width 0 ne {
        width 72 mul x div 1 scale
    } if

    % Display the border
	newpath
	borderleft neg borderbottom neg moveto
	x borderleft add borderright add 0 rlineto
	0 maxh borderbottom add bordertop add rlineto
	x borderleft add borderright add neg 0 rlineto
	0 maxh borderbottom add bordertop add neg rlineto    
	closepath

	%backgroundcolor (unset) ne { gsave backgroundcolor setanycolor fill grestore } if     
    showborder {
        gsave
        bordercolor (unset) ne { bordercolor setanycolor } if
        borderwidth setlinewidth stroke
        grestore
    } if    
   
    % Display the bars for elements in the bars array
    gsave
    0 setlinecap
    barcolor (unset) ne { barcolor setanycolor } if
    bars {
        dup -1 ne {
            aload pop newpath setlinewidth moveto 0 exch rlineto stroke
        } {
            pop
        } ifelse
    } forall
    grestore
    
    % Display the text for elements in the text array
    textcolor (unset) ne { textcolor setanycolor } if
    includetext {
        textxalign (unset) eq textyalign (unset) eq and alttext () eq and {
            /s 0 def /fn () def
            txt {
                {} forall
                2 copy s ne exch fn ne or {
                    2 copy /s exch def /fn exch def            
					selectfont
                } {
                    pop pop
                } ifelse
                moveto show
            } forall
        } {
            textfont textsize selectfont
            alttext () eq {
                /txt [ txt { 0 get {} forall } forall ] def
                /tstr txt length string def
                0 1 txt length 1 sub { dup txt exch get tstr 3 1 roll put } for
            } {
                /tstr alttext def
            } ifelse

            % Find true ascent of font
            tstr length 0 eq {
                0
            } {
                gsave
                newpath 0 0 moveto (0) false charpath pathbbox
                4 1 roll pop pop pop
                grestore
                %%currentfont /PaintType known {currentfont /PaintType get 2 eq} {false} ifelse
                %%currentfont /StrokeWidth known and {
                %%  currentfont /StrokeWidth get 2 div 0 exch
                %%  currentfont /FontMatrix get dtransform
                %%  dup mul exch dup mul add sqrt
                %%  add
                %%} if
            } ifelse
            /textascent exch def
            /textwidth tstr stringwidth pop tstr length 1 sub textgaps mul add def

            /textxpos textxoffset x textwidth sub 2 div add def
            textxalign (left) eq { /textxpos textxoffset def } if
            textxalign (right) eq { /textxpos x textxoffset sub textwidth sub def } if
            textxalign (offleft) eq { /textxpos textwidth textxoffset add neg def } if
            textxalign (offright) eq { /textxpos x textxoffset add def } if
            textxalign (justify) eq textwidth x lt and {
                /textxpos 0 def
                /textgaps x textwidth sub tstr length 1 sub div def
            } if
            /textypos textyoffset textascent add 1 add neg def
            textyalign (above) eq { /textypos textyoffset maxh add 1 add def } if
            textyalign (center) eq { /textypos textyoffset maxh textascent sub 2 div add def } if
            textxpos textypos moveto textgaps 0 tstr ashow
        } ifelse
    } if    

    % Display the guard elements
    guardwhitespace {
		(OCR-B) guardheight 2 mul selectfont
        guardleftpos 0 ne {
            guardleftpos neg 1 sub guardleftypos guardheight 2 div sub 1.5 sub moveto
			(<) show
        } if
        guardrightpos 0 ne {
            guardrightpos x add guardwidth sub 1 add guardrightypos guardheight 2 div sub 1.5 sub moveto
			(>) show
        } if
    } if
    
    grestore
    
    end

} bind def
%% /renlinear dup load /uk.co.terryburton.bwipp defineresource pop
%% end
%% /setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END RENDERER renlinear--
% --BEGIN RENDERER renmaximatrix--
% --REQUIRES preamble raiseerror--
%%BeginResource: uk.co.terryburton.bwipp renmaximatrix 0.0 2018020400 56037 55803
%%BeginData:         79 ASCII Lines
%%/setpacking where {pop currentpacking true setpacking} if
%%1 dict
%%dup /raiseerror dup /uk.co.terryburton.bwipp findresource put
%%begin
/renmaximatrix {
bwipjs_dontdraw { return } if

    20 dict begin

    /args exch def   % We are given some arguments

    % Default options
    /barcolor (unset) def
    /backgroundcolor (unset) def

    % Apply the renderer options and the user options
    args {def} forall
    opt {def} forall

    /barcolor barcolor cvlit def
    /backgroundcolor backgroundcolor cvlit def

    gsave

    barcolor (unset) ne { barcolor setanycolor } if
	pixs maxicode 

    grestore

    end

} bind def
%%/renmaximatrix dup load /uk.co.terryburton.bwipp defineresource pop
%%end
%%/setpacking where {pop setpacking} if
%%EndData
%%EndResource
% --END RENDERER renmaximatrix--

