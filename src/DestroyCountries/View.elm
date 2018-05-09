module DestroyCountries.View exposing (view, modal)

import Json.Decode as Json
import Html exposing (Html, Attribute, button, div, h3, input, label, p, text)
import Html.Attributes exposing (type_, style, for, id)
import Html.Events exposing (onClick, on)
import DestroyCountries.Messages exposing (Msg(..))
import DestroyCountries.Models exposing (Model)
import Styles.Main exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ button [ buttonStyle, (onClick StartSelectingCountries) ]
            [ text "Select Countries for Destruction" ]
        , if (List.length model.selectedCountries) > 0 then
            div []
                [ text ("Selected Countries for Destruction: " ++ (toString model.selectedCountries)) ]
          else
            div [] [ text "no countries selectec yet" ]
        ]


modal : Html Msg
modal =
    div []
        [ h3 [ headerStyle ]
            [ text "add a country for destruction" ]
        , div [ bodyStyle ]
            [ p [ descStyle ]
                [ text "please rememver this is the only country of its kind"
                ]
            , input [ (id "country-input"), (type_ "string"), (onInputString SelectCounty), inputStyle ] []
            , button [ buttonStyle, (onClick CancelDestruction) ] [ text "Cancel Destruction" ]
            , button [ buttonStyle, onClick DestroyCountries ] []
            ]
        ]


onInputString : (String -> msg) -> Attribute msg
onInputString tagger =
    on "input" (Json.map tagger (Json.at [ "target", "valueAsString" ] Json.string))
