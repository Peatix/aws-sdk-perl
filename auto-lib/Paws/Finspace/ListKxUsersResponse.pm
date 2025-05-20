
package Paws::Finspace::ListKxUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxUser]', traits => ['NameInRequest'], request_name => 'users');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 Users => ArrayRef[L<Paws::Finspace::KxUser>]

A list of users in a kdb environment.


=head2 _request_id => Str


=cut

