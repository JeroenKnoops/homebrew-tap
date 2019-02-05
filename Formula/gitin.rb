class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage "https://github.com/isacikgoz/gitin"
  url "https://github.com/isacikgoz/gitin/releases/download/v0.1.0/gitin_0.1.0_darwin_amd64.tar.gz"
  sha256 "96cdc4ee7ff25f6afb320b73a88ce8721cdfeea75bb4d65fdf70f361ca904b07"
  depends_on "libgit2"

  def install
    bin.install "gitin"
  end

  test do
    assert_match "gitin version 0.1.0", shell_output("#{bin}/gitin --version", 2)
  end
end

