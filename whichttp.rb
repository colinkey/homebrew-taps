class Whichttp < Formula
  desc "CLI lookup tool for HTTP Status Codes"
  homepage "https://www.github.com/colinkey/whichttp"
  url "https://github.com/colinkey/whichttp/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "48fdd3b415e2516ad7cbbb56b111f91a76ac3a8bedee321d4e792db34bc73812"
  license "MIT"

  depends_on "crystal" => :build

  def install
    system "shards", "build", "--release"
    bin.install "./bin/whichttp"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test whichttp`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
