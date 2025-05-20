
package Paws::Rekognition::ListUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::User]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token to be used with the subsequent request if the
response is truncated.


=head2 Users => ArrayRef[L<Paws::Rekognition::User>]

List of UsersID associated with the specified collection.


=head2 _request_id => Str


=cut

1;