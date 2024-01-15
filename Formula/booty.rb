class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "a6100ec32b76bd45ca0a273febd9048bf48d7e71ddbabc5e3c2be36feb3c0e84"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"booty").write <<~EOS
      #!/bin/bash
      "#{libexec}/main_menu.sh" "$@"
    EOS
  end

  test do
    # Test block to be updated with a suitable test for the application
  end
end
