{-# LANGUAGE OverloadedStrings #-}

import Text.Blaze.Html5 as H hiding (main)
import Text.Blaze.Html5.Attributes as A
import Text.Blaze.Renderer.Pretty

html' = do
  docTypeHtml $ do
    H.head $ do
        meta ! charset "utf-8"
        meta ! httpEquiv "x-ua-compatible" ! content "ie=edge"
        H.title mempty
        meta ! name "description" ! content ""
        meta ! name "viewport" ! content "width=device-width, initial-scale=1, shrink-to-fit=no"
        link ! rel "manifest" ! href "site.webmanifest"
        link ! rel "apple-touch-icon" ! href "icon.png"
        link ! rel "stylesheet" ! href "css/normalize.css"
        link ! rel "stylesheet" ! href "css/main.css"
    body $ do
        p "Hello world! This is HTML5 Boilerplate."
        script ! src "js/plugins.js" $ mempty
        script ! src "js/main.js" $ mempty
        script "console.log(\"worked\");"

main = putStrLn $ renderHtml html'
