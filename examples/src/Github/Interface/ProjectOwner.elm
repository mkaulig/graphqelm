module Github.Interface.ProjectOwner exposing (..)

import Github.Enum.ProjectState
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


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.ProjectOwner
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.ProjectOwner) -> SelectionSet (a -> constructor) Github.Interface.ProjectOwner
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onOrganization : SelectionSet selection Github.Object.Organization -> FragmentSelectionSet selection Github.Interface.ProjectOwner
onOrganization (SelectionSet fields decoder) =
    FragmentSelectionSet "Organization" fields decoder


onRepository : SelectionSet selection Github.Object.Repository -> FragmentSelectionSet selection Github.Interface.ProjectOwner
onRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "Repository" fields decoder


id : FieldDecoder String Github.Interface.ProjectOwner
id =
    Object.fieldDecoder "id" [] Decode.string


{-| Find project by number.

  - number - The project number to find.

-}
project : { number : Int } -> SelectionSet selection Github.Object.Project -> FieldDecoder (Maybe selection) Github.Interface.ProjectOwner
project requiredArgs object =
    Object.selectionFieldDecoder "project" [ Argument.required "number" requiredArgs.number Encode.int ] object (identity >> Decode.maybe)


{-| A list of projects under the owner.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - orderBy - Ordering options for projects returned from the connection
  - search - Query to search projects by, currently only searching by name.
  - states - A list of states to filter the projects by.

-}
projects : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, orderBy : OptionalArgument Value, search : OptionalArgument String, states : OptionalArgument (List Github.Enum.ProjectState.ProjectState) } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, orderBy : OptionalArgument Value, search : OptionalArgument String, states : OptionalArgument (List Github.Enum.ProjectState.ProjectState) }) -> SelectionSet selection Github.Object.ProjectConnection -> FieldDecoder selection Github.Interface.ProjectOwner
projects fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, orderBy = Absent, search = Absent, states = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy identity, Argument.optional "search" filledInOptionals.search Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum Github.Enum.ProjectState.toString |> Encode.list) ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "projects" optionalArgs object identity


{-| The HTTP path listing owners projects
-}
projectsResourcePath : FieldDecoder String Github.Interface.ProjectOwner
projectsResourcePath =
    Object.fieldDecoder "projectsResourcePath" [] Decode.string


{-| The HTTP URL listing owners projects
-}
projectsUrl : FieldDecoder String Github.Interface.ProjectOwner
projectsUrl =
    Object.fieldDecoder "projectsUrl" [] Decode.string


{-| Can the current viewer create new projects on this owner.
-}
viewerCanCreateProjects : FieldDecoder Bool Github.Interface.ProjectOwner
viewerCanCreateProjects =
    Object.fieldDecoder "viewerCanCreateProjects" [] Decode.bool
