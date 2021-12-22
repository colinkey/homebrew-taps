# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Whichttp < Formula
  desc "CLI lookup tool for HTTP Status Codes"
  homepage "https://www.github.com/colinkey/whichttp"
  url "https://github.com/colinkey/whichttp/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ab81222ef5058e53f9fe36d129a1ba6b16831f623209f07d37428fdc9af241d8"
  license "MIT"

  depends_on "crystal" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "crystal", "build" "./src/whichttp.cr"
    bin.install "./whichttp"
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
