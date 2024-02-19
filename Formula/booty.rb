class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.15.tar.gz"
  sha256 "e35d9ef0914c429eb03b2b66e4789399873fd7884c92c0235bbbb388100684c4"
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