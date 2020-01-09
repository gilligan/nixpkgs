{ stdenv, rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  pname = "broot";
  version = "0.11.2";

  src = fetchFromGitHub {
    owner = "Canop";
    repo = pname;
    rev = "v${version}";
    sha256 = "0ms9wdh3ryy8q1rpm8r2hqikanbwx7h9vqjkc70b11j6p8iicmmr";
  };

  cargoSha256 = "0w62sxdl2w1wc0fjxszpifw9jxl35nz5nsmfr6pd0lvbgm3c7vba";

  meta = with stdenv.lib; {
    description = "An interactive tree view, a fuzzy search, a balanced BFS descent and customizable commands";
    homepage = "https://dystroy.org/broot/";
    maintainers = with maintainers; [ magnetophon ];
    license = with licenses; [ mit ];
    platforms = platforms.all;
  };
}
