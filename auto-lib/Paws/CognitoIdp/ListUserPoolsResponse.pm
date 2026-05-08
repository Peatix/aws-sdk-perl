
package Paws::CognitoIdp::ListUserPoolsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UserPools => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::UserPoolDescriptionType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserPoolsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The identifier that Amazon Cognito returned with the previous request
to this operation. When you include a pagination token in your request,
Amazon Cognito returns the next set of items in the list. By use of
this token, you can paginate through the full list of items.


=head2 UserPools => ArrayRef[L<Paws::CognitoIdp::UserPoolDescriptionType>]

An array of user pools and their configuration details.


=head2 _request_id => Str


=cut

1;