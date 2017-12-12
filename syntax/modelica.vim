" Vim syntax file
" Language:	Modelica
" Credits:	Antoine Viel, <antoine.viel@yahoo.com>
" $Id$

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Case is significant
syn case match

" Modelica keywords
syn keyword modelicaStatement algorithm
syn keyword modelicaStatement annotation
syn keyword modelicaStatement assert
syn keyword modelicaStatement block
syn keyword modelicaStatement break
syn keyword modelicaStatement class
syn keyword modelicaStatement connect
syn keyword modelicaStatement connector
syn keyword modelicaStatement constant
syn keyword modelicaStatement der
syn keyword modelicaStatement displayUnit
syn keyword modelicaStatement discrete
syn keyword modelicaStatement edge
syn keyword modelicaStatement else
syn keyword modelicaStatement elseif
syn keyword modelicaStatement elsewhen
syn keyword modelicaStatement encapsulated
syn keyword modelicaStatement end
syn keyword modelicaStatement enumeration
syn keyword modelicaStatement equation
syn keyword modelicaStatement extends
syn keyword modelicaStatement external
syn keyword modelicaStatement final
syn keyword modelicaStatement fixed
syn keyword modelicaStatement flow
syn keyword modelicaStatement for
syn keyword modelicaStatement function
syn keyword modelicaStatement operator
syn keyword modelicaStatement pure
syn keyword modelicaStatement impure
syn keyword modelicaStatement if
syn keyword modelicaStatement import
syn keyword modelicaStatement in
syn keyword modelicaStatement initial
syn keyword modelicaStatement inner
syn keyword modelicaStatement input
syn keyword modelicaStatement loop
syn keyword modelicaStatement max
syn keyword modelicaStatement min
syn keyword modelicaStatement model
syn keyword modelicaStatement noEvent
syn keyword modelicaStatement nominal
syn keyword modelicaStatement outer
syn keyword modelicaStatement output
syn keyword modelicaStatement package
syn keyword modelicaStatement parameter
syn keyword modelicaStatement partial
syn keyword modelicaStatement pre
syn keyword modelicaStatement protected
syn keyword modelicaStatement public
syn keyword modelicaStatement quantity
syn keyword modelicaStatement record
syn keyword modelicaStatement redeclare
syn keyword modelicaStatement replaceable
syn keyword modelicaStatement return
syn keyword modelicaStatement sample
syn keyword modelicaStatement size
syn keyword modelicaStatement smooth
syn keyword modelicaStatement start
syn keyword modelicaStatement terminal
syn keyword modelicaStatement then
syn keyword modelicaStatement type
syn keyword modelicaStatement unit
syn keyword modelicaStatement when
syn keyword modelicaStatement while
syn keyword modelicaStatement within

" Modelica inner functions
syn keyword modelicaFunction abs 
syn keyword modelicaFunction cross 
syn keyword modelicaFunction diagonal 
syn keyword modelicaFunction fill 
syn keyword modelicaFunction identity 
syn keyword modelicaFunction linespace 
syn keyword modelicaFunction matrix 
syn keyword modelicaFunction mod
syn keyword modelicaFunction ndims 
syn keyword modelicaFunction ones 
syn keyword modelicaFunction outerProduct 
syn keyword modelicaFunction product 
syn keyword modelicaFunction scalar 
syn keyword modelicaFunction size 
syn keyword modelicaFunction skew 
syn keyword modelicaFunction sqrt 
syn keyword modelicaFunction sum 
syn keyword modelicaFunction sysmmetric 
syn keyword modelicaFunction transpose 
syn keyword modelicaFunction vector 
syn keyword modelicaFunction zeros 

" annotation items
syn keyword modelicaAnnotation choices
syn keyword modelicaAnnotation Circle
syn keyword modelicaAnnotation color
syn keyword modelicaAnnotation coordinateSystem
syn keyword modelicaAnnotation Diagram
syn keyword modelicaAnnotation Dialog
syn keyword modelicaAnnotation Documentation
syn keyword modelicaAnnotation derivative
syn keyword modelicaAnnotation Ellipse
syn keyword modelicaAnnotation enable
syn keyword modelicaAnnotation experiment
syn keyword modelicaAnnotation extent
syn keyword modelicaAnnotation fillColor
syn keyword modelicaAnnotation fillPattern
syn keyword modelicaAnnotation group
syn keyword modelicaAnnotation Icon
syn keyword modelicaAnnotation iconTransformation
syn keyword modelicaAnnotation info
syn keyword modelicaAnnotation graphics
syn keyword modelicaAnnotation Line
syn keyword modelicaAnnotation lineColor
syn keyword modelicaAnnotation origin
syn keyword modelicaAnnotation Placement
syn keyword modelicaAnnotation preserveAspectRatio
syn keyword modelicaAnnotation points
syn keyword modelicaAnnotation Rectangle
syn keyword modelicaAnnotation revisions
syn keyword modelicaAnnotation rotation
syn keyword modelicaAnnotation StartTime
syn keyword modelicaAnnotation StopTime
syn keyword modelicaAnnotation tab
syn keyword modelicaAnnotation text
syn keyword modelicaAnnotation textString
syn keyword modelicaAnnotation transformation

" Global variables
syn keyword modelicaGlobal time

" Predifined Modelica types
syn keyword modelicaType Real Integer Boolean String

" Boolean values
syn keyword modelicaBoolean true false

" Character strings
syn match  modelicaCharacter "'.'"
syn region modelicaString start=/"/  skip=/\\"/ end=/"/

" Floating numbers
syn match modelicaNumber "-\=\<\d\+\.\d\+\([Ee][+\-]\=\d\+\)\>"
syn match modelicaNumber "-\=\<\d\+\.\d\+\>"

" Integer numbers
syn match modelicaNumber "-\=\<\d\+\([Ee][+\-]\=\d\+\)\>"
syn match modelicaNumber "-\=\<\d\+\>"

" Operators
syn keyword modelicaOperator and or not
syn match   modelicaOperator "[><=:+\-*\/\^]"

" Comments
syn match modelicaComment "//.*$"
syn region modelicaComment start=/\/\*/ end=/\*\//

" Annotations
"syn region modelicabetweenpar start=/(/ end=/)/ contained contains=modelicabetweenpar 
"syn region modelicaAnnotation start=/annotation\s*(/ end=/)/ contains=modelicabetweenpar 

" Define the default highlighting.

  highlight link modelicaStatement Statement
  highlight link modelicaCharacter String
  highlight link modelicaString    String
  highlight link modelicaBoolean   String
  highlight link modelicaAnnotation Define
  highlight link modelicaFunction   Function
  highlight link modelicaComment   Comment
  highlight link modelicaNumber    String
  highlight link modelicaType      Type
  highlight link modelicaOperator  Type
  highlight link modelicaGlobal    Identifier
"  highlight link modelicaAnnotation Comment

let b:current_syntax = "modelica"

" vim: ts=4

