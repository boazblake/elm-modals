module Messages exposing (..)

import Tacos.Messages as Tacos
import DestroyCountries.Messages as DestroyCountries
import DestroyWorld.Messages as DestroyWorld


type Msg
    = NoOp
    | ResetModalFocus
    | UpdateTacos Tacos.Msg
    | UpdateDestroyCountry DestroyCountries.Msg
    | UpdateDestroyWorld DestroyWorld.Msg
