%%%----------------------------------------------------------------------
%%% File        : gen.hrl
%%% Authors     : Alkis Gotovos <el3ctrologos@hotmail.com>
%%%               Maria Christakis <christakismaria@gmail.com>
%%% Description : General header file
%%% Created     : 16 May 2010
%%%----------------------------------------------------------------------

%%%----------------------------------------------------------------------
%%% Definitions
%%%----------------------------------------------------------------------

%% Application name (atom and string).
-define(APP_ATOM, 'CED').
-define(APP_STRING, "CED").

%% Registered process names.
-define(RP_GUI, '_._gui').
-define(RP_REPLAY_SERVER, '_._replay_server').
-define(RP_REPLAY_LOGGER, '_._replay_logger').
-define(RP_SCHED, '_._sched').

%% Named ets table names.
-define(NT_ERROR, '_._error').
-define(NT_LID, '_._lid').
-define(NT_PID, '_._pid').
-define(NT_REF, '_._ref').
-define(NT_STATE, ?NT_STATE1).
-define(NT_STATE1, '_._state1').
-define(NT_STATE2, '_._state2').
-define(NT_STATE_TEMP, '_._state_temp').
-define(NT_USED, '_._used').

%% Internal error return code.
-define(RET_INTERNAL_ERROR, 1).

%% Debug macros.
-ifdef(DEBUG_LEVEL_1).
-define(debug_1(S_, L_), io:format("(D-1) " ++ S_, L_)).
-define(debug_1(S_), io:format("(D-1) " ++ S_)).
-else.
-define(debug_1(S_, L_), ok).
-define(debug_1(S_), ok).
-endif.

-ifdef(DEBUG_LEVEL_2).
-define(debug_2(S_, L_), io:format("|--(D-2) " ++ S_, L_)).
-define(debug_2(S_), io:format("|--(D-2) " ++ S_)).
-else.
-define(debug_2(S_, L_), ok).
-define(debug_2(S_), ok).
-endif.

%%%----------------------------------------------------------------------
%%% Records
%%%----------------------------------------------------------------------

%% Scheduler state
%%
%% active  : A set containing all processes ready to be scheduled.
%% blocked : A set containing all processes that cannot be scheduled next
%%          (e.g. waiting for a message on a `receive`).
%% error   : A term describing the error that occured.
%% state   : The current state of the program.
%% details : A boolean being false when running a normal run and
%%           true when running a replay and need to send detailed
%%           info to the replay_logger.
-record(context, {active  :: set(),
                  blocked :: set(),
                  error = normal :: 'normal' | 
				    error:assertion() |
				    error:exception(),
                  state   :: state:state(),
                  details :: boolean()}).

%%%----------------------------------------------------------------------
%%% Types
%%%----------------------------------------------------------------------

-type bound() :: 'infinite' | non_neg_integer().

-type context() :: #context{}.

-type file() :: file:filename().

-type options() :: [{'details', 'true'} |
                    {'files', [file()]} |
                    {'init_state', state:state()} |
                    {'preb',  bound()}].
