module Github.Union.IssueTimelineItem exposing (..)

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


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Union.IssueTimelineItem) -> SelectionSet constructor Github.Union.IssueTimelineItem
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onCommit : SelectionSet selection Github.Object.Commit -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onCommit (SelectionSet fields decoder) =
    FragmentSelectionSet "Commit" fields decoder


onIssueComment : SelectionSet selection Github.Object.IssueComment -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onIssueComment (SelectionSet fields decoder) =
    FragmentSelectionSet "IssueComment" fields decoder


onCrossReferencedEvent : SelectionSet selection Github.Object.CrossReferencedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onCrossReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "CrossReferencedEvent" fields decoder


onClosedEvent : SelectionSet selection Github.Object.ClosedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onClosedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ClosedEvent" fields decoder


onReopenedEvent : SelectionSet selection Github.Object.ReopenedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onReopenedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReopenedEvent" fields decoder


onSubscribedEvent : SelectionSet selection Github.Object.SubscribedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onSubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "SubscribedEvent" fields decoder


onUnsubscribedEvent : SelectionSet selection Github.Object.UnsubscribedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onUnsubscribedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnsubscribedEvent" fields decoder


onReferencedEvent : SelectionSet selection Github.Object.ReferencedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onReferencedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "ReferencedEvent" fields decoder


onAssignedEvent : SelectionSet selection Github.Object.AssignedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onAssignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "AssignedEvent" fields decoder


onUnassignedEvent : SelectionSet selection Github.Object.UnassignedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onUnassignedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnassignedEvent" fields decoder


onLabeledEvent : SelectionSet selection Github.Object.LabeledEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onLabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LabeledEvent" fields decoder


onUnlabeledEvent : SelectionSet selection Github.Object.UnlabeledEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onUnlabeledEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlabeledEvent" fields decoder


onMilestonedEvent : SelectionSet selection Github.Object.MilestonedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onMilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "MilestonedEvent" fields decoder


onDemilestonedEvent : SelectionSet selection Github.Object.DemilestonedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onDemilestonedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "DemilestonedEvent" fields decoder


onRenamedTitleEvent : SelectionSet selection Github.Object.RenamedTitleEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onRenamedTitleEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "RenamedTitleEvent" fields decoder


onLockedEvent : SelectionSet selection Github.Object.LockedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onLockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "LockedEvent" fields decoder


onUnlockedEvent : SelectionSet selection Github.Object.UnlockedEvent -> FragmentSelectionSet selection Github.Union.IssueTimelineItem
onUnlockedEvent (SelectionSet fields decoder) =
    FragmentSelectionSet "UnlockedEvent" fields decoder
