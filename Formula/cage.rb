class Cage < Formula
  desc "Opinionated devcontainer launcher with a ready-to-go template"
  homepage "https://github.com/egornomic/cage"
  url "https://github.com/egornomic/cage/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e4684d821578ce148f1ee25d8b9c9c0a799b155ce455c3af231690b2e2774318"

  def install
    bin.install "cage"
    (share/"cage/template").install Dir["template/*"]
  end

  test do
    system "#{bin}/cage", "help"
  end
end
