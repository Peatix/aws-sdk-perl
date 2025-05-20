
package Paws::Finspace::ListKxEnvironmentsResponse;
  use Moose;
  has Environments => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::KxEnvironment]', traits => ['NameInRequest'], request_name => 'environments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListKxEnvironmentsResponse

=head1 ATTRIBUTES


=head2 Environments => ArrayRef[L<Paws::Finspace::KxEnvironment>]

A list of environments in an account.


=head2 NextToken => Str

A token that indicates where a results page should begin.


=head2 _request_id => Str


=cut

