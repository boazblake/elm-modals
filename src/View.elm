module View exposing (view)

import Html exposing (Html, Attribute, div, h2, text)
import Html.Attributes exposing (style)
import Messages exposing (Msg)
import Models exposing (Model)
import Views.Header as Header
import Views.Main as Main
import Views.Modal as Modal
import Styles.Main exposing (..)


view : Model -> Html Msg
view model =
    case model.isWorldDestroyed of
        False ->
            div
                [ mainContentStyle ]
                [ Header.view model
                , Main.view model
                , Modal.view model
                ]

        True ->
            div [ deathScreenStyle ]
                [ h2 [ deathHeaderStyle ]
                    [ text "The world has been destroyed. Have a nice day :)" ]
                ]
