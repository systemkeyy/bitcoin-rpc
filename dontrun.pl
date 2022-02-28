#!/usr/bin/perl
my $isnew = 0;
my $fld = "/home/bitcoin-user";
if (!-d "$fld/.bitcoin") {
  $isnew = 1;
  my $ip = `curl ifconfig.me`;
  print "Bitcoin not found, downloading...\n";
`cd $fld/; wget https://bitcoin.org/bin/bitcoin-core-0.21.0/bitcoin-0.21.0-x86_64-linux-gnu.tar.gz; tar xfz bitcoin-0.21.0-x86_64-linux-gnu.tar.gz; cp bitcoin-0.21.0/bin/bitcoin* $fld/; rm -rf bitcoin-0.21.0*`;
  print "Installed, creating settings...\n";
`mkdir $fld/.bitcoin`;
`echo "daemon=1
rpcbind=$ip
rpcconnect=$ip
rpcallowip=0.0.0.0/0
rpcuser=DPJidjo123safasfw
rpcpassword=Ffdasaf1231saa" > $fld/.bitcoin/bitcoin.conf`;
}
print "Starting bitcoin daemon...\n";
print `$fld/bitcoind -prune=550`."\n";
if ($isnew == 1) {
  sleep(30);
  print `$fld/bitcoin-cli createwallet default`."\n";
} else {
  sleep(10);
  print `$fld/bitcoin-cli loadwallet default`."\n";
}
print "!!REMEMBER TO CHANGE THE RPCUSER AND PASSWORD IN /.BITCOIN/BITCOIN.CONF!!!\n";
