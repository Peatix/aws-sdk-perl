
package Paws::Proton::GetRepositoryOutput;
  use Moose;
  has Repository => (is => 'ro', isa => 'Paws::Proton::Repository', traits => ['NameInRequest'], request_name => 'repository' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetRepositoryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Repository => L<Paws::Proton::Repository>

The repository link's detail data that's returned by Proton.


=head2 _request_id => Str


=cut

1;