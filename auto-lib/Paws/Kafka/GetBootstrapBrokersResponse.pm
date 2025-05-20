
package Paws::Kafka::GetBootstrapBrokersResponse;
  use Moose;
  has BootstrapBrokerString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerString');
  has BootstrapBrokerStringPublicSaslIam => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringPublicSaslIam');
  has BootstrapBrokerStringPublicSaslScram => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringPublicSaslScram');
  has BootstrapBrokerStringPublicTls => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringPublicTls');
  has BootstrapBrokerStringSaslIam => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringSaslIam');
  has BootstrapBrokerStringSaslScram => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringSaslScram');
  has BootstrapBrokerStringTls => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringTls');
  has BootstrapBrokerStringVpcConnectivitySaslIam => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringVpcConnectivitySaslIam');
  has BootstrapBrokerStringVpcConnectivitySaslScram => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringVpcConnectivitySaslScram');
  has BootstrapBrokerStringVpcConnectivityTls => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bootstrapBrokerStringVpcConnectivityTls');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::GetBootstrapBrokersResponse

=head1 ATTRIBUTES


=head2 BootstrapBrokerString => Str

A string containing one or more hostname:port pairs.


=head2 BootstrapBrokerStringPublicSaslIam => Str

A string that contains one or more DNS names (or IP addresses) and SASL
IAM port pairs.


=head2 BootstrapBrokerStringPublicSaslScram => Str

A string containing one or more DNS names (or IP) and Sasl Scram port
pairs.


=head2 BootstrapBrokerStringPublicTls => Str

A string containing one or more DNS names (or IP) and TLS port pairs.


=head2 BootstrapBrokerStringSaslIam => Str

A string that contains one or more DNS names (or IP addresses) and SASL
IAM port pairs.


=head2 BootstrapBrokerStringSaslScram => Str

A string containing one or more DNS names (or IP) and Sasl Scram port
pairs.


=head2 BootstrapBrokerStringTls => Str

A string containing one or more DNS names (or IP) and TLS port pairs.


=head2 BootstrapBrokerStringVpcConnectivitySaslIam => Str

A string containing one or more DNS names (or IP) and SASL/IAM port
pairs for VPC connectivity.


=head2 BootstrapBrokerStringVpcConnectivitySaslScram => Str

A string containing one or more DNS names (or IP) and SASL/SCRAM port
pairs for VPC connectivity.


=head2 BootstrapBrokerStringVpcConnectivityTls => Str

A string containing one or more DNS names (or IP) and TLS port pairs
for VPC connectivity.


=head2 _request_id => Str


=cut

