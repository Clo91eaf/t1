# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  arithmetic = {
    pname = "arithmetic";
    version = "dd9bd585a8d444399eb5a31d088567e0ef56f43a";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "arithmetic";
      rev = "dd9bd585a8d444399eb5a31d088567e0ef56f43a";
      fetchSubmodules = false;
      sha256 = "sha256-PquHsdyKbN/xKV4UhtTmBAVic2PwiUPvw50oZKUN08I=";
    };
    date = "2023-10-23";
  };
  berkeley-hardfloat = {
    pname = "berkeley-hardfloat";
    version = "b3c8a38c286101973b3bc071f7918392343faba7";
    src = fetchFromGitHub {
      owner = "ucb-bar";
      repo = "berkeley-hardfloat";
      rev = "b3c8a38c286101973b3bc071f7918392343faba7";
      fetchSubmodules = false;
      sha256 = "sha256-3j6K/qFuH8PqJT6zHVTIphq9HWxmSGoIqDo9GV1bxmU=";
    };
    date = "2023-10-25";
  };
  cde = {
    pname = "cde";
    version = "52768c97a27b254c0cc0ac9401feb55b29e18c28";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "cde";
      rev = "52768c97a27b254c0cc0ac9401feb55b29e18c28";
      fetchSubmodules = false;
      sha256 = "sha256-bmiVhuriiuDFFP5gXcP2kKwdrFQ2I0Cfz3N2zed+IyY=";
    };
    date = "2023-08-05";
  };
  chisel = {
    pname = "chisel";
    version = "2372b1c401ff15c34b8c1f8766232c4cd9a8c67e";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "chisel";
      rev = "2372b1c401ff15c34b8c1f8766232c4cd9a8c67e";
      fetchSubmodules = false;
      sha256 = "sha256-jsg4jZTTM68DmWgPkwnK08wcuweTImxL3EC48DXjXPg=";
    };
    date = "2023-11-16";
  };
  rocket-chip = {
    pname = "rocket-chip";
    version = "6b6731794e23e8cdbbd1710d85db53db417b30c6";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "rocket-chip";
      rev = "6b6731794e23e8cdbbd1710d85db53db417b30c6";
      fetchSubmodules = false;
      sha256 = "sha256-TY4zwCCwoY0xOMRCoVo+nVCfb7V8RS30H7+YZcu0ljY=";
    };
    date = "2023-11-17";
  };
  rocket-chip-inclusive-cache = {
    pname = "rocket-chip-inclusive-cache";
    version = "7f391c5e4cba3cdd4388efb778bd80da35d5574a";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "rocket-chip-inclusive-cache";
      rev = "7f391c5e4cba3cdd4388efb778bd80da35d5574a";
      fetchSubmodules = false;
      sha256 = "sha256-mr3PA/wlXkC/Cu/H5T6l1xtBrK9KQQmGOfL3TMxq5T4=";
    };
    date = "2023-08-15";
  };
  rvdecoderdb = {
    pname = "rvdecoderdb";
    version = "d06544ed41f4174c01bf1e1cb265da41ff64b54a";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "rvdecoderdb";
      rev = "d06544ed41f4174c01bf1e1cb265da41ff64b54a";
      fetchSubmodules = false;
      sha256 = "sha256-s8X1pZceNyAqzE+mKEK7TVL4FP30GJbCOTa376vko+M=";
    };
    date = "2023-10-16";
  };
  tilelink = {
    pname = "tilelink";
    version = "cd177e4636eb4a20326795a66e9ab502f9b2500a";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "tilelink";
      rev = "cd177e4636eb4a20326795a66e9ab502f9b2500a";
      fetchSubmodules = false;
      sha256 = "sha256-PIPLdZSCNKHBbho0YWGODSEM8toRBlOYC2gcbh+gqIY=";
    };
    date = "2023-08-11";
  };
}
