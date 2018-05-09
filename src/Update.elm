module Update exposing (update)

import Models exposing (Model, Modal(..))
import Messages exposing (Msg(..))
import Ports as Ports
import Tacos.Update as Tacos
import DestroyWorld.Update as DestroyWorld
import DestroyCountries.Update as DestroyCountries


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        UpdateTacos msg ->
            let
                ( newTacos, _ ) =
                    Tacos.update msg model.tacos

                newModel =
                    { model
                        | tacos = newTacos
                        , modal = Maybe.map TacoModal newTacos.modal
                    }
            in
                ( newModel, Cmd.none )

        UpdateDestroyWorld msg ->
            let
                ( newDestroyWorld, _ ) =
                    DestroyWorld.update msg model.destroyWorld

                newModel =
                    { model
                        | destroyWorld = newDestroyWorld
                        , isWorldDestroyed = newDestroyWorld.isWorldDestroyed
                        , modal = Maybe.map WorldModel newDestroyWorld.modal
                    }

                newCommand =
                    focusCmd model.modal newModel.modal
            in
                ( newModel, newCommand )

        _ ->
            ( model, Cmd.none )


isJust : Maybe a -> Bool
isJust maybe =
    case maybe of
        Just x ->
            True

        _ ->
            False


focusCmd : Maybe a -> Maybe a -> Cmd Msg
focusCmd old new =
    case ( (isJust old), (isJust new) ) of
        ( False, True ) ->
            Ports.focusModule ()

        _ ->
            Cmd.none
