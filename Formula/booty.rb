class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "870ba9bed3f2b2f71f9247b0e3ff48efe59791dd95aef9fed350d849dc69f893"
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
