class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.16.tar.gz"
  sha256 "81cda737d02f828adeb7c1657a5a4951ea978ea8d62618cc06acd132cafd92e3"
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