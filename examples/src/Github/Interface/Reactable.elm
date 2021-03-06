module Github.Interface.Reactable exposing (..)

import Github.Enum.ReactionContent
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
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.Reactable
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.Reactable) -> SelectionSet (a -> constructor) Github.Interface.Reactable
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onCommitComment : SelectionSet selection Github.Object.CommitComment -> FragmentSelectionSet selection Github.Interface.Reactable
onCommitComment (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitComment" fields decoder


onIssue : SelectionSet selection Github.Object.Issue -> FragmentSelectionSet selection Github.Interface.Reactable
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onIssueComment : SelectionSet selection Github.Object.IssueComment -> FragmentSelectionSet selection Github.Interface.Reactable
onIssueComment (SelectionSet fields decoder) =
    FragmentSelectionSet "IssueComment" fields decoder


onPullRequest : SelectionSet selection Github.Object.PullRequest -> FragmentSelectionSet selection Github.Interface.Reactable
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder


onPullRequestReviewComment : SelectionSet selection Github.Object.PullRequestReviewComment -> FragmentSelectionSet selection Github.Interface.Reactable
onPullRequestReviewComment (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewComment" fields decoder


id : FieldDecoder String Github.Interface.Reactable
id =
    Object.fieldDecoder "id" [] Decode.string


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet selection Github.Object.ReactionGroup -> FieldDecoder (Maybe (List selection)) Github.Interface.Reactable
reactionGroups object =
    Object.selectionFieldDecoder "reactionGroups" [] object (identity >> Decode.list >> Decode.maybe)


{-| A list of Reactions left on the Issue.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : ({ first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Value } -> { first : OptionalArgument Int, after : OptionalArgument String, last : OptionalArgument Int, before : OptionalArgument String, content : OptionalArgument Github.Enum.ReactionContent.ReactionContent, orderBy : OptionalArgument Value }) -> SelectionSet selection Github.Object.ReactionConnection -> FieldDecoder selection Github.Interface.Reactable
reactions fillInOptionals object =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "content" filledInOptionals.content (Encode.enum Github.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy identity ]
                |> List.filterMap identity
    in
    Object.selectionFieldDecoder "reactions" optionalArgs object identity


{-| Can user react to this subject
-}
viewerCanReact : FieldDecoder Bool Github.Interface.Reactable
viewerCanReact =
    Object.fieldDecoder "viewerCanReact" [] Decode.bool
