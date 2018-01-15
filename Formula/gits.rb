class Gits < Formula
  desc "A shell script to share contribution between two git accounts when pair programming."
  homepage "https://github.com/jeroenknoops/gits"
  url "https://github.com/JeroenKnoops/gits/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "13b778bf5a7f92285f54179cd88bea4b39f661a3de47a7ff0a84b9aa5d865962"

  def install
    bin.install "bin/gits"
  end
end
