" Vim syntax file
" Language:         Oregator
" Maintainer:       Christian Saar <oregator@sigmatech.de>
" License:          MIT Copyright (c) 2018 Christian Saar
" Latest Revision:  07.11.2018
" Oregator Version: V3.01.009
" For bugs, patches and license go to https://github.com/csaar95/vim-oregator

if exists("b:current_syntax")
  finish
endif

" Matching
syn match   numbers           "\<\d\+\(\.\d\+\)\=\>"
syn match   operators         "+\|-\|&\|=\|&=\|!=\|<\|>\|<=\|>=\|/\|*"
syn match   constant          "\<\(FNC1_SYMBOL\|FORMAT\|INF_SYMBOL\|MIF_TEMPLATE\|NAN_SYMBOL\|NEWLINE\|PAGENR\|REPORT\)\>"
syn match   header            "^\s*\<REPORT\>\s*\<\a\w*\>\s*$"
syn match   include           "\<\(INCLUDE\|PREPEND\)\>"
syn match   define            "^\s*\<\(FNC1_SYMBOL\|INF_SYMBOL\|MIF_TEMPLATE\|NAN_SYMBOL\)\>\(\s*'.*';$\)\@="
syn match   keywords          ",\|;\|\<\(ABORT\|AREA\|BATCH\|BLOCK\|CLEAR_PAGE\|CLOSE\|COMPUTE\|ELSE\|END\|ENDBATCH\|ENDBLOCK\|ENDIF\|ENDREPORT\|FOOTER\|HEADER\|IF\|INPUT\|NEW\|OPEN\|OUTPUT\|PAGE\|PROCESSING\|RECORD\|STROKE\|THEN\)\>\|^\s*\<REPORT\>\s*$"
syn region  strings           start="'" end="'"
syn match   string_special    "%\w\|@" containedin=strings
syn match   comments          "#.*$"
syn match   format            "\<FORMAT\>\(.*\<\(BANDIT\|CAB\|FRAMEMAKER\|PCL\|PDF\|POSTSCRIPT\|TEC\|TEXT\|WINWORD\)\>\)\@="
syn match   format_types      "\(\<FORMAT\>.*\)\@<=\<\(BANDIT\|CAB\|FRAMEMAKER\|PCL\|PDF\|POSTSCRIPT\|TEC\|TEXT\|WINWORD\)\>"
syn match   format_modifiers  "\<\(CPI\|LANDSCAPE\|LPI\|PORTRAIT\)\>\|\<ROTATE\>\s*\<\(LEFT\|RIGHT\)\>"
syn match   area_line         "\(\<AREA\>.*\)\@<=\<FORMAT\>"
syn match   area_modifiers    "\<\(HORIZONTAL\|VERTICAL\)\>"
syn match   block_names       "\(\<BLOCK\>\s*\)\@<=\<\a\w*\>\|\<\a\w*\>\(\.\a\w*\>\)\@=\|\(\<\(INPUT\|NEED_HORIZONTAL\|NEED_VERTICAL\|NEW\|STROKE\)\>\s*\)\@<=\<\a\w*\>"
syn match   block_special     "\(\<BLOCK\>.*\)\@<=\<FORMAT\>\|\(\<BLOCK\>.*\)\@<=\<IN\>"
syn match   block_modifiers   "\<\(BOTTOM\|BREAK\|DEFERRED\|FIT_HORIZONTAL\|FIT_VERTICAL\|GRAPHIC\|INHERIT\|KEEP\|NEED_HORIZONTAL\|NEED_VERTICAL\)\>"
syn match   types             "^\s*\<\(BOX\|FIELD\|IMAGE\|LINE\|TEXT\)\>"
syn match   type_modifiers    "\<\(BARCODE_128\|BARCODE_25\|BARCODE_39\|BARCODE_DMTX\|BARCODE_EAN\|BARCODE_QR\|BOOKMARK\|BORDER\|CENTERED\|CLIP_AREA\|CLIP_BLOCK\|COMMA\|DATETIME\|DBIMAGE\|FGND\|FIXCOMMA\|FIXED\|FONT\|LEFT\|NOQUOTE\|NOTE\|PICTURE\|RIGHT\|UNIQ\)\>"
syn match   type_names        "\(\<\a\w*\.\)\@<=\a\w*\>\|\(\<\(BOX\|FIELD\|IMAGE\|LINE\|TEXT\)\>\s*\)\@<=\<\a\w*\>"
syn match   barcode_modifiers "\<\(BARCODE_RATIO\|BARCODE_ROTATE\|DMTX_GS1\|DMTX_SCHEME_ASCII\|DMTX_SCHEME_BASE256\|DMTX_SCHEME_C40\|DMTX_SCHEME_EDIFACT\|DMTX_SCHEME_TEXT\|DMTX_SCHEME_X12\|QR_CASE_SENSITIVE\|QR_CASE_INSENSITIVE\|QR_ECLEVEL_H\|QR_ECLEVEL_L\|QR_ECLEVEL_M\|QR_ECLEVEL_Q\|QR_MODE_8\|QR_MODE_AN\|QR_MODE_ECI\|QR_MODE_FNC1FIRST\|QR_MODE_FNC1SECOND\|QR_MODE_KANJI\|QR_MODE_NUM\|QR_MODE_STRUCTURE\)\>"
syn match   functions         "\<\(ABS\|ASSIGN\|RGB\|CONTROL\|COUNT\|DATETIME\|EANPZ\|ELEMENT\|EXISTS\|FETCH\|SUM\|ROUND\|LENGTH\|LTRIM\|LZERO\|RTRIM\|STRSTR\|STRSUB\|SUBSTR\)\>\((\)\@="
syn match   colors            "\<\(BLACK\|DARKGRAY\|LIGHTGRAY\|WHITEGRAY\)\>"

" BREAK ON
syn match   keywords          "\<BREAK\>\s*\<ON\>"

" Farblinks setzen
let b:current_syntax = "oregator"
hi def link numbers               Number
hi def link operators             Operator
hi def link constant              Constant
hi def link header                PreProc
hi def link include               Include
hi def link define                Define
hi def link keywords              Keyword
hi def link strings               String
hi def link string_special        SpecialChar
hi def link comments              Comment
hi def link format                Keyword
hi def link format_types          Type
hi def link format_modifiers      Delimiter
hi def link area_line             Delimiter
hi def link area_modifiers        Delimiter
hi def link block_names           Structure
hi def link block_special         SpecialChar
hi def link block_modifiers       Delimiter
hi def link types                 Type
hi def link type_modifiers        Delimiter
hi def link type_names            Identifier
hi def link barcode_modifiers     Delimiter
hi def link functions             Function
hi def link colors                Constant
