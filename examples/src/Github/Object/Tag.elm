module Github.Object.Tag exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.Tag
selection constructor =
    Object.selection constructor


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : FieldDecoder String Github.Object.Tag
abbreviatedOid =
    Object.fieldDecoder "abbreviatedOid" [] Decode.string


{-| The HTTP path for this Git object
-}
commitResourcePath : FieldDecoder String Github.Object.Tag
commitResourcePath =
    Object.fieldDecoder "commitResourcePath" [] Decode.string


{-| The HTTP URL for this Git object
-}
commitUrl : FieldDecoder String Github.Object.Tag
commitUrl =
    Object.fieldDecoder "commitUrl" [] Decode.string


id : FieldDecoder String Github.Object.Tag
id =
    Object.fieldDecoder "id" [] Decode.string


{-| The Git tag message.
-}
message : FieldDecoder (Maybe String) Github.Object.Tag
message =
    Object.fieldDecoder "message" [] (Decode.string |> Decode.maybe)


{-| The Git tag name.
-}
name : FieldDecoder String Github.Object.Tag
name =
    Object.fieldDecoder "name" [] Decode.string


{-| The Git object ID
-}
oid : FieldDecoder String Github.Object.Tag
oid =
    Object.fieldDecoder "oid" [] Decode.string


{-| The Repository the Git object belongs to
-}
repository : SelectionSet selection Github.Object.Repository -> FieldDecoder selection Github.Object.Tag
repository object =
    Object.selectionFieldDecoder "repository" [] object identity


{-| Details about the tag author.
-}
tagger : SelectionSet selection Github.Object.GitActor -> FieldDecoder (Maybe selection) Github.Object.Tag
tagger object =
    Object.selectionFieldDecoder "tagger" [] object (identity >> Decode.maybe)


{-| The Git object the tag points to.
-}
target : SelectionSet selection Github.Interface.GitObject -> FieldDecoder selection Github.Object.Tag
target object =
    Object.selectionFieldDecoder "target" [] object identity
