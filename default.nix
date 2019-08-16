{ stdenv, gcc }:

stdenv.mkDerivation
{
  name="libstr";
  src=./.;
  buildInputs = [ gcc ];
  installPhase=
  ''
    mkdir -p $out
    cp -r lib/ $out/lib
  '';
}
