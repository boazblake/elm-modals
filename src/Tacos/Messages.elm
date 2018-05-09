module Tacos.Messages exposing (Msg(..))


type Msg
    = NoOp
    | StartTacoOrder
    | UpdateOrder Int
    | PlaceOrder
    | CancelOrder
