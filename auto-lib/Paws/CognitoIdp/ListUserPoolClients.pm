
package Paws::CognitoIdp::ListUserPoolClients;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserPoolClients');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListUserPoolClientsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserPoolClients - Arguments for method ListUserPoolClients on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUserPoolClients on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListUserPoolClients.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUserPoolClients.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListUserPoolClientsResponse = $cognito -idp->ListUserPoolClients(
      UserPoolId => 'MyUserPoolIdType',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyPaginationKey',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListUserPoolClientsResponse->NextToken;
    my $UserPoolClients = $ListUserPoolClientsResponse->UserPoolClients;

    # Returns a L<Paws::CognitoIdp::ListUserPoolClientsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of app clients that you want Amazon Cognito to
return in the response.



=head2 NextToken => Str

This API operation returns a limited number of results. The pagination
token is an identifier that you can present in an additional API
request with the same parameters. When you include the pagination
token, Amazon Cognito returns the next set of items after the current
list. Subsequent requests return a new pagination token. By use of this
token, you can paginate through the full list of items.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to list user pool clients.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUserPoolClients in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

