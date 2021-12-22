class Whichttp < Formula
  desc "CLI lookup tool for HTTP Status Codes"
  homepage "https://www.github.com/colinkey/whichttp"
  url "https://github.com/colinkey/whichttp/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "516a71baac5d4f791243dfeeafceb2d3bff183084eaada861720a84a1d1117d9"
  license "MIT"

  depends_on "crystal" => :build

  def install
    system "crystal", "build", "./src/whichttp.cr"
    bin.install "./whichttp"
    bin.install "src/http_status_codes.yml" => "http_status_codes.yml"
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
