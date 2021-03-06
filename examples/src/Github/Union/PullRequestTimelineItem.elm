module Github.Union.PullRequestTimelineItem exposing (..)

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


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Union.PullRequestTimelineItem) -> SelectionSet constructor Github.Union.PullRequestTimelineItem
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onCommit : SelectionSet selection Github.Object.Commit -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "Commit" fields decoder


onCommitCommentThread : SelectionSet selection Github.Object.CommitCommentThread -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onCommitCommentThread (SelectionSet fields decoder) =
    FragmentSelectionSet "CommitCommentThread" fields decoder


onPullRequestReview : SelectionSet selection Github.Object.PullRequestReview -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onPullRequestReview (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReview" fields decoder


onPullRequestReviewThread : SelectionSet selection Github.Object.PullRequestReviewThread -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onPullRequestReviewThread (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewThread" fields decoder


onPullRequestReviewComment : SelectionSet selection Github.Object.PullRequestReviewComment -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onPullRequestReviewComment (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequestReviewComment" fields decoder


onIssueComment : SelectionSet selection Github.Object.IssueComment -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onIssueComment (SelectionSet fields decoder) =
    FragmentSelectionSet "IssueComment" fields decoder


onClosedEvent : SelectionSet selection Github.Object.ClosedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onClosedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ClosedEvent" fields decoder


onReopenedEvent : SelectionSet selection Github.Object.ReopenedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onReopenedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReopenedEvent" fields decoder


onSubscribedEvent : SelectionSet selection Github.Object.SubscribedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onSubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "SubscribedEvent" fields decoder


onUnsubscribedEvent : SelectionSet selection Github.Object.UnsubscribedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onUnsubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnsubscribedEvent" fields decoder


onMergedEvent : SelectionSet selection Github.Object.MergedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onMergedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MergedEvent" fields decoder


onReferencedEvent : SelectionSet selection Github.Object.ReferencedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReferencedEvent" fields decoder


onCrossReferencedEvent : SelectionSet selection Github.Object.CrossReferencedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onCrossReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "CrossReferencedEvent" fields decoder


onAssignedEvent : SelectionSet selection Github.Object.AssignedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onAssignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "AssignedEvent" fields decoder


onUnassignedEvent : SelectionSet selection Github.Object.UnassignedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onUnassignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnassignedEvent" fields decoder


onLabeledEvent : SelectionSet selection Github.Object.LabeledEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onLabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LabeledEvent" fields decoder


onUnlabeledEvent : SelectionSet selection Github.Object.UnlabeledEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onUnlabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlabeledEvent" fields decoder


onMilestonedEvent : SelectionSet selection Github.Object.MilestonedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onMilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MilestonedEvent" fields decoder


onDemilestonedEvent : SelectionSet selection Github.Object.DemilestonedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onDemilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DemilestonedEvent" fields decoder


onRenamedTitleEvent : SelectionSet selection Github.Object.RenamedTitleEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onRenamedTitleEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "RenamedTitleEvent" fields decoder


onLockedEvent : SelectionSet selection Github.Object.LockedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onLockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LockedEvent" fields decoder


onUnlockedEvent : SelectionSet selection Github.Object.UnlockedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onUnlockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlockedEvent" fields decoder


onDeployedEvent : SelectionSet selection Github.Object.DeployedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onDeployedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DeployedEvent" fields decoder


onHeadRefDeletedEvent : SelectionSet selection Github.Object.HeadRefDeletedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onHeadRefDeletedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefDeletedEvent" fields decoder


onHeadRefRestoredEvent : SelectionSet selection Github.Object.HeadRefRestoredEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onHeadRefRestoredEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefRestoredEvent" fields decoder


onHeadRefForcePushedEvent : SelectionSet selection Github.Object.HeadRefForcePushedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onHeadRefForcePushedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "HeadRefForcePushedEvent" fields decoder


onBaseRefForcePushedEvent : SelectionSet selection Github.Object.BaseRefForcePushedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onBaseRefForcePushedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "BaseRefForcePushedEvent" fields decoder


onReviewRequestedEvent : SelectionSet selection Github.Object.ReviewRequestedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onReviewRequestedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequestedEvent" fields decoder


onReviewRequestRemovedEvent : SelectionSet selection Github.Object.ReviewRequestRemovedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onReviewRequestRemovedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewRequestRemovedEvent" fields decoder


onReviewDismissedEvent : SelectionSet selection Github.Object.ReviewDismissedEvent -> FragmentSelectionSet selection Github.Union.PullRequestTimelineItem
onReviewDismissedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReviewDismissedEvent" fields decoder
