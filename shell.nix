{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    jdk17
    gradle
  ];

  JAVA_HOME = "${pkgs.jdk17}";
  shellHook = ''
    alias tc='java -cp build/libs/Triangle-Tools.jar triangle.Compiler'
    alias ti='java -cp build/libs/Triangle-Tools.jar triangle.abstractMachine.Interpreter'
  '';
}
