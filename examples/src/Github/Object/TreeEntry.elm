module Github.Object.TreeEntry exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.TreeEntry
selection constructor =
    Object.selection constructor


{-| Entry file mode.
-}
mode : FieldDecoder Int Github.Object.TreeEntry
mode =
    Object.fieldDecoder "mode" [] Decode.int


{-| Entry file name.
-}
name : FieldDecoder String Github.Object.TreeEntry
name =
    Object.fieldDecoder "name" [] Decode.string


{-| Entry file object.
-}
object : SelectionSet selection Github.Interface.GitObject -> FieldDecoder (Maybe selection) Github.Object.TreeEntry
object object =
    Object.selectionFieldDecoder "object" [] object (identity >> Decode.maybe)


{-| Entry file Git object ID.
-}
oid : FieldDecoder String Github.Object.TreeEntry
oid =
    Object.fieldDecoder "oid" [] Decode.string


{-| The Repository the tree entry belongs to
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Object.TreeEntry
repository object =
    Object.selectionFieldDecoder "repository" [] object identity


{-| Entry file type.
-}
type_ : FieldDecoder String Github.Object.TreeEntry
type_ =
    Object.fieldDecoder "type" [] Decode.string
