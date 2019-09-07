module Custom.Halogen
  ( module Halogen
  , module Custom.Halogen.Utils
  , module Halogen.Aff
  , module Halogen.HTML
  , module Halogen.HTML.Core
  , module Halogen.HTML.Events
  , module Halogen.HTML.Properties
  , module Halogen.VDom.Driver
  ) where

import Halogen

import Custom.Halogen.Utils (class_, elClass, elClassAttr)

import Halogen.Aff (HalogenIO, awaitBody, awaitLoad, runHalogenAff, selectElement)

import Halogen.HTML (class IsProp, AttrName(..), ClassName(..), ComponentHTML,
    ElemName(..), HTML(..), IProp, Leaf, Namespace(..), Node, PlainHTML, PropName(..),
    a, a_, abbr, abbr_, address, address_, area, article, article_, aside, aside_, attr,
    attrNS, audio, audio_, b, b_, base, bdi, bdi_, bdo, bdo_, blockquote,
    blockquote_, body, body_, br, br_, button, button_, canvas, caption, caption_,
    cite, cite_, code, code_, col, colgroup, colgroup_, command, datalist, datalist_,
    dd, dd_, del, del_, details, details_, dfn, dfn_, dialog, dialog_, div, div_,
    dl, dl_, dt, dt_, element, elementNS, em, em_, embed, embed_, fieldset, fieldset_,
    figcaption, figcaption_, figure, figure_, footer, footer_, form, form_, fromPlainHTML,
    h1, h1_, h2, h2_, h3, h3_, h4, h4_, h5, h5_, h6, h6_, head, head_,
    header, header_, hr, hr_, html, html_, i, i_, iframe, img, input, ins, ins_,
    kbd, kbd_, keyed, keyedNS, label, label_, legend, legend_, li, li_, link,
    main, main_, map, map_, mark, mark_, memoized, menu, menu_, menuitem, menuitem_,
    meta, meter, meter_, nav, nav_, noscript, noscript_, object, object_, ol, ol_,
    optgroup, optgroup_, option, option_, output, output_, p, p_, param, pre, pre_,
    progress, progress_, prop, q, q_, rp, rp_, rt, rt_, ruby, ruby_, samp, samp_,
    script, script_, section, section_, select, select_, slot, small, small_, source,
    span, span_, strong, strong_, style, style_, sub, sub_, summary, summary_, sup,
    sup_, table, table_, tbody, tbody_, td, td_, text, textarea, tfoot, tfoot_,
    th, th_, thead, thead_, time, time_, title, title_, tr, tr_, track, u, u_, ul, ul_,
    var, var_, video, video_, wbr, withKeys, withKeys_) -- handler

import Halogen.HTML.Core (Prop(..), PropValue, renderWidget, toPropValue, widget)

import Halogen.HTML.Events (handler, onAbort, onBlur, onChange, onChecked, onClick,
    onCopy, onCut, onDoubleClick, onDrag, onDragEnd, onDragEnter, onDragExit, onDragLeave,
    onDragOver, onDragStart, onDrop, onError, onFocus, onFocusIn, onFocusOut, onInput,
    onInvalid, onKeyDown, onKeyUp, onLoad, onMouseDown, onMouseEnter, onMouseLeave,
    onMouseMove, onMouseOut, onMouseOver, onMouseUp, onPaste, onReset, onResize, onScroll,
    onSelect, onSelectedIndexChange, onSubmit, onTouchCancel, onTouchEnd, onTouchEnter,
    onTouchLeave, onTouchMove, onTouchStart, onTransitionEnd, onValueChange, onValueInput, onWheel)

import Halogen.HTML.Properties (ButtonType(..), CSSPixel, FormMethod(..), IProp(..),
    InputAcceptType(..), InputType(..), MenuType(..), MenuitemType(..), OnOff(..),
    OrderedListType(..), PreloadValue(..), StepValue(..), accept, action, alt, attr,
    attrNS, autocomplete, autofocus, autoplay, charset, checked, classes,
    colSpan, cols, controls, disabled, download, draggable, enabled, enctype, expand,
    for, height, href, id_, list, loop, max, method, min, multiple, muted, name,
    noValidate, pattern, placeholder, poster, preload, prop, readOnly, ref, rel,
    required, rowSpan, rows, selected, selectedIndex, spellcheck, src, step, tabIndex,
    target, type_, value, width) -- title, class_

import Halogen.VDom.Driver (runUI) -- HalogenIO

