module Views.Main exposing (view)

import Html exposing (Html, Attribute, section, button, input, fieldset, label, h2, p, div, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick)
import Messages exposing (..)
import Tacos.Messages as Tacos exposing (..)
import DestroyCountries.Messages as DestroyCountries exposing (..)
import DestroyWorld.Messages as DestroyWorld exposing (..)
import Models exposing (Model)
import Styles.Main exposing (..)


view : Model -> Html Messages.Msg
view model =
    div [ mainBodyStyle ]
        [ h2 []
            [ text "What would you like to do today?"
            ]
        , fieldset [ mainContentStyle ]
            [ label []
                [ input
                    [ type_ "radio"
                    , onClick
                        (UpdateTacos Tacos.StartTacoOrder)
                    ]
                    []
                , text "ORDER TACOS"
                ]
            , label []
                [ input
                    [ type_ "radio"
                    , onClick
                        (UpdateDestroyCountry DestroyCountries.StartSelectingCountries)
                    ]
                    []
                , text "DESTROY COUNTRIES"
                ]
            , label []
                [ input
                    [ type_ "radio"
                    , onClick
                        (UpdateDestroyWorld DestroyWorld.ToDestroyWorld)
                    ]
                    []
                , text "DESTROY WORLD"
                ]
            ]
        , section [] [ text (toString model) ]
        ]
