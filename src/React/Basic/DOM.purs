-- | This module defines helper functions for creating virtual DOM elements
-- | safely.
-- |
-- | Note: DOM element props are provided as records, and checked using `Union`
-- | constraints. This means that we don't need to provide all props, but any we
-- | do provide must have the correct types.

module React.Basic.DOM where

import React.Basic.DOM.Internal (createElement, createElementNoChildren)
import React.Basic.Types (CSS, JSX, EventHandler)
import Unsafe.Coerce (unsafeCoerce)

-- | Create a text node.
text :: String -> JSX
text = unsafeCoerce

-- | Create a value of type `CSS` (which can be provided to the `style` property)
-- | from a plain record of CSS attributes.
-- |
-- | E.g.
-- |
-- | ```
-- | div { style: css { padding: "5px" } } [ text "This text is padded." ]
-- | ```
css :: forall css. { | css } -> CSS
css = unsafeCoerce

-- | Standard props which are shared by all DOM elements.
type SharedProps eff specific =
  ( about             :: String
  , acceptCharset     :: String
  , accessKey         :: String
  , allowFullScreen   :: Boolean
  , allowTransparency :: String
  , autoComplete      :: String
  , autoFocus         :: String
  , autoPlay          :: Boolean
  , capture           :: Boolean
  , cellPadding       :: String
  , cellSpacing       :: String
  , charSet           :: String
  , classID           :: String
  , className         :: String
  , colSpan           :: Number
  , contentEditable   :: String
  , contextMenu       :: String
  , crossOrigin       :: String
  , datatype          :: String
  , dateTime          :: String
  , dir               :: String
  , draggable         :: String
  , encType           :: String
  , formAction        :: String
  , formEncType       :: String
  , formMethod        :: String
  , formNoValidate    :: String
  , formTarget        :: String
  , frameBorder       :: String
  , hidden            :: Boolean
  , hrefLang          :: String
  , htmlFor           :: String
  , httpEquiv         :: String
  , icon              :: String
  , id                :: String
  , inlist            :: String
  , inputMode         :: String
  , is                :: String
  , itemID            :: String
  , itemProp          :: String
  , itemRef           :: String
  , itemScope         :: Boolean
  , itemType          :: String
  , key               :: String
  , keyParams         :: String
  , keyType           :: String
  , lang              :: String
  , marginHeight      :: String
  , marginWidth       :: String
  , maxLength         :: String
  , mediaGroup        :: String
  , minLength         :: String
  , noValidate        :: String
  , prefix            :: String
  , property          :: String
  , radioGroup        :: String
  , readOnly          :: Boolean
  , resource          :: String
  , role              :: String
  , rowSpan           :: Number
  , scoped            :: Boolean
  , seamless          :: Boolean
  , security          :: String
  , spellCheck        :: String
  , srcDoc            :: String
  , srcLang           :: String
  , srcSet            :: String
  , style             :: CSS
  , tabIndex          :: String
  , title             :: String
  , typeof            :: String
  , unselectable      :: String
  , useMap            :: String
  , vocab             :: String
  , wmode             :: String
  , onClick           :: EventHandler eff
  , onDoubleClick     :: EventHandler eff
  , onDragStart       :: EventHandler eff
  , onDrag            :: EventHandler eff
  , onDragEnd         :: EventHandler eff
  , onDragEnter       :: EventHandler eff
  , onDragExit        :: EventHandler eff
  , onDragOver        :: EventHandler eff
  , onDragLeave       :: EventHandler eff
  , onDrop            :: EventHandler eff
  , onMouseDown       :: EventHandler eff
  , onMouseEnter      :: EventHandler eff
  , onMouseLeave      :: EventHandler eff
  , onMouseMove       :: EventHandler eff
  , onMouseOut        :: EventHandler eff
  , onMouseOver       :: EventHandler eff
  , onMouseUp         :: EventHandler eff
  -- TODO: add more common event handlers
  | specific
  )

type Props_a =
  ( coords :: String
  , download :: String
  , href :: String
  , name :: String
  , rel :: String
  , shape :: String
  , target :: String
  , type :: String
  )

a
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_a)
  => Record attrs
  -> Array JSX
  -> JSX
a = createElement "a"

type Props_abbr =
  ( title :: String
  )

abbr
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_abbr)
  => Record attrs
  -> Array JSX
  -> JSX
abbr = createElement "abbr"

type Props_address = ()

address
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_address)
  => Record attrs
  -> Array JSX
  -> JSX
address = createElement "address"

type Props_area =
  ( alt :: String
  , coords :: String
  , download :: String
  , href :: String
  , rel :: String
  , shape :: String
  , target :: String
  , type :: String
  )

area
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_area)
  => Record attrs
  -> JSX
area = createElementNoChildren "area"

type Props_article = ()

article
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_article)
  => Record attrs
  -> Array JSX
  -> JSX
article = createElement "article"

type Props_aside = ()

aside
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_aside)
  => Record attrs
  -> Array JSX
  -> JSX
aside = createElement "aside"

type Props_audio =
  ( controls :: Boolean
  , loop :: Boolean
  , muted :: Boolean
  , preload :: String
  , src :: String
  )

audio
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_audio)
  => Record attrs
  -> Array JSX
  -> JSX
audio = createElement "audio"

type Props_b = ()

b
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_b)
  => Record attrs
  -> Array JSX
  -> JSX
b = createElement "b"

type Props_base =
  ( href :: String
  , target :: String
  )

base
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_base)
  => Record attrs
  -> JSX
base = createElementNoChildren "base"

type Props_bdi = ()

bdi
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_bdi)
  => Record attrs
  -> Array JSX
  -> JSX
bdi = createElement "bdi"

type Props_bdo =
  ( dir :: String
  )

bdo
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_bdo)
  => Record attrs
  -> Array JSX
  -> JSX
bdo = createElement "bdo"

type Props_blockquote =
  ( cite :: String
  )

blockquote
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_blockquote)
  => Record attrs
  -> Array JSX
  -> JSX
blockquote = createElement "blockquote"

type Props_body = ()

body
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_body)
  => Record attrs
  -> Array JSX
  -> JSX
body = createElement "body"

type Props_br = ()

br
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_br)
  => Record attrs
  -> JSX
br = createElementNoChildren "br"

type Props_button =
  ( disabled :: Boolean
  , form :: String
  , name :: String
  , type :: String
  , value :: String
  )

button
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_button)
  => Record attrs
  -> Array JSX
  -> JSX
button = createElement "button"

type Props_canvas =
  ( height :: String
  , width :: String
  )

canvas
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_canvas)
  => Record attrs
  -> Array JSX
  -> JSX
canvas = createElement "canvas"

type Props_caption = ()

caption
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_caption)
  => Record attrs
  -> Array JSX
  -> JSX
caption = createElement "caption"

type Props_cite = ()

cite
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_cite)
  => Record attrs
  -> Array JSX
  -> JSX
cite = createElement "cite"

type Props_code = ()

code
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_code)
  => Record attrs
  -> Array JSX
  -> JSX
code = createElement "code"

type Props_col =
  ( span :: Number
  , width :: String
  )

col
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_col)
  => Record attrs
  -> JSX
col = createElementNoChildren "col"

type Props_colgroup =
  ( span :: Number
  , width :: String
  )

colgroup
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_colgroup)
  => Record attrs
  -> Array JSX
  -> JSX
colgroup = createElement "colgroup"

type Props_data =
  ( value :: String
  )

data_
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_data)
  => Record attrs
  -> Array JSX
  -> JSX
data_ = createElement "data"

type Props_datalist = ()

datalist
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_datalist)
  => Record attrs
  -> Array JSX
  -> JSX
datalist = createElement "datalist"

type Props_dd = ()

dd
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_dd)
  => Record attrs
  -> Array JSX
  -> JSX
dd = createElement "dd"

type Props_del =
  ( cite :: String
  )

del
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_del)
  => Record attrs
  -> Array JSX
  -> JSX
del = createElement "del"

type Props_details =
  ( open :: Boolean
  )

details
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_details)
  => Record attrs
  -> Array JSX
  -> JSX
details = createElement "details"

type Props_dfn =
  ( title :: String
  )

dfn
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_dfn)
  => Record attrs
  -> Array JSX
  -> JSX
dfn = createElement "dfn"

type Props_dialog =
  ( open :: Boolean
  )

dialog
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_dialog)
  => Record attrs
  -> Array JSX
  -> JSX
dialog = createElement "dialog"

type Props_div = ()

div
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_div)
  => Record attrs
  -> Array JSX
  -> JSX
div = createElement "div"

type Props_dl = ()

dl
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_dl)
  => Record attrs
  -> Array JSX
  -> JSX
dl = createElement "dl"

type Props_dt = ()

dt
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_dt)
  => Record attrs
  -> Array JSX
  -> JSX
dt = createElement "dt"

type Props_em = ()

em
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_em)
  => Record attrs
  -> Array JSX
  -> JSX
em = createElement "em"

type Props_embed =
  ( height :: String
  , src :: String
  , type :: String
  , width :: String
  )

embed
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_embed)
  => Record attrs
  -> JSX
embed = createElementNoChildren "embed"

type Props_fieldset =
  ( disabled :: Boolean
  , form :: String
  , name :: String
  )

fieldset
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_fieldset)
  => Record attrs
  -> Array JSX
  -> JSX
fieldset = createElement "fieldset"

type Props_figcaption = ()

figcaption
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_figcaption)
  => Record attrs
  -> Array JSX
  -> JSX
figcaption = createElement "figcaption"

type Props_figure = ()

figure
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_figure)
  => Record attrs
  -> Array JSX
  -> JSX
figure = createElement "figure"

type Props_footer = ()

footer
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_footer)
  => Record attrs
  -> Array JSX
  -> JSX
footer = createElement "footer"

type Props_form eff =
  ( accept :: String
  , action :: String
  , method :: String
  , name :: String
  , target :: String
  , onSubmit :: EventHandler eff
  )

form
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) (Props_form eff))
  => Record attrs
  -> Array JSX
  -> JSX
form = createElement "form"

type Props_h1 = ()

h1
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_h1)
  => Record attrs
  -> Array JSX
  -> JSX
h1 = createElement "h1"

type Props_h2 = ()

h2
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_h2)
  => Record attrs
  -> Array JSX
  -> JSX
h2 = createElement "h2"

type Props_h3 = ()

h3
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_h3)
  => Record attrs
  -> Array JSX
  -> JSX
h3 = createElement "h3"

type Props_h4 = ()

h4
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_h4)
  => Record attrs
  -> Array JSX
  -> JSX
h4 = createElement "h4"

type Props_h5 = ()

h5
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_h5)
  => Record attrs
  -> Array JSX
  -> JSX
h5 = createElement "h5"

type Props_h6 = ()

h6
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_h6)
  => Record attrs
  -> Array JSX
  -> JSX
h6 = createElement "h6"

type Props_head =
  ( profile :: String
  )

head
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_head)
  => Record attrs
  -> Array JSX
  -> JSX
head = createElement "head"

type Props_header = ()

header
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_header)
  => Record attrs
  -> Array JSX
  -> JSX
header = createElement "header"

type Props_hgroup = ()

hgroup
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_hgroup)
  => Record attrs
  -> Array JSX
  -> JSX
hgroup = createElement "hgroup"

type Props_hr =
  ( size :: Number
  , width :: String
  )

hr
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_hr)
  => Record attrs
  -> JSX
hr = createElementNoChildren "hr"

type Props_html =
  ( manifest :: String
  )

html
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_html)
  => Record attrs
  -> Array JSX
  -> JSX
html = createElement "html"

type Props_i = ()

i
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_i)
  => Record attrs
  -> Array JSX
  -> JSX
i = createElement "i"

type Props_iframe =
  ( height :: String
  , name :: String
  , sandbox :: String
  , scrolling :: String
  , src :: String
  , width :: String
  )

iframe
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_iframe)
  => Record attrs
  -> Array JSX
  -> JSX
iframe = createElement "iframe"

type Props_img =
  ( alt :: String
  , height :: String
  , name :: String
  , sizes :: String
  , src :: String
  , width :: String
  )

img
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_img)
  => Record attrs
  -> JSX
img = createElementNoChildren "img"

type Props_input eff =
  ( accept :: String
  , alt :: String
  , autoCapitalize :: String
  , autoCorrect :: String
  , autoSave :: String
  , checked :: Boolean
  , disabled :: Boolean
  , form :: String
  , height :: String
  , list :: String
  , max :: String
  , min :: String
  , multiple :: Boolean
  , name :: String
  , onChange :: EventHandler eff
  , onBlur :: EventHandler eff
  , onKeyPress :: EventHandler eff
  , onBlur :: EventHandler eff
  , pattern :: String
  , placeholder :: String
  , required :: Boolean
  , results :: String
  , size :: Number
  , src :: String
  , step :: String
  , title :: String
  , type :: String
  , value :: String
  , width :: String
  )

input
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) (Props_input eff))
  => Record attrs
  -> JSX
input = createElementNoChildren "input"

type Props_ins =
  ( cite :: String
  )

ins
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_ins)
  => Record attrs
  -> Array JSX
  -> JSX
ins = createElement "ins"

type Props_kbd = ()

kbd
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_kbd)
  => Record attrs
  -> Array JSX
  -> JSX
kbd = createElement "kbd"

type Props_keygen =
  ( challenge :: String
  , disabled :: Boolean
  , form :: String
  , name :: String
  )

keygen
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_keygen)
  => Record attrs
  -> Array JSX
  -> JSX
keygen = createElement "keygen"

type Props_label =
  ( form :: String
  )

label
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_label)
  => Record attrs
  -> Array JSX
  -> JSX
label = createElement "label"

type Props_legend = ()

legend
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_legend)
  => Record attrs
  -> Array JSX
  -> JSX
legend = createElement "legend"

type Props_li =
  ( type :: String
  , value :: String
  )

li
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_li)
  => Record attrs
  -> Array JSX
  -> JSX
li = createElement "li"

type Props_link =
  ( color :: String
  , href :: String
  , integrity :: String
  , media :: String
  , nonce :: String
  , rel :: String
  , scope :: String
  , sizes :: String
  , target :: String
  , title :: String
  , type :: String
  )

link
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_link)
  => Record attrs
  -> JSX
link = createElementNoChildren "link"

type Props_main = ()

main
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_main)
  => Record attrs
  -> Array JSX
  -> JSX
main = createElement "main"

type Props_map =
  ( name :: String
  )

map
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_map)
  => Record attrs
  -> Array JSX
  -> JSX
map = createElement "map"

type Props_mark = ()

mark
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_mark)
  => Record attrs
  -> Array JSX
  -> JSX
mark = createElement "mark"

type Props_math = ()

math
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_math)
  => Record attrs
  -> Array JSX
  -> JSX
math = createElement "math"

type Props_menu = ()

menu
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_menu)
  => Record attrs
  -> Array JSX
  -> JSX
menu = createElement "menu"

type Props_menuitem = ()

menuitem
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_menuitem)
  => Record attrs
  -> Array JSX
  -> JSX
menuitem = createElement "menuitem"

type Props_meta =
  ( content :: String
  , name :: String
  )

meta
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_meta)
  => Record attrs
  -> JSX
meta = createElementNoChildren "meta"

type Props_meter =
  ( high :: String
  , low :: String
  , max :: String
  , min :: String
  , optimum :: String
  , value :: String
  )

meter
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_meter)
  => Record attrs
  -> Array JSX
  -> JSX
meter = createElement "meter"

type Props_nav = ()

nav
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_nav)
  => Record attrs
  -> Array JSX
  -> JSX
nav = createElement "nav"

type Props_noscript = ()

noscript
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_noscript)
  => Record attrs
  -> Array JSX
  -> JSX
noscript = createElement "noscript"

type Props_object =
  ( data :: String
  , form :: String
  , height :: String
  , name :: String
  , type :: String
  , width :: String
  )

object
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_object)
  => Record attrs
  -> Array JSX
  -> JSX
object = createElement "object"

type Props_ol =
  ( reversed :: Boolean
  , start :: Number
  , type :: String
  )

ol
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_ol)
  => Record attrs
  -> Array JSX
  -> JSX
ol = createElement "ol"

type Props_optgroup =
  ( disabled :: Boolean
  , label :: String
  )

optgroup
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_optgroup)
  => Record attrs
  -> Array JSX
  -> JSX
optgroup = createElement "optgroup"

type Props_option =
  ( disabled :: Boolean
  , label :: String
  , selected :: Boolean
  , value :: String
  )

option
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_option)
  => Record attrs
  -> Array JSX
  -> JSX
option = createElement "option"

type Props_output =
  ( form :: String
  , name :: String
  )

output
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_output)
  => Record attrs
  -> Array JSX
  -> JSX
output = createElement "output"

type Props_p = ()

p
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_p)
  => Record attrs
  -> Array JSX
  -> JSX
p = createElement "p"

type Props_param =
  ( name :: String
  , type :: String
  , value :: String
  )

param
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_param)
  => Record attrs
  -> JSX
param = createElementNoChildren "param"

type Props_picture = ()

picture
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_picture)
  => Record attrs
  -> Array JSX
  -> JSX
picture = createElement "picture"

type Props_pre =
  ( width :: String
  )

pre
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_pre)
  => Record attrs
  -> Array JSX
  -> JSX
pre = createElement "pre"

type Props_progress =
  ( max :: String
  , value :: String
  )

progress
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_progress)
  => Record attrs
  -> Array JSX
  -> JSX
progress = createElement "progress"

type Props_q =
  ( cite :: String
  )

q
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_q)
  => Record attrs
  -> Array JSX
  -> JSX
q = createElement "q"

type Props_rb = ()

rb
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_rb)
  => Record attrs
  -> Array JSX
  -> JSX
rb = createElement "rb"

type Props_rp = ()

rp
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_rp)
  => Record attrs
  -> Array JSX
  -> JSX
rp = createElement "rp"

type Props_rt = ()

rt
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_rt)
  => Record attrs
  -> Array JSX
  -> JSX
rt = createElement "rt"

type Props_rtc = ()

rtc
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_rtc)
  => Record attrs
  -> Array JSX
  -> JSX
rtc = createElement "rtc"

type Props_ruby = ()

ruby
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_ruby)
  => Record attrs
  -> Array JSX
  -> JSX
ruby = createElement "ruby"

type Props_s = ()

s
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_s)
  => Record attrs
  -> Array JSX
  -> JSX
s = createElement "s"

type Props_samp = ()

samp
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_samp)
  => Record attrs
  -> Array JSX
  -> JSX
samp = createElement "samp"

type Props_script =
  ( async :: Boolean
  , defer :: Boolean
  , integrity :: String
  , nonce :: String
  , src :: String
  , type :: String
  )

script
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_script)
  => Record attrs
  -> Array JSX
  -> JSX
script = createElement "script"

type Props_section = ()

section
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_section)
  => Record attrs
  -> Array JSX
  -> JSX
section = createElement "section"

type Props_select eff =
  ( disabled :: Boolean
  , form :: String
  , multiple :: Boolean
  , name :: String
  , onChange :: EventHandler eff
  , onBlur :: EventHandler eff
  , onKeyPress :: EventHandler eff
  , required :: Boolean
  , size :: Number
  , value :: String
  )

select
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) (Props_select eff))
  => Record attrs
  -> Array JSX
  -> JSX
select = createElement "select"

type Props_slot =
  ( name :: String
  )

slot
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_slot)
  => Record attrs
  -> Array JSX
  -> JSX
slot = createElement "slot"

type Props_small = ()

small
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_small)
  => Record attrs
  -> Array JSX
  -> JSX
small = createElement "small"

type Props_source =
  ( media :: String
  , sizes :: String
  , src :: String
  , type :: String
  )

source
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_source)
  => Record attrs
  -> JSX
source = createElementNoChildren "source"

type Props_span = ()

span
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_span)
  => Record attrs
  -> Array JSX
  -> JSX
span = createElement "span"

type Props_strong = ()

strong
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_strong)
  => Record attrs
  -> Array JSX
  -> JSX
strong = createElement "strong"

type Props_style =
  ( media :: String
  , nonce :: String
  , title :: String
  , type :: String
  )

style
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_style)
  => Record attrs
  -> Array JSX
  -> JSX
style = createElement "style"

type Props_sub = ()

sub
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_sub)
  => Record attrs
  -> Array JSX
  -> JSX
sub = createElement "sub"

type Props_summary = ()

summary
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_summary)
  => Record attrs
  -> Array JSX
  -> JSX
summary = createElement "summary"

type Props_sup = ()

sup
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_sup)
  => Record attrs
  -> Array JSX
  -> JSX
sup = createElement "sup"

type Props_svg =
  ( accentHeight :: String
  , accumulate :: String
  , additive :: String
  , alignmentBaseline :: String
  , allowReorder :: String
  , alphabetic :: String
  , amplitude :: String
  , arabicForm :: String
  , ascent :: String
  , attributeName :: String
  , attributeType :: String
  , autoReverse :: String
  , azimuth :: String
  , baseFrequency :: String
  , baseProfile :: String
  , baselineShift :: String
  , bbox :: String
  , begin :: String
  , bias :: String
  , by :: String
  , calcMode :: String
  , capHeight :: String
  , clip :: String
  , clipPath :: String
  , clipPathUnits :: String
  , clipRule :: String
  , color :: String
  , colorInterpolation :: String
  , colorInterpolationFilters :: String
  , colorProfile :: String
  , colorRendering :: String
  , contentScriptType :: String
  , contentStyleType :: String
  , cursor :: String
  , cx :: String
  , cy :: String
  , d :: String
  , decelerate :: String
  , descent :: String
  , diffuseConstant :: String
  , direction :: String
  , display :: String
  , divisor :: String
  , dominantBaseline :: String
  , dur :: String
  , dx :: String
  , dy :: String
  , edgeMode :: String
  , elevation :: String
  , enableBackground :: String
  , end :: String
  , exponent :: String
  , externalResourcesRequired :: String
  , fill :: String
  , fillOpacity :: String
  , fillRule :: String
  , filter :: String
  , filterRes :: String
  , filterUnits :: String
  , floodColor :: String
  , floodOpacity :: String
  , focusable :: String
  , fontFamily :: String
  , fontSize :: String
  , fontSizeAdjust :: String
  , fontStretch :: String
  , fontStyle :: String
  , fontVariant :: String
  , fontWeight :: String
  , format :: String
  , from :: String
  , fx :: String
  , fy :: String
  , g1 :: String
  , g2 :: String
  , glyphName :: String
  , glyphOrientationHorizontal :: String
  , glyphOrientationVertical :: String
  , glyphRef :: String
  , gradientTransform :: String
  , gradientUnits :: String
  , hanging :: String
  , height :: String
  , horizAdvX :: String
  , horizOriginX :: String
  , ideographic :: String
  , imageRendering :: String
  , in :: String
  , in2 :: String
  , intercept :: String
  , k :: String
  , k1 :: String
  , k2 :: String
  , k3 :: String
  , k4 :: String
  , kernelMatrix :: String
  , kernelUnitLength :: String
  , kerning :: String
  , keyPoints :: String
  , keySplines :: String
  , keyTimes :: String
  , lengthAdjust :: String
  , letterSpacing :: String
  , lightingColor :: String
  , limitingConeAngle :: String
  , local :: String
  , markerEnd :: String
  , markerHeight :: String
  , markerMid :: String
  , markerStart :: String
  , markerUnits :: String
  , markerWidth :: String
  , mask :: String
  , maskContentUnits :: String
  , maskUnits :: String
  , mathematical :: String
  , mode :: String
  , numOctaves :: String
  , offset :: String
  , opacity :: String
  , operator :: String
  , order :: String
  , orient :: String
  , orientation :: String
  , origin :: String
  , overflow :: String
  , overlinePosition :: String
  , overlineThickness :: String
  , paintOrder :: String
  , panose1 :: String
  , pathLength :: String
  , patternContentUnits :: String
  , patternTransform :: String
  , patternUnits :: String
  , pointerEvents :: String
  , points :: String
  , pointsAtX :: String
  , pointsAtY :: String
  , pointsAtZ :: String
  , preserveAlpha :: String
  , preserveAspectRatio :: String
  , primitiveUnits :: String
  , r :: String
  , radius :: String
  , refX :: String
  , refY :: String
  , renderingIntent :: String
  , repeatCount :: String
  , repeatDur :: String
  , requiredExtensions :: String
  , requiredFeatures :: String
  , restart :: String
  , result :: String
  , rotate :: String
  , rx :: String
  , ry :: String
  , scale :: String
  , seed :: String
  , shapeRendering :: String
  , slope :: String
  , spacing :: String
  , specularConstant :: String
  , specularExponent :: String
  , speed :: String
  , spreadMethod :: String
  , startOffset :: String
  , stdDeviation :: String
  , stemh :: String
  , stemv :: String
  , stitchTiles :: String
  , stopColor :: String
  , stopOpacity :: String
  , strikethroughPosition :: String
  , strikethroughThickness :: String
  , string :: String
  , stroke :: String
  , strokeDasharray :: String
  , strokeDashoffset :: String
  , strokeLinecap :: String
  , strokeLinejoin :: String
  , strokeMiterlimit :: String
  , strokeOpacity :: String
  , strokeWidth :: String
  , surfaceScale :: String
  , systemLanguage :: String
  , tableValues :: String
  , targetX :: String
  , targetY :: String
  , textAnchor :: String
  , textDecoration :: String
  , textLength :: String
  , textRendering :: String
  , to :: String
  , transform :: String
  , u1 :: String
  , u2 :: String
  , underlinePosition :: String
  , underlineThickness :: String
  , unicode :: String
  , unicodeBidi :: String
  , unicodeRange :: String
  , unitsPerEm :: String
  , vAlphabetic :: String
  , vHanging :: String
  , vIdeographic :: String
  , vMathematical :: String
  , values :: String
  , vectorEffect :: String
  , version :: String
  , vertAdvY :: String
  , vertOriginX :: String
  , vertOriginY :: String
  , viewBox :: String
  , viewTarget :: String
  , visibility :: String
  , width :: String
  , widths :: String
  , wordSpacing :: String
  , writingMode :: String
  , x :: String
  , x1 :: String
  , x2 :: String
  , xChannelSelector :: String
  , xHeight :: String
  , xlinkActuate :: String
  , xlinkArcrole :: String
  , xlinkHref :: String
  , xlinkRole :: String
  , xlinkShow :: String
  , xlinkTitle :: String
  , xlinkType :: String
  , xmlBase :: String
  , xmlLang :: String
  , xmlSpace :: String
  , xmlns :: String
  , xmlnsXlink :: String
  , y :: String
  , y1 :: String
  , y2 :: String
  , yChannelSelector :: String
  , z :: String
  , zoomAndPan :: String
  )

svg
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_svg)
  => Record attrs
  -> Array JSX
  -> JSX
svg = createElement "svg"

type Props_table =
  ( summary :: String
  , width :: String
  )

table
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_table)
  => Record attrs
  -> Array JSX
  -> JSX
table = createElement "table"

type Props_tbody = ()

tbody
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_tbody)
  => Record attrs
  -> Array JSX
  -> JSX
tbody = createElement "tbody"

type Props_td =
  ( headers :: String
  , height :: String
  , scope :: String
  , width :: String
  )

td
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_td)
  => Record attrs
  -> Array JSX
  -> JSX
td = createElement "td"

type Props_template = ()

template
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_template)
  => Record attrs
  -> Array JSX
  -> JSX
template = createElement "template"

type Props_textarea eff =
  ( autoCapitalize :: String
  , autoCorrect :: String
  , cols :: Number
  , disabled :: Boolean
  , form :: String
  , name :: String
  , onChange :: EventHandler eff
  , onBlur :: EventHandler eff
  , onKeyPress :: EventHandler eff
  , placeholder :: String
  , required :: Boolean
  , rows :: Number
  , value :: String
  , wrap :: String
  )

textarea
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) (Props_textarea eff))
  => Record attrs
  -> Array JSX
  -> JSX
textarea = createElement "textarea"

type Props_tfoot = ()

tfoot
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_tfoot)
  => Record attrs
  -> Array JSX
  -> JSX
tfoot = createElement "tfoot"

type Props_th =
  ( headers :: String
  , height :: String
  , scope :: String
  , width :: String
  )

th
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_th)
  => Record attrs
  -> Array JSX
  -> JSX
th = createElement "th"

type Props_thead = ()

thead
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_thead)
  => Record attrs
  -> Array JSX
  -> JSX
thead = createElement "thead"

type Props_time = ()

time
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_time)
  => Record attrs
  -> Array JSX
  -> JSX
time = createElement "time"

type Props_title = ()

title
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_title)
  => Record attrs
  -> Array JSX
  -> JSX
title = createElement "title"

type Props_tr = ()

tr
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_tr)
  => Record attrs
  -> Array JSX
  -> JSX
tr = createElement "tr"

type Props_track =
  ( default :: Boolean
  , kind :: String
  , label :: String
  , src :: String
  )

track
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_track)
  => Record attrs
  -> JSX
track = createElementNoChildren "track"

type Props_u = ()

u
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_u)
  => Record attrs
  -> Array JSX
  -> JSX
u = createElement "u"

type Props_ul =
  ( type :: String
  )

ul
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_ul)
  => Record attrs
  -> Array JSX
  -> JSX
ul = createElement "ul"

type Props_var = ()

var
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_var)
  => Record attrs
  -> Array JSX
  -> JSX
var = createElement "var"

type Props_video =
  ( controls :: Boolean
  , height :: String
  , loop :: Boolean
  , muted :: Boolean
  , poster :: String
  , preload :: String
  , src :: String
  , width :: String
  )

video
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_video)
  => Record attrs
  -> Array JSX
  -> JSX
video = createElement "video"

type Props_wbr = ()

wbr
  :: forall eff attrs attrs_
   . Union attrs attrs_ ((SharedProps eff) Props_wbr)
  => Record attrs
  -> JSX
wbr = createElementNoChildren "wbr"
