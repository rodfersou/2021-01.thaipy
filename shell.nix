with import <nixpkgs> {};
mkShell {
  name = "jupyter-shell";
  shellHook = ''
    echo "Starting Jupyter environment"
  '';
  buildInputs = [
    pandoc
    python38
    python38.pkgs.pipx
    python38.pkgs.pyzmq
  ];
}
