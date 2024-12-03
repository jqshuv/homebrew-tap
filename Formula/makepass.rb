# Copyright (c) 2024 Joshua Schmitt
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT

class Makepass < Formula
  desc "Simple command-line password generator"
  homepage "https://github.com/jqshuv/makepass"
  version "1.1.1"
  url "https://registry.npmjs.org/makepass/-/makepass-#{version}.tgz"
  sha256 "5150e85b6ac58f4dfda4b14588619c2b3906ad0457d2526bfc73ac8b48f69870"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here, version isn't usually meaningful
    assert_match version.to_s, shell_output("#{bin}/foo --version")
  end
end
