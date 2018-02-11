module React.Basic
  ( react
  , module React.Basic.DOM
  , module React.Basic.Types
  ) where

import Prelude

import Control.Monad.Eff (Eff, kind Effect)
import Data.Function.Uncurried (Fn2, Fn3, Fn5, mkFn2, mkFn3, mkFn5)
import React.Basic.DOM as React.Basic.DOM
import React.Basic.Types (CSS, EventHandler, JSX, ReactComponent, ReactFX)
import React.Basic.Types as React.Basic.Types

foreign import react_
  :: forall eff props state error errorInfo
   . { initialState
         :: props
         -> state
     , onLoad
         :: Fn3
            props
            state
            ((state -> state) -> Eff eff Unit)
            (Eff eff Unit)
     , onUnload
         :: Fn2
            props
            state
            (Eff eff Unit)
     , onError
         :: Fn5
            props
            state
            error
            errorInfo
            ((state -> state) -> Eff eff Unit)
            (Eff eff Unit)
     , render
         :: Fn3
            props
            state
            ((state -> state) -> Eff eff Unit)
            JSX
     }
  -> ReactComponent props

-- | Create a React component from a _specification_ of that component.
-- |
-- | A _specification_ consists of a state type, an initial value for that state,
-- | and a rendering function which takes a value of that state type, additional
-- | _props_ (which will be passed in by the user) and a state update function.
-- |
-- | The rendering function should return a value of type `JSX`, which can be
-- | constructed using the helper functions provided by the `React.Basic.DOM`
-- | module (and re-exported here).
react
  :: forall eff props state error errorInfo
   . { initialState
         :: props
         -> state
     , onLoad
         :: props
         -> state
         -> ((state -> state) -> Eff eff Unit)
         -> Eff eff Unit
     , onUnload
         :: props
         -> state
         -> Eff eff Unit
     , onError
         :: props
         -> state
         -> error
         -> errorInfo
         -> ((state -> state) -> Eff eff Unit)
         -> Eff eff Unit
     , render
         :: props
         -> state
         -> ((state -> state) -> Eff eff Unit)
         -> JSX
     }
  -> ReactComponent props
react { initialState, onLoad, onUnload, onError, render } = react_
  { initialState
  , onLoad: mkFn3 onLoad
  , onUnload: mkFn2 onUnload
  , onError: mkFn5 onError
  , render: mkFn3 render
  }
