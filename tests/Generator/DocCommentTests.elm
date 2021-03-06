module Generator.DocCommentTests exposing (all)

import Expect
import Graphqelm.Generator.DocComment as DocComment
import Graphqelm.Parser.FieldName exposing (fieldName)
import Graphqelm.Parser.Scalar as Scalar exposing (Scalar)
import Graphqelm.Parser.Type as Type exposing (TypeDefinition, TypeReference)
import Test exposing (Test, describe, test)


all : Test
all =
    describe "doc comment generator"
        [ test "field with no args" <|
            \() ->
                { name = fieldName "human"
                , description = Just "A human in the star wars universe."
                , typeRef = Type.TypeReference (Type.InterfaceRef "Human") Type.NonNullable
                , args = []
                }
                    |> DocComment.generate
                    |> Expect.equal """{-| A human in the star wars universe.
-}
"""
        , test "field with arg" <|
            \() ->
                { name = fieldName "human"
                , description = Just "A human in the star wars universe."
                , typeRef = Type.TypeReference (Type.InterfaceRef "Human") Type.NonNullable
                , args =
                    [ { name = fieldName "id"
                      , description = Just "The human's id."
                      , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.NonNullable
                      }
                    ]
                }
                    |> DocComment.generate
                    |> Expect.equal """{-| A human in the star wars universe.

  - id - The human's id.

-}
"""
        , test "field with arg with no description" <|
            \() ->
                { name = fieldName "human"
                , description = Just "A human in the star wars universe."
                , typeRef = Type.TypeReference (Type.InterfaceRef "Human") Type.NonNullable
                , args =
                    [ { name = fieldName "id"
                      , description = Nothing
                      , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.NonNullable
                      }
                    ]
                }
                    |> DocComment.generate
                    |> Expect.equal """{-| A human in the star wars universe.
-}
"""
        , test "field with no field description but with arg description" <|
            \() ->
                { name = fieldName "human"
                , description = Nothing
                , typeRef = Type.TypeReference (Type.InterfaceRef "Human") Type.NonNullable
                , args =
                    [ { name = fieldName "id"
                      , description = Just "The human's id."
                      , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.NonNullable
                      }
                    ]
                }
                    |> DocComment.generate
                    |> Expect.equal """{-|

  - id - The human's id.

-}
"""
        ]
