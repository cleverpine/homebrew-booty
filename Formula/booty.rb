class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/PineBoot"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/0.0.4.tar.gz"
  sha256 "0462d8fe5e70f0e52ea51b71abf8ba29a143f20d7088d1b016ef818ea0de23e4"
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
