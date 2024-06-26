{ stdenvNoCC
, lib

, espresso
, circt

, elaborateConfigJson
, elaborator
, configName
, target
, use-binder ? false
}:

assert lib.assertMsg
  (lib.elem target [ "ip" "ipemu" "subsystem" ])
  "Unknown elaborate target ${target}";

let
  elaborateArgs = lib.filter (s: s != "") [
    "--ip-config"
    # Can't use `toString` here, or due to some shell escape issue, Java nio cannot find the path
    "${elaborateConfigJson}"
    "--target-dir"
    (if use-binder then (placeholder "out") else "elaborate")
    (lib.optionalString (use-binder) "--binder-mlirbc-out")
    (lib.optionalString (use-binder) "${target}-${configName}")
  ];
in
stdenvNoCC.mkDerivation {
  name = "t1-${target}-${configName}-mlirbc";

  nativeBuildInputs = [ espresso circt ];

  passthru = {
    elaborateTarget = target;
    elaborateConfig = configName;
  };

  buildCommand = ''
    mkdir -p elaborate $out

    ${elaborator}/bin/elaborator ${target} ${lib.escapeShellArgs elaborateArgs}
  '' + lib.optionalString (!use-binder) ''
    firtool elaborate/*.fir \
      --annotation-file elaborate/*.anno.json \
      -O=debug \
      --preserve-values=named \
      --output-annotation-file=mfc.anno.json \
      --lowering-options=verifLabels \
      --emit-bytecode \
      --parse-only \
      -o $out/${target}-${configName}.mlirbc
  '';

  meta.description = "Elaborated MLIR Bytecode file for ${target} with config ${configName}.";
}
