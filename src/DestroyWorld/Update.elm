module DestroyWorld.Update exposing (update)

import DestroyWorld.Models exposing (..)
import DestroyWorld.Messages exposing (Msg(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        ToDestroyWorld ->
            let
                newModel =
                    { model | modal = (Just modal) }
            in
                ( newModel, Cmd.none )

        DestroyWorld ->
            let
                newModel =
                    { model
                        | modal = Nothing
                        , isWorldDestroyed = True
                    }
            in
                ( newModel, Cmd.none )

        CancelDestroyWorld ->
            let
                newModel =
                    { model
                        | modal = Nothing
                        , isWorldDestroyed = False
                    }
            in
                ( newModel, Cmd.none )
