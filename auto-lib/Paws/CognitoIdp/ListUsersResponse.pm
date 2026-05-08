
package Paws::CognitoIdp::ListUsersResponse;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::UserType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUsersResponse

=head1 ATTRIBUTES


=head2 PaginationToken => Str

The identifier that Amazon Cognito returned with the previous request
to this operation. When you include a pagination token in your request,
Amazon Cognito returns the next set of items in the list. By use of
this token, you can paginate through the full list of items.


=head2 Users => ArrayRef[L<Paws::CognitoIdp::UserType>]

An array of user pool users who match your query, and their attributes.


=head2 _request_id => Str


=cut

1;