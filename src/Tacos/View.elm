module Tacos.View exposing (view, modal)

import Json.Decode as Json
import Html exposing (Html, Attribute, button, div, h3, input, label, p, text)
import Html.Attributes exposing (type_, style, for, id)
import Html.Events exposing (onClick, on)
import Tacos.Messages exposing (Msg(..))
import Tacos.Models exposing (Model)
import Styles.Main exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ button [ buttonStyle, (onClick StartTacoOrder) ]
            [ text "Order tacos!" ]
        , if model.totalOrdered > 0 then
            div []
                [ text ("Number of tacos orderd: " ++ (toString model.totalOrdered)) ]
          else
            div []
                [ text "No tacos ordered yet" ]
        ]


modal : Html Msg
modal =
    div []
        [ h3 [ headerStyle ]
            [ text "How many tacos would you like?" ]
        , div [ bodyStyle ]
            [ p [ descStyle ]
                [ text "Please remember that each taco ordered carries a $1,000,000 surcharge for taxpayers." ]
            , input [ (id "order-input"), (type_ "number"), (onInputInt UpdateOrder), inputStyle ] []
            , button [ buttonStyle, (onClick CancelOrder) ]
                [ text "Cancel order" ]
            , button [ buttonStyle, (onClick PlaceOrder) ]
                [ text "Place order" ]
            ]
        ]


onInputInt : (Int -> msg) -> Attribute msg
onInputInt tagger =
    on "input" (Json.map tagger (Json.at [ "target", "valueAsNumber" ] Json.int))
