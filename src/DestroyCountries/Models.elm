module DestroyCountries.Models exposing (..)


type alias Modal =
    { countryToDestroy : String
    }


type alias Model =
    { modal : Maybe Modal
    , selectedCountries : List String
    }


modal : Modal
modal =
    { countryToDestroy = ""
    }


model : Model
model =
    { modal = Nothing
    , selectedCountries = [ "" ]
    }
