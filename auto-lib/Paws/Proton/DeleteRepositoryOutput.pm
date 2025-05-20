
package Paws::Proton::DeleteRepositoryOutput;
  use Moose;
  has Repository => (is => 'ro', isa => 'Paws::Proton::Repository', traits => ['NameInRequest'], request_name => 'repository' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteRepositoryOutput

=head1 ATTRIBUTES


=head2 Repository => L<Paws::Proton::Repository>

The deleted repository link's detail data that's returned by Proton.


=head2 _request_id => Str


=cut

1;