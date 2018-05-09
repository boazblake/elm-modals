module DestroyCountries.Update exposing (update)

import DestroyCountries.Models exposing (..)
import DestroyCountries.Messages exposing (Msg(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        StartSelectingCountries ->
            let
                newModel =
                    { model | modal = (Just modal) }
            in
                ( newModel, Cmd.none )

        SelectCounty country ->
            let
                newModel =
                    { model | selectedCountries = country :: model.selectedCountries }
            in
                ( newModel, Cmd.none )

        DestroyCountries ->
            let
                newModel =
                    { model | selectedCountries = [ "" ], modal = Nothing }
            in
                ( newModel, Cmd.none )

        CancelDestruction ->
            let
                newModel =
                    { model | selectedCountries = [ "" ], modal = Nothing }
            in
                ( newModel, Cmd.none )
