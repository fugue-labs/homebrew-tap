# Generated from a Cosign-verified Sleepy release manifest.
cask "sleepy" do
  version "0.6.1"

  on_macos do
    on_intel do
      sha256 "f6830d2a35c3741462654d4c12666776ae7f754e06ef781c37175085ea60b2ba"
      url "https://github.com/fugue-labs/sleepy-releases/releases/download/v#{version}/sleepy_#{version}_Darwin_x86_64.tar.gz"
    end
    on_arm do
      sha256 "af67c9006c06cb218374c30de346bd3041913ad1cf6e2eace207c4041301bad0"
      url "https://github.com/fugue-labs/sleepy-releases/releases/download/v#{version}/sleepy_#{version}_Darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "ebcd0dd9ca21a4990c7e8f2e43187e21b2eb6a9b742bb28087c31136cc4a1416"
      url "https://github.com/fugue-labs/sleepy-releases/releases/download/v#{version}/sleepy_#{version}_Linux_x86_64.tar.gz"
    end
    on_arm do
      sha256 "b4c221977a1f25b74085b97da01e282839e1b9b320c7f358d814b9a0cf766c04"
      url "https://github.com/fugue-labs/sleepy-releases/releases/download/v#{version}/sleepy_#{version}_Linux_arm64.tar.gz"
    end
  end

  name "sleepy"
  desc "Client tooling for the sleepy.run evolutionary code optimization service"
  homepage "https://github.com/fugue-labs/sleepy-releases"
  livecheck do
    skip "Updated only after a verified protected release."
  end
  binary "sleepy"
  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/sleepy"]
    end
  end
end
