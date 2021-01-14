with import <nixpkgs> {};
mkShell {
  name = "jupyter-shell";
  shellHook = ''
    echo "Starting Jupyter environment"
  '';
  buildInputs = [
    pandoc
    plantuml
    python38
    python38.pkgs.pipx
    zeromq
  ];
}
