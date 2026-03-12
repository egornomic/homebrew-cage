class Cage < Formula
  desc "Opinionated devcontainer launcher with a ready-to-go template"
  homepage "https://github.com/egornomic/cage"
  url "https://github.com/egornomic/cage/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "d3d17f00efb6fb196d67c509ba42fb55b74eaa4f3a1fa21b1ec78d8bf4d793e4"

  def install
    bin.install "cage"
    (share/"cage/template").install Dir["template/*"]
  end

  test do
    system "#{bin}/cage", "help"
  end
end
