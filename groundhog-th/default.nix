{ mkDerivation, aeson, base, bytestring, containers, groundhog
, stdenv, template-haskell, text, time, unordered-containers, yaml, yaml-ghcjs ? null,
compilername ? "ghc"
}:
mkDerivation {
  pname = "groundhog-th";
  version = "0.7.1.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base bytestring containers groundhog template-haskell text
    time unordered-containers yaml
  ] ++ (if compilername == "ghcjs" then [ yaml-ghcjs ] else [ ]);
  description = "Type-safe datatype-database mapping library";
  license = stdenv.lib.licenses.bsd3;
}
