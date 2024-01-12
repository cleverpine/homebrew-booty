class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/PineBoot"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "78acceff4e255c04f7b5ae973b78f65276ebe781581e9fa39d3ce83354a74edb"
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
