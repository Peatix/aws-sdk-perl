
package Paws::Proton::GetRepositorySyncStatusOutput;
  use Moose;
  has LatestSync => (is => 'ro', isa => 'Paws::Proton::RepositorySyncAttempt', traits => ['NameInRequest'], request_name => 'latestSync' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetRepositorySyncStatusOutput

=head1 ATTRIBUTES


=head2 LatestSync => L<Paws::Proton::RepositorySyncAttempt>

The repository sync status detail data that's returned by Proton.


=head2 _request_id => Str


=cut

1;