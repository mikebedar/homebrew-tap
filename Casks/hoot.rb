cask "hoot" do
  version "0.11.0"
  sha256 "b7e60f2ce902c1818287860f3df1140ce95937332f93746fd87ca993a2ec2f73"

  url "https://github.com/mikebedar/Hoot/releases/download/v#{version}/Hoot-#{version}.zip"
  name "Hoot"
  desc "Safari extension for a calm, uncluttered YouTube watch page"
  homepage "https://github.com/mikebedar/Hoot"

  depends_on macos: :sonoma

  app "Hoot.app"

  uninstall quit: "net.bedar.Hoot"

  zap trash: [
    "~/Library/Containers/net.bedar.Hoot",
    "~/Library/Containers/net.bedar.Hoot.Extension",
  ]

  caveats <<~EOS
    To finish setting up Hoot, run:  open -a Hoot
    It takes you to Hoot in Safari → Settings → Extensions: tick Hoot and allow it on youtube.com.
  EOS
end
