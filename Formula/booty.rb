class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "cb2ade0d2c1ae9711eb581a91fff8da0fa2529a98afea23ea5d7c17e9f98aac4"
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