class Gitin < Formula
  desc "commit/branch/workdir explorer for git"
  homepage ""
  url "https://github.com/isacikgoz/gitin/releases/download/v0.1.0/gitin_0.1.0_darwin_amd64.tar.gz"
  sha256 "96cdc4ee7ff25f6afb320b73a88ce8721cdfeea75bb4d65fdf70f361ca904b07"
  depends_on "cmake" => :build
  depends_on "libgit2"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gitin`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

