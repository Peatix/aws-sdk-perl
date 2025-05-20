
package Paws::Drs::StartSourceNetworkReplicationResponse;
  use Moose;
  has SourceNetwork => (is => 'ro', isa => 'Paws::Drs::SourceNetwork', traits => ['NameInRequest'], request_name => 'sourceNetwork');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::StartSourceNetworkReplicationResponse

=head1 ATTRIBUTES


=head2 SourceNetwork => L<Paws::Drs::SourceNetwork>

Source Network which was requested for replication.


=head2 _request_id => Str


=cut

