{ cabal, filepath }:

cabal.mkDerivation (self: {
  pname = "xdg-basedir";
  version = "0.2.2";
  sha256 = "0azlzaxp2dn4l1nr7shsxah2magk1szf6fx0mv75az00qsjw6qg4";
  buildDepends = [ filepath ];
  meta = {
    homepage = "http://github.com/willdonnelly/xdg-basedir";
    description = "A basic implementation of the XDG Base Directory specification";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
