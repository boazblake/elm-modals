module DestroyWorld.View exposing (view, modal)

import Html exposing (Html, Attribute, button, div, h3, h2, input, label, p, text)
import Html.Events exposing (onClick, on)
import DestroyWorld.Messages exposing (Msg(..))
import DestroyWorld.Models exposing (Model)
import Styles.Main exposing (..)


view : Model -> Html Msg
view model =
    if model.isWorldDestroyed == True then
        div [ deathScreenStyle ]
            [ h2 [ deathHeaderStyle ]
                [ text "The world has been destroyed. Have a nice day :)" ]
            ]
    else
        div []
            [ button [ buttonStyle, (onClick ToDestroyWorld) ]
                [ text "Destroy The World?" ]
            ]


modal : Html Msg
modal =
    div []
        [ h3 [ headerStyle ]
            [ text "Would you like to destroy the world today?" ]
        , div [ bodyStyle ]
            [ p [ descStyle ]
                [ text "please remember... this is it..." ]
            , button [ buttonStyle, (onClick CancelDestroyWorld) ] [ text "Cancel Destruction" ]
            , button [ buttonStyle, (onClick DestroyWorld) ] [ text "Destory The World!!" ]
            ]
        ]
