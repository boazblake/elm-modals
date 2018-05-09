module Styles.Main exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (style)


descStyle : Attribute msg
descStyle =
    style
        [ ( "margin", "0 0 8px 0" ) ]


headerStyle : Attribute msg
headerStyle =
    style
        [ ( "padding", "12px" )
        , ( "margin", "0px" )
        , ( "border-bottom", "1px solid rgba(0,0,0,0.3)" )
        ]


bodyStyle : Attribute msg
bodyStyle =
    style
        [ ( "padding", "10px" )
        ]


buttonStyle : Attribute msg
buttonStyle =
    style
        [ ( "display", "inline-block" )
        , ( "appearance", "none" )
        , ( "padding", "12px, 16px" )
        , ( "color", "rgb(54,137,218)" )
        , ( "background", "transparent" )
        , ( "border", "none" )
        , ( "cursor", "pointer" )
        , ( "font-size", "1em" )
        ]


deathScreenStyle : Attribute msg
deathScreenStyle =
    style
        [ ( "position", "fixed" )
        , ( "top", "0" )
        , ( "left", "0" )
        , ( "background-color", "rgb(0,0,0)" )
        , ( "color", "rgb(255,0,0)" )
        , ( "height", "100%" )
        , ( "width", "100%" )
        ]


deathHeaderStyle : Attribute msg
deathHeaderStyle =
    style
        [ ( "position", "absolute" )
        , ( "top", "50%" )
        , ( "left", "50%" )
        , ( "margin-right", "-50%" )
        , ( "transform", "translate(-50%, -50%)" )
        ]


inputStyle : Attribute msg
inputStyle =
    style
        [ ( "display", "block" )
        , ( "width", "100%" )
        , ( "line-height", "24px" )
        , ( "margin", "0 0 8px 0" )
        , ( "border", "1px solid rgba(0,0,0,0.3)" )
        ]


mainBodyStyle : Attribute msg
mainBodyStyle =
    style
        [ ( "padding", "10px" )
        , ( "margin", "0 auto" )
        , ( "width", "80%" )
        , ( "max-width", "1200px" )
        ]


outlineButtonStyle : Attribute msg
outlineButtonStyle =
    style
        [ ( "padding", "12px, 16px" )
        , ( "background", "rgb(255,255,255)" )
        , ( "color", "rgb(54,137,218)" )
        , ( "border", "2px solid rgb(54,137,218)" )
        , ( "cursor", "pointer" )
        , ( "font-size", "1em" )
        ]


maskStyle : Attribute msg
maskStyle =
    style
        [ ( "background-color", "rgba(0,0,0,0.3)" )
        , ( "position", "fixed" )
        , ( "top", "0" )
        , ( "left", "0" )
        , ( "width", "100%" )
        , ( "height", "100%" )
        ]


modalStyle : Attribute msg
modalStyle =
    style
        [ ( "background-color", "rgba(255,255,255,1.0)" )
        , ( "position", "absolute" )
        , ( "top", "50%" )
        , ( "left", "50%" )
        , ( "height", "auto" )
        , ( "max-height", "80%" )
        , ( "width", "700px" )
        , ( "max-width", "95%" )
        , ( "padding", "10px" )
        , ( "border-radius", "3px" )
        , ( "box-shadow", "1px 1px 5px rgba(0,0,0,0.5)" )
        , ( "transform", "translate(-50%, -50%)" )
        ]


modalHeaderStyle : Attribute msg
modalHeaderStyle =
    style
        [ ( "padding", "10px" )
        , ( "margin", "0px" )
        , ( "border-bottom", "1px solid rgba(0,0,0,0.3)" )
        ]


modalBodyStyle : Attribute msg
modalBodyStyle =
    style
        [ ( "padding", "10px" )
        ]


mainContentStyle : Attribute msg
mainContentStyle =
    style
        [ ( "position", "relative" )
        , ( "background-color", "rgb(255,255,255)" )
        , ( "margin", "0" )
        ]
