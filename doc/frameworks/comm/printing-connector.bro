const broker_port: port &redef;
redef exit_only_after_terminate = T;
redef Comm::endpoint_name = "connector";

event bro_init()
	{
	Comm::enable();
	Comm::connect("127.0.0.1", broker_port, 1sec);
	}

event Comm::outgoing_connection_established(peer_address: string,
                                            peer_port: port,
                                            peer_name: string)
	{
	print "Comm::outgoing_connection_established",
	      peer_address, peer_port, peer_name;
	Comm::print("bro/print/hi", "hello");
	Comm::print("bro/print/stuff", "...");
	Comm::print("bro/print/bye", "goodbye");
	}

event Comm::outgoing_connection_broken(peer_address: string,
                                       peer_port: port)
	{
	terminate();
	}
