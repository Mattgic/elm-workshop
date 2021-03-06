module Step04.Solution.ResultPage exposing (..)

import Html exposing (Html, a, beginnerProgram, div, h1, iframe, p, text)
import Html.Attributes exposing (class, href, id, src, style)


comment : Int -> String
comment score =
    if score <= 3 then
        "Keep going, I'm sure you can do better!"
    else
        "Congrats, this is really good!"


resultPage : Int -> Html msg
resultPage score =
    div [ class "score" ]
        [ h1 [] [ text ("Your score: " ++ (toString score) ++ " / 5") ]
        , a [ class "btn btn-primary", href "#" ] [ text "Replay" ]
        , p [] [ text (comment score) ]
        ]
