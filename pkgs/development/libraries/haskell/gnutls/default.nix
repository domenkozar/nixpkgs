{ cabal, gnutls, monadsTf, transformers }:

cabal.mkDerivation (self: {
  pname = "gnutls";
  version = "0.1.5";
  sha256 = "1sf6b4g0jwk1jrzjq4vwwak57lzm1zc43ggysp973q5icm6gs8wp";
  buildDepends = [ monadsTf transformers ];
  extraLibraries = [ gnutls ];
  pkgconfigDepends = [ gnutls ];
  meta = {
    homepage = "https://john-millikin.com/software/haskell-gnutls/";
    description = "Bindings for GNU libgnutls";
    license = self.stdenv.lib.licenses.gpl3;
    platforms = self.ghc.meta.platforms;
  };
})
