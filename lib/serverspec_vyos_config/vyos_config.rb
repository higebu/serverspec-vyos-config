module Serverspec
  module Type
    class VyosConfig < Base
      @@cli = "/bin/cli-shell-api"
      @@setup_session = "session_env=$(#{@@cli} getSessionEnv $PPID); eval ${session_env}; #{@@cli} setupSession;"
      def exists?
        res = @runner.run_command("#{@@setup_session} #{@@cli} exists #{@name};exit_code=$?;#{@@cli} teardownSession;exit $exit_code")
        res.exit_status == 0
      end
 
      def value
        @runner.run_command("#{@@setup_session} #{@@cli} returnValue #{@name}").stdout
      end
    end
    def vyos_config(name)
      VyosConfig.new(name)
    end
  end
end
 
include Serverspec::Type
