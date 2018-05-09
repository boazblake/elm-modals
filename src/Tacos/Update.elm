module Tacos.Update exposing (update)

import Tacos.Models exposing (..)
import Tacos.Messages exposing (Msg(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        StartTacoOrder ->
            let
                newModel =
                    { model | modal = (Just modal) }
            in
                ( newModel, Cmd.none )

        UpdateOrder count ->
            let
                newModal =
                    Maybe.map (\x -> { x | currentOrder = count }) model.modal

                newModel =
                    { model | modal = newModal }
            in
                ( newModel, Cmd.none )

        PlaceOrder ->
            let
                orderTotal =
                    case model.modal of
                        Just modal ->
                            modal.currentOrder + model.totalOrdered

                        _ ->
                            model.totalOrdered

                newModel =
                    { model | totalOrdered = orderTotal, modal = Nothing }
            in
                ( newModel, Cmd.none )

        CancelOrder ->
            let
                newModel =
                    { model | modal = Nothing }
            in
                ( newModel, Cmd.none )
