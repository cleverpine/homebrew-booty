class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.9.tar.gz"
  sha256 "1999a090c3e8c6db0c25c5250f0300b23fa0dede9c515c749a0a6c4994d00821"
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