{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = [
    pkgs.elixir_1_15
    pkgs.erlang
    pkgs.hex
    pkgs.rebar
    pkgs.rebar3
  ];

  shellHook = ''
    export MIX_HOME=$HOME/.mix
    export MIX_ENV=dev
    export HEX_HOME=$HOME/.hex
  '';
}
