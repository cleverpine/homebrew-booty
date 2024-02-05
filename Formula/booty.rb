class Booty < Formula
  desc "A Shell application for different framework structure generation"
  homepage "https://github.com/cleverpine/Booty"
  url "https://github.com/cleverpine/Booty/archive/refs/tags/v0.0.11.tar.gz"
  sha256 "aecfa82fd46a36093b752e678edb06cc1740438bae4c7e215fb9a92539e827ec"
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