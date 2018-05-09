module DestroyCountries.Messages exposing (Msg(..))


type Msg
    = NoOp
    | StartSelectingCountries
    | SelectCounty String
    | DestroyCountries
    | CancelDestruction
