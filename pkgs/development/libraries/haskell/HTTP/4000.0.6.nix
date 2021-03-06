{ cabal, mtl, network, parsec }:

cabal.mkDerivation (self: {
  pname = "HTTP";
  version = "4000.0.6";
  sha256 = "75af1ac4dc21b10c8a1a54a33179ea822e591887bab7278360a3d6b38304d39b";
  buildDepends = [ mtl network parsec ];
  doCheck = false;
  meta = {
    homepage = "http://projects.haskell.org/http/";
    description = "A library for client-side HTTP";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
