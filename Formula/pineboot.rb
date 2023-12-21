class Pineboot < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/PineBoot"
  url "https://github.com/cleverpine/PineBoot/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "5be2514b3b1543a11b82d9d9f5a4714f26947f76fb92d154636c4f40e0ffd7b8"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # Unpack all files from the tar.gz
    libexec.install Dir["*"]
    # Create a symlink for main_menu.sh in bin directory as 'pineboot'
    bin.write_exec_script (libexec/"main_menu.sh")
  end

  test do
    # Test block to be updated with a suitable test for the application
  end
end
