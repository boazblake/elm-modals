module Views.Modal exposing (view)

import Html exposing (Html, Attribute, button, div, h1, h3, p, span, text)
import Html.Attributes exposing (style, id, tabindex)
import Html.Events exposing (onClick, onFocus)
import Messages exposing (Msg(..))
import Models exposing (Model, Modal(..))
import Tacos.View as Tacos
import DestroyWorld.View as DestroyWorld
import DestroyCountries.View as DestroyCountries
import Styles.Main exposing (..)


view : Model -> Html Msg
view model =
    case model.modal of
        Nothing ->
            div [ style [ ( "display", "none" ) ] ] []

        Just modal ->
            div [ maskStyle ]
                [ span [ (onFocus ResetModalFocus), (tabindex 0) ]
                    []
                , div [ modalStyle, (id "modal-window"), (tabindex -1) ]
                    [ modalContent modal ]
                , span [ (onFocus ResetModalFocus), (tabindex 0) ] []
                ]


modalContent : Modal -> Html Msg
modalContent wrappedModal =
    case wrappedModal of
        TacoModal modal ->
            Html.map UpdateTacos Tacos.modal

        WorldModel modal ->
            Html.map UpdateDestroyWorld DestroyWorld.modal

        DestroyCountries modal ->
            Html.map UpdateDestroyCountry DestroyCountries.modal
