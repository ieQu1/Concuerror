%%%----------------------------------------------------------------------
%%% File        : ticket_tests.erl
%%% Author      : Alkis Gotovos <el3ctrologos@hotmail.com>
%%%               Maria Christakis <mchrista@softlab.ntua.gr>
%%% Description : Ticket interface unit tests
%%% Created     : 25 Sep 2010
%%%----------------------------------------------------------------------

-module(ticket_tests).

-include_lib("eunit/include/eunit.hrl").

%% Spec for auto-generated test/0 function (eunit).
-spec test() -> 'ok' | {'error', term()}.

-spec get_target_test() -> 'ok'.

get_target_test() ->
    Target = {mymodule, myfunction, []},
    Files = [],
    Error = error:mock(),
    ErrorState = state:empty(),
    Ticket = ticket:new(Target, Files, Error, ErrorState),
    ?assertEqual(Target, ticket:get_target(Ticket)).

-spec get_files_test() -> 'ok'.

get_files_test() ->
    Target = {mymodule, myfunction, []},
    Files = [],
    Error = error:mock(),
    ErrorState = state:empty(),
    Ticket = ticket:new(Target, Files, Error, ErrorState),
    ?assertEqual(Files, ticket:get_files(Ticket)).

-spec get_error_test() -> 'ok'.

get_error_test() ->
    Target = {mymodule, myfunction, []},
    Files = [],
    Error = error:mock(),
    ErrorState = state:empty(),
    Ticket = ticket:new(Target, Files, Error, ErrorState),
    ?assertEqual(Error, ticket:get_error(Ticket)).

-spec get_state_test() -> 'ok'.

get_state_test() ->
    Target = {mymodule, myfunction, []},
    Files = [],
    Error = error:mock(),
    ErrorState = state:empty(),
    Ticket = ticket:new(Target, Files, Error, ErrorState),
    ?assertEqual(ErrorState, ticket:get_state(Ticket)).
