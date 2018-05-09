module DestroyWorld.Models exposing (..)


type alias Modal =
    { destroyWorld : Bool
    }


type alias Model =
    { modal : Maybe Modal
    , isWorldDestroyed : Bool
    }


modal : Modal
modal =
    { destroyWorld = False
    }


model : Model
model =
    { modal = Nothing
    , isWorldDestroyed = False
    }
