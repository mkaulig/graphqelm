module Github.Object.ReactingUserEdge exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReactingUserEdge
selection constructor =
    Object.selection constructor


cursor : FieldDecoder String Github.Object.ReactingUserEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


node : SelectionSet selection Github.Object.User -> FieldDecoder selection Github.Object.ReactingUserEdge
node object =
    Object.selectionFieldDecoder "node" [] object identity


{-| The moment when the user made the reaction.
-}
reactedAt : FieldDecoder String Github.Object.ReactingUserEdge
reactedAt =
    Object.fieldDecoder "reactedAt" [] Decode.string
