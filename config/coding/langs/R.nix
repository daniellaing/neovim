{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "R-nvim";
      src = pkgs.fetchFromGitHub {
        owner = "R-nvim";
        repo = "R.nvim";
        rev = "v0.1.0";
        hash = "sha256-TMcnmMkMsB0lNAAcVAC1751pnV44xz2BCMLGcMbs8Xs=";
      };
    })
  ];
}
