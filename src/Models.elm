module Models exposing (..)

import Tacos.Models as Tacos
import DestroyWorld.Models as DestroyWorld
import DestroyCountries.Models as DestroyCountries


type Modal
    = TacoModal Tacos.Modal
    | WorldModel DestroyWorld.Modal
    | DestroyCountries DestroyCountries.Modal


type alias Model =
    { isWorldDestroyed : Bool
    , tacos : Tacos.Model
    , destroyWorld : DestroyWorld.Model
    , destroyCountries : DestroyCountries.Model
    , modal : Maybe Modal
    }


model : Model
model =
    { isWorldDestroyed = False
    , tacos = Tacos.model
    , destroyWorld = DestroyWorld.model
    , destroyCountries = DestroyCountries.model
    , modal = Nothing
    }
