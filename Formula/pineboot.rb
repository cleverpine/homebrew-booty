# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pineboot < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/PineBoot"
  url "https://github.com/cleverpine/PineBoot/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "5be2514b3b1543a11b82d9d9f5a4714f26947f76fb92d154636c4f40e0ffd7b8"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install "main_menu.sh" => "pineboot"
  end

  test do
    # Test block to be updated with a suitable test for the application
  end
end
