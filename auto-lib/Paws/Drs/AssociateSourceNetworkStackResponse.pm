
package Paws::Drs::AssociateSourceNetworkStackResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::Drs::Job', traits => ['NameInRequest'], request_name => 'job');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::AssociateSourceNetworkStackResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::Drs::Job>

The Source Network association Job.


=head2 _request_id => Str


=cut

