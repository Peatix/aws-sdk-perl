
package Paws::CognitoIdp::ListResourceServersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceServers => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ResourceServerType]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListResourceServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The identifier that Amazon Cognito returned with the previous request
to this operation. When you include a pagination token in your request,
Amazon Cognito returns the next set of items in the list. By use of
this token, you can paginate through the full list of items.


=head2 B<REQUIRED> ResourceServers => ArrayRef[L<Paws::CognitoIdp::ResourceServerType>]

An array of resource servers and the details of their configuration.
For each, the response includes names, identifiers, and custom scopes.


=head2 _request_id => Str


=cut

1;