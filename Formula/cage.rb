class Cage < Formula
  desc "Opinionated devcontainer launcher with a ready-to-go template"
  homepage "https://github.com/egornomic/cage"
  url "https://github.com/egornomic/cage/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "4f620e89eca7119b0e2501cef549e768dff10e4b940b1492c5ec08aa5f73ebbe"

  def install
    bin.install "cage"
    (share/"cage/template").install Dir["template/*"]
  end

  test do
    system "#{bin}/cage", "help"
  end
end
