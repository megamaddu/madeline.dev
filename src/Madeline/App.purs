module Madeline.App where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import React.Basic.DOM as R
import React.Basic.Hooks (CreateComponent, component)
import React.Basic.Native as N

-- | Hook to set the navigation function
foreign import startNavigation :: EffectFn1 (String -> Effect Unit) Unit

mkApp :: CreateComponent {}
mkApp = do
  runEffectFn1 startNavigation log
  component "App" \_ -> React.do
    pure
      $ N.view
          { style: R.css { alignItems: "center", justifyContent: "center", height: "100%" }
          , children:
            [ N.text
                { style: R.css { fontSize: 42 }
                , children:
                  [ N.string "madeline.dev" ]
                }
            ]
          }
