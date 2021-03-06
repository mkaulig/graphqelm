module Github.Object.DeleteProjectColumnPayload exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.DeleteProjectColumnPayload
selection constructor =
    Object.selection constructor


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : FieldDecoder (Maybe String) Github.Object.DeleteProjectColumnPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] (Decode.string |> Decode.maybe)


{-| The deleted column ID.
-}
deletedColumnId : FieldDecoder String Github.Object.DeleteProjectColumnPayload
deletedColumnId =
    Object.fieldDecoder "deletedColumnId" [] Decode.string


{-| The project the deleted column was in.
-}
project : SelectionSet selection Github.Object.Project -> FieldDecoder selection Github.Object.DeleteProjectColumnPayload
project object =
    Object.selectionFieldDecoder "project" [] object identity
