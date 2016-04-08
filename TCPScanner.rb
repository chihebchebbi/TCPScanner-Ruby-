require 'msf/core'
class Metasploit3 <Msf::Auxiliary
	include Msf::Exploit::Remote::Tcp
	include Msf::Auxiliary::Scanner
	def intialize
		super( 
			'Name' => 'TCP scanner',		
			'Version' => '$Revisiov: 1 $',
			'Description' => 'This is a Demo for Cybrary.it',
			'License' => MSF_LICENSSE

			)
			register_options([
                            opt::RPORT(3000)
                            ], self.class)
              end

	def run_host(ip)
		connect()
		greeting = "Hello Cybrary"
		sock.puts(greeting)
		data = sock.recv(1024)
		print_status("Received: #{data} from #{ip}")
		end
end
