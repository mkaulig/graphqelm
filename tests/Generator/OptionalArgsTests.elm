module Generator.OptionalArgsTests exposing (all)

import Expect
import Graphqelm.Generator.OptionalArgs as OptionalArgs
import Graphqelm.Parser.FieldName exposing (fieldName)
import Graphqelm.Parser.Scalar as Scalar
import Graphqelm.Parser.Type as Type
import Test exposing (Test, describe, test)


all : Test
all =
    describe "optional args generator"
        [ test "no args" <|
            \() ->
                []
                    |> OptionalArgs.generate [ "Api" ]
                    |> Expect.equal Nothing
        , test "no optional args, only required" <|
            \() ->
                [ { name = fieldName "id"
                  , description = Nothing
                  , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.NonNullable
                  }
                ]
                    |> OptionalArgs.generate [ "Api" ]
                    |> Expect.equal Nothing
        , test "with an optional string arg" <|
            \() ->
                [ { name = fieldName "contains"
                  , description = Nothing
                  , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.Nullable
                  }
                ]
                    |> OptionalArgs.generate [ "Api" ]
                    |> Expect.equal
                        (Just
                            { annotatedArg =
                                { annotation = """({ contains : OptionalArgument String } -> { contains : OptionalArgument String })"""
                                , arg = "fillInOptionals"
                                }
                            , letBindings =
                                [ "filledInOptionals" => "fillInOptionals { contains = Absent }"
                                , "optionalArgs" => """[ Argument.optional "contains" filledInOptionals.contains (Encode.string) ]
                |> List.filterMap identity"""
                                ]
                            }
                        )
        , test "with multiple optional string args" <|
            \() ->
                [ { name = fieldName "id"
                  , description = Nothing
                  , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.Nullable
                  }
                , { name = fieldName "contains"
                  , description = Nothing
                  , typeRef = Type.TypeReference (Type.Scalar Scalar.String) Type.Nullable
                  }
                ]
                    |> OptionalArgs.generate [ "Api" ]
                    |> Expect.equal
                        (Just
                            { annotatedArg =
                                { annotation = "({ id : OptionalArgument String, contains : OptionalArgument String } -> { id : OptionalArgument String, contains : OptionalArgument String })"
                                , arg = "fillInOptionals"
                                }
                            , letBindings =
                                [ "filledInOptionals" => "fillInOptionals { id = Absent, contains = Absent }"
                                , "optionalArgs" => """[ Argument.optional "id" filledInOptionals.id (Encode.string), Argument.optional "contains" filledInOptionals.contains (Encode.string) ]
                |> List.filterMap identity"""
                                ]
                            }
                        )
        , test "with an optional int arg" <|
            \() ->
                [ { name = fieldName "first"
                  , description = Nothing
                  , typeRef = Type.TypeReference (Type.Scalar Scalar.Int) Type.Nullable
                  }
                ]
                    |> OptionalArgs.generate [ "Api" ]
                    |> Expect.equal
                        (Just
                            { annotatedArg =
                                { annotation = """({ first : OptionalArgument Int } -> { first : OptionalArgument Int })"""
                                , arg = "fillInOptionals"
                                }
                            , letBindings =
                                [ "filledInOptionals" => "fillInOptionals { first = Absent }"
                                , "optionalArgs" => """[ Argument.optional "first" filledInOptionals.first (Encode.int) ]
                |> List.filterMap identity"""
                                ]
                            }
                        )
        , test "with an optional enum arg" <|
            \() ->
                [ { name = fieldName "episode"
                  , description = Nothing
                  , typeRef = Type.TypeReference (Type.EnumRef "Episode") Type.Nullable
                  }
                ]
                    |> OptionalArgs.generate [ "Api" ]
                    |> Expect.equal
                        (Just
                            { annotatedArg =
                                { annotation = """({ episode : OptionalArgument Api.Enum.Episode.Episode } -> { episode : OptionalArgument Api.Enum.Episode.Episode })"""
                                , arg = "fillInOptionals"
                                }
                            , letBindings =
                                [ "filledInOptionals" => "fillInOptionals { episode = Absent }"
                                , "optionalArgs" => """[ Argument.optional "episode" filledInOptionals.episode ((Encode.enum Api.Enum.Episode.toString)) ]
                |> List.filterMap identity"""
                                ]
                            }
                        )
        ]


(=>) : a -> b -> ( a, b )
(=>) =
    (,)
