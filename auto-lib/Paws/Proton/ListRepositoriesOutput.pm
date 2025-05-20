
package Paws::Proton::ListRepositoriesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::Proton::RepositorySummary]', traits => ['NameInRequest'], request_name => 'repositories' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListRepositoriesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates the location of the next repository in the array
of repositories, after the current requested list of repositories.


=head2 B<REQUIRED> Repositories => ArrayRef[L<Paws::Proton::RepositorySummary>]

An array of repository links.


=head2 _request_id => Str


=cut

1;