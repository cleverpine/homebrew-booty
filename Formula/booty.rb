class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.14.tar.gz"
  sha256 "58f81d700380c17aad05bae69e2b6b3776ef604320a4f97fbee8f1c9aefabee8"
  license "MIT"

  def install
    libexec.install Dir["*", ".mvn"]
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