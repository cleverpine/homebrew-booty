class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.8.tar.gz"
  sha256 "c25c0947a9413af94879ab6da10d80ca3a1d34a2c38d15a03abd6de630e7ca28"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"booty").write <<~EOS
      #!/bin/bash
      "#{libexec}/main_menu.sh" "$@"
    EOS
  end

  test do
    # Test a simple command that should succeed and return exit status 0
    system "#{bin}/booty", "--version"
  end
end