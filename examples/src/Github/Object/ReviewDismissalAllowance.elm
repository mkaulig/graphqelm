module Github.Object.ReviewDismissalAllowance exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.ReviewDismissalAllowance
selection constructor =
    Object.selection constructor


{-| The actor that can dismiss.
-}
actor : SelectionSet selection Github.Union.ReviewDismissalAllowanceActor -> FieldDecoder (Maybe selection) Github.Object.ReviewDismissalAllowance
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


id : FieldDecoder String Github.Object.ReviewDismissalAllowance
id =
    Object.fieldDecoder "id" [] Decode.string


{-| Identifies the protected branch associated with the allowed user or team.
-}
protectedBranch : SelectionSet selection Github.Object.ProtectedBranch -> FieldDecoder selection Github.Object.ReviewDismissalAllowance
protectedBranch object =
    Object.selectionFieldDecoder "protectedBranch" [] object identity
