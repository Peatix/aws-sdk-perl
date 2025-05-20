
package Paws::Drs::StopReplicationResponse;
  use Moose;
  has SourceServer => (is => 'ro', isa => 'Paws::Drs::SourceServer', traits => ['NameInRequest'], request_name => 'sourceServer');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::StopReplicationResponse

=head1 ATTRIBUTES


=head2 SourceServer => L<Paws::Drs::SourceServer>

The Source Server that this action was targeted on.


=head2 _request_id => Str


=cut

