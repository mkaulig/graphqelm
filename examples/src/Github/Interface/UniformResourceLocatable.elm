module Github.Interface.UniformResourceLocatable exposing (..)

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
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Interface.UniformResourceLocatable
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Interface.UniformResourceLocatable) -> SelectionSet (a -> constructor) Github.Interface.UniformResourceLocatable
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onBot : SelectionSet selection Github.Object.Bot -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onBot (SelectionSet fields decoder) =
    FragmentSelectionSet "Bot" fields decoder


onCrossReferencedEvent : SelectionSet selection Github.Object.CrossReferencedEvent -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onCrossReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "CrossReferencedEvent" fields decoder


onIssue : SelectionSet selection Github.Object.Issue -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onMergedEvent : SelectionSet selection Github.Object.MergedEvent -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onMergedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MergedEvent" fields decoder


onMilestone : SelectionSet selection Github.Object.Milestone -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onMilestone (SelectionSet fields decoder) =
    FragmentSelectionSet "Milestone" fields decoder


onOrganization : SelectionSet selection Github.Object.Organization -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onOrganization (SelectionSet fields decoder) =
    FragmentSelectionSet "Organization" fields decoder


onPullRequest : SelectionSet selection Github.Object.PullRequest -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder


onPullRequestCommit : SelectionSet selection Github.Object.PullRequestCommit -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onPullRequestCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestCommit" fields decoder


onRelease : SelectionSet selection Github.Object.Release -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onRelease (SelectionSet fields decoder) =
    FragmentSelectionSet "Release" fields decoder


onRepository : SelectionSet selection Github.Object.Repository -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onRepository (SelectionSet fields decoder) =
    FragmentSelectionSet "Repository" fields decoder


onRepositoryTopic : SelectionSet selection Github.Object.RepositoryTopic -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onRepositoryTopic (SelectionSet fields decoder) =
    FragmentSelectionSet "RepositoryTopic" fields decoder


onReviewDismissedEvent : SelectionSet selection Github.Object.ReviewDismissedEvent -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onReviewDismissedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewDismissedEvent" fields decoder


onUser : SelectionSet selection Github.Object.User -> FragmentSelectionSet selection Github.Interface.UniformResourceLocatable
onUser (SelectionSet fields decoder) =
    FragmentSelectionSet "User" fields decoder


{-| The HTML path to this resource.
-}
resourcePath : FieldDecoder String Github.Interface.UniformResourceLocatable
resourcePath =
    Object.fieldDecoder "resourcePath" [] Decode.string


{-| The URL to this resource.
-}
url : FieldDecoder String Github.Interface.UniformResourceLocatable
url =
    Object.fieldDecoder "url" [] Decode.string
