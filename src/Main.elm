module Main exposing (..)

import Html
import View exposing (view)
import Models exposing (Model, model)
import Messages exposing (Msg)
import Update exposing (update)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


init : ( Model, Cmd Msg )
init =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
