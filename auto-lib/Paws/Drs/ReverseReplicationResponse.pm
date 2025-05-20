
package Paws::Drs::ReverseReplicationResponse;
  use Moose;
  has ReversedDirectionSourceServerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reversedDirectionSourceServerArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ReverseReplicationResponse

=head1 ATTRIBUTES


=head2 ReversedDirectionSourceServerArn => Str

ARN of created SourceServer.


=head2 _request_id => Str


=cut

