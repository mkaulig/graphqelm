module Github.Object.ExternalIdentityScimAttributes exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ExternalIdentityScimAttributes
selection constructor =
    Object.selection constructor


{-| The userName of the SCIM identity
-}
username : FieldDecoder (Maybe String) Github.Object.ExternalIdentityScimAttributes
username =
    Object.fieldDecoder "username" [] (Decode.string |> Decode.maybe)
