module Games

# Packages

# Type aliases #
typealias PureAction Integer
typealias MixedAction{T<:Real} Vector{T}
typealias Action{T<:Real} Union{PureAction,MixedAction{T}}
typealias ActionProfile{T<:Real,N} NTuple{N,Action{T}}
typealias PureActionProfile{N} NTuple{N, PureAction}

# package code goes here
include("normal_form_game.jl")
include("nash_equilibrium.jl")


export Player, NormalFormGame,  # Types

       # Type aliases
       Action, MixedAction, PureAction, ActionProfile,

       # Normal form game functions
 	   best_response, best_responses, is_best_response, payoff_vector,
       is_nash, pure2mixed, pure_strategy_NE,

       # General functions
       num_players, num_actions, num_opponents

end # module
