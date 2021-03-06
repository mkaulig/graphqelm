module Github.Object.Tree exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Tree
selection constructor =
    Object.selection constructor


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : FieldDecoder String Github.Object.Tree
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| The HTTP path for this Git object
-}
commitResourcePath : FieldDecoder String Github.Object.Tree
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] Decode.string


{-| The HTTP URL for this Git object
-}
commitUrl : FieldDecoder String Github.Object.Tree
commitUrl =
    Object.fieldDecoder "commitUrl" [] Decode.string


{-| A list of tree entries.
-}
entries : SelectionSet selection Github.Object.TreeEntry -> FieldDecoder (Maybe (List selection)) Github.Object.Tree
entries object =
    Object.selectionFieldDecoder "entries" [] object (identity >> Decode.list >> Decode.maybe)


id : FieldDecoder String Github.Object.Tree
id =
    Object.fieldDecoder "id" [] Decode.string


{-| The Git object ID
-}
oid : FieldDecoder String Github.Object.Tree
oid =
    Object.fieldDecoder "oid" [] Decode.string


{-| The Repository the Git object belongs to
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Object.Tree
repository object =
    Object.selectionFieldDecoder "repository" [] object identity
