module Main exposing (..)

import Browser
import Html exposing (Html, div, text, ul, li)


-- Define the repository structure
type alias Repository =
    { name : String
    , children : List Repository
    }


-- Example repository tree
repositoryTree : Repository
repositoryTree =
    { name = "hepastitium"
    , children =
        [ { name = "Resources", children = [] }
        , { name = "Readme", children = [] }
        , { name = "License", children = [] }
        , { name = "Code of conduct", children = [] }
        , { name = "Activity", children = [] }
        ]
    }


-- View function to render the repository tree
view : Repository -> Html msg
view repo =
    div []
        [ text repo.name
        , ul [] (List.map viewChild repo.children)
        ]


viewChild : Repository -> Html msg
viewChild repo =
    li [] [ view repo ]


main =
    Browser.sandbox { init = repositoryTree, update = \_ model -> model, view = view }
