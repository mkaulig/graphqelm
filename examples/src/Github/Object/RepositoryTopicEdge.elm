module Github.Object.RepositoryTopicEdge exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.RepositoryTopicEdge
selection constructor =
    Object.selection constructor


{-| A cursor for use in pagination.
-}
cursor : FieldDecoder String Github.Object.RepositoryTopicEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


{-| The item at the end of the edge.
-}
node : SelectionSet selection Github.Object.RepositoryTopic -> FieldDecoder (Maybe selection) Github.Object.RepositoryTopicEdge
node object =
    Object.selectionFieldDecoder "node" [] object (identity >> Decode.maybe)
