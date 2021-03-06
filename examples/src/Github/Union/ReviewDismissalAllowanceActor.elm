module Github.Union.ReviewDismissalAllowanceActor exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Union.ReviewDismissalAllowanceActor) -> SelectionSet constructor Github.Union.ReviewDismissalAllowanceActor
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onUser : SelectionSet selection Github.Object.User -> FragmentSelectionSet selection Github.Union.ReviewDismissalAllowanceActor
onUser (SelectionSet fields decoder) =
    FragmentSelectionSet "User" fields decoder


onTeam : SelectionSet selection Github.Object.Team -> FragmentSelectionSet selection Github.Union.ReviewDismissalAllowanceActor
onTeam (SelectionSet fields decoder) =
    FragmentSelectionSet "Team" fields decoder
