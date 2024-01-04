class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/PineBoot"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "2b53562e1d2fb63e6bf1d106f71f784f7a1882991210cddaaf73309fc315cbe8"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"booty").write <<~EOS
      #!/bin/bash
      cd "#{libexec}"
      ./main_menu.sh "$@"
    EOS
  end

  test do
    # Test block to be updated with a suitable test for the application
  end
end
