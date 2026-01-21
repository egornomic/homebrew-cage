class Cage < Formula
  desc "Opinionated devcontainer launcher with a ready-to-go template"
  homepage "https://github.com/egornomic/cage"
  url "https://github.com/egornomic/cage/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "cef59d312f3d93c5aa75172a2375c1a5d461bf43dba6308460ead95cf112fcfe"

  def install
    bin.install "cage"
    (share/"cage/template").install Dir["template/*"]
  end

  test do
    system "#{bin}/cage", "help"
  end
end
