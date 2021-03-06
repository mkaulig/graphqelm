module Github.Mutation exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Operation exposing (RootMutation)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


{-| Select fields to build up a top-level mutation. The request can be sent with
functions from `Graphqelm.Http`.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) RootMutation
selection constructor =
    Object.selection constructor


{-| Applies a suggested topic to the repository.
-}
acceptTopicSuggestion : { input : Value } -> SelectionSet selection Github.Object.AcceptTopicSuggestionPayload -> FieldDecoder (Maybe selection) RootMutation
acceptTopicSuggestion requiredArgs object =
    Object.selectionFieldDecoder "acceptTopicSuggestion" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Adds a comment to an Issue or Pull Request.
-}
addComment : { input : Value } -> SelectionSet selection Github.Object.AddCommentPayload -> FieldDecoder (Maybe selection) RootMutation
addComment requiredArgs object =
    Object.selectionFieldDecoder "addComment" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Adds a card to a ProjectColumn. Either `contentId` or `note` must be provided but **not** both.
-}
addProjectCard : { input : Value } -> SelectionSet selection Github.Object.AddProjectCardPayload -> FieldDecoder (Maybe selection) RootMutation
addProjectCard requiredArgs object =
    Object.selectionFieldDecoder "addProjectCard" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Adds a column to a Project.
-}
addProjectColumn : { input : Value } -> SelectionSet selection Github.Object.AddProjectColumnPayload -> FieldDecoder (Maybe selection) RootMutation
addProjectColumn requiredArgs object =
    Object.selectionFieldDecoder "addProjectColumn" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Adds a review to a Pull Request.
-}
addPullRequestReview : { input : Value } -> SelectionSet selection Github.Object.AddPullRequestReviewPayload -> FieldDecoder (Maybe selection) RootMutation
addPullRequestReview requiredArgs object =
    Object.selectionFieldDecoder "addPullRequestReview" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Adds a comment to a review.
-}
addPullRequestReviewComment : { input : Value } -> SelectionSet selection Github.Object.AddPullRequestReviewCommentPayload -> FieldDecoder (Maybe selection) RootMutation
addPullRequestReviewComment requiredArgs object =
    Object.selectionFieldDecoder "addPullRequestReviewComment" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Adds a reaction to a subject.
-}
addReaction : { input : Value } -> SelectionSet selection Github.Object.AddReactionPayload -> FieldDecoder (Maybe selection) RootMutation
addReaction requiredArgs object =
    Object.selectionFieldDecoder "addReaction" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Adds a star to a Starrable.
-}
addStar : { input : Value } -> SelectionSet selection Github.Object.AddStarPayload -> FieldDecoder (Maybe selection) RootMutation
addStar requiredArgs object =
    Object.selectionFieldDecoder "addStar" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Creates a new project.
-}
createProject : { input : Value } -> SelectionSet selection Github.Object.CreateProjectPayload -> FieldDecoder (Maybe selection) RootMutation
createProject requiredArgs object =
    Object.selectionFieldDecoder "createProject" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Rejects a suggested topic for the repository.
-}
declineTopicSuggestion : { input : Value } -> SelectionSet selection Github.Object.DeclineTopicSuggestionPayload -> FieldDecoder (Maybe selection) RootMutation
declineTopicSuggestion requiredArgs object =
    Object.selectionFieldDecoder "declineTopicSuggestion" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Deletes a project.
-}
deleteProject : { input : Value } -> SelectionSet selection Github.Object.DeleteProjectPayload -> FieldDecoder (Maybe selection) RootMutation
deleteProject requiredArgs object =
    Object.selectionFieldDecoder "deleteProject" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Deletes a project card.
-}
deleteProjectCard : { input : Value } -> SelectionSet selection Github.Object.DeleteProjectCardPayload -> FieldDecoder (Maybe selection) RootMutation
deleteProjectCard requiredArgs object =
    Object.selectionFieldDecoder "deleteProjectCard" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Deletes a project column.
-}
deleteProjectColumn : { input : Value } -> SelectionSet selection Github.Object.DeleteProjectColumnPayload -> FieldDecoder (Maybe selection) RootMutation
deleteProjectColumn requiredArgs object =
    Object.selectionFieldDecoder "deleteProjectColumn" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Deletes a pull request review.
-}
deletePullRequestReview : { input : Value } -> SelectionSet selection Github.Object.DeletePullRequestReviewPayload -> FieldDecoder (Maybe selection) RootMutation
deletePullRequestReview requiredArgs object =
    Object.selectionFieldDecoder "deletePullRequestReview" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Dismisses an approved or rejected pull request review.
-}
dismissPullRequestReview : { input : Value } -> SelectionSet selection Github.Object.DismissPullRequestReviewPayload -> FieldDecoder (Maybe selection) RootMutation
dismissPullRequestReview requiredArgs object =
    Object.selectionFieldDecoder "dismissPullRequestReview" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Moves a project card to another place.
-}
moveProjectCard : { input : Value } -> SelectionSet selection Github.Object.MoveProjectCardPayload -> FieldDecoder (Maybe selection) RootMutation
moveProjectCard requiredArgs object =
    Object.selectionFieldDecoder "moveProjectCard" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Moves a project column to another place.
-}
moveProjectColumn : { input : Value } -> SelectionSet selection Github.Object.MoveProjectColumnPayload -> FieldDecoder (Maybe selection) RootMutation
moveProjectColumn requiredArgs object =
    Object.selectionFieldDecoder "moveProjectColumn" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Removes outside collaborator from all repositories in an organization.
-}
removeOutsideCollaborator : { input : Value } -> SelectionSet selection Github.Object.RemoveOutsideCollaboratorPayload -> FieldDecoder (Maybe selection) RootMutation
removeOutsideCollaborator requiredArgs object =
    Object.selectionFieldDecoder "removeOutsideCollaborator" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Removes a reaction from a subject.
-}
removeReaction : { input : Value } -> SelectionSet selection Github.Object.RemoveReactionPayload -> FieldDecoder (Maybe selection) RootMutation
removeReaction requiredArgs object =
    Object.selectionFieldDecoder "removeReaction" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Removes a star from a Starrable.
-}
removeStar : { input : Value } -> SelectionSet selection Github.Object.RemoveStarPayload -> FieldDecoder (Maybe selection) RootMutation
removeStar requiredArgs object =
    Object.selectionFieldDecoder "removeStar" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Set review requests on a pull request.
-}
requestReviews : { input : Value } -> SelectionSet selection Github.Object.RequestReviewsPayload -> FieldDecoder (Maybe selection) RootMutation
requestReviews requiredArgs object =
    Object.selectionFieldDecoder "requestReviews" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Submits a pending pull request review.
-}
submitPullRequestReview : { input : Value } -> SelectionSet selection Github.Object.SubmitPullRequestReviewPayload -> FieldDecoder (Maybe selection) RootMutation
submitPullRequestReview requiredArgs object =
    Object.selectionFieldDecoder "submitPullRequestReview" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Updates an existing project.
-}
updateProject : { input : Value } -> SelectionSet selection Github.Object.UpdateProjectPayload -> FieldDecoder (Maybe selection) RootMutation
updateProject requiredArgs object =
    Object.selectionFieldDecoder "updateProject" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Updates an existing project card.
-}
updateProjectCard : { input : Value } -> SelectionSet selection Github.Object.UpdateProjectCardPayload -> FieldDecoder (Maybe selection) RootMutation
updateProjectCard requiredArgs object =
    Object.selectionFieldDecoder "updateProjectCard" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Updates an existing project column.
-}
updateProjectColumn : { input : Value } -> SelectionSet selection Github.Object.UpdateProjectColumnPayload -> FieldDecoder (Maybe selection) RootMutation
updateProjectColumn requiredArgs object =
    Object.selectionFieldDecoder "updateProjectColumn" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Updates the body of a pull request review.
-}
updatePullRequestReview : { input : Value } -> SelectionSet selection Github.Object.UpdatePullRequestReviewPayload -> FieldDecoder (Maybe selection) RootMutation
updatePullRequestReview requiredArgs object =
    Object.selectionFieldDecoder "updatePullRequestReview" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Updates a pull request review comment.
-}
updatePullRequestReviewComment : { input : Value } -> SelectionSet selection Github.Object.UpdatePullRequestReviewCommentPayload -> FieldDecoder (Maybe selection) RootMutation
updatePullRequestReviewComment requiredArgs object =
    Object.selectionFieldDecoder "updatePullRequestReviewComment" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Updates viewers repository subscription state.
-}
updateSubscription : { input : Value } -> SelectionSet selection Github.Object.UpdateSubscriptionPayload -> FieldDecoder (Maybe selection) RootMutation
updateSubscription requiredArgs object =
    Object.selectionFieldDecoder "updateSubscription" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)


{-| Replaces the repository's topics with the given topics.
-}
updateTopics : { input : Value } -> SelectionSet selection Github.Object.UpdateTopicsPayload -> FieldDecoder (Maybe selection) RootMutation
updateTopics requiredArgs object =
    Object.selectionFieldDecoder "updateTopics" [ Argument.required "input" requiredArgs.input identity ] object (identity >> Decode.maybe)
