class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/PineBoot"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
