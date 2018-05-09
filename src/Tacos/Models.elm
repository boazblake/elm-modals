module Tacos.Models exposing (..)


type alias Modal =
    { currentOrder : Int
    }


type alias Model =
    { modal : Maybe Modal
    , totalOrdered : Int
    }


modal : Modal
modal =
    { currentOrder = 0
    }


model : Model
model =
    { modal = Nothing
    , totalOrdered = 0
    }
