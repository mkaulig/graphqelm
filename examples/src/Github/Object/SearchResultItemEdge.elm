module Github.Object.SearchResultItemEdge exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.SearchResultItemEdge
selection constructor =
    Object.selection constructor


{-| A cursor for use in pagination.
-}
cursor : FieldDecoder String Github.Object.SearchResultItemEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


{-| The item at the end of the edge.
-}
node : SelectionSet selection Github.Union.SearchResultItem -> FieldDecoder (Maybe selection) Github.Object.SearchResultItemEdge
node object =
    Object.selectionFieldDecoder "node" [] object (identity >> Decode.maybe)


{-| Text matches on the result found.
-}
textMatches : SelectionSet selection Github.Object.TextMatch -> FieldDecoder (Maybe (List (Maybe selection))) Github.Object.SearchResultItemEdge
textMatches object =
    Object.selectionFieldDecoder "textMatches" [] object (identity >> Decode.maybe >> Decode.list >> Decode.maybe)
