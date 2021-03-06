{ cabal, ListLike, time, uuInterleaved }:

cabal.mkDerivation (self: {
  pname = "uu-parsinglib";
  version = "2.8.1.1";
  sha256 = "1mz8sni7mj85b0ih0y1ld7lcj74iq5z2xi1lbwwndpqra9ahc5s6";
  buildDepends = [ ListLike time uuInterleaved ];
  meta = {
    homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
    description = "Fast, online, error-correcting, monadic, applicative, merging, permuting, idiomatic parser combinators";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
