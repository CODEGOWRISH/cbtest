
module General
 module InstallChecks

  #def already_installed (installedFile, warnMessage)
  #warnMessage = 'WARN - '
  def already_installed (installedFile)

    if File.exist?(installedFile)
    then
      #Chef::Log.warn(warnMessage + "-" + installedFile + " found")
      Chef::Log.warn("Already installed")
      return 1
    else
      #Chef::Log.info(installedFile + "Not installed, can install")
      Chef::Log.warn("Not installed")
      return 0
    end
  end

 end
end