
package Paws::CognitoIdp::ListUserPools;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserPools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListUserPoolsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserPools - Arguments for method ListUserPools on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUserPools on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListUserPools.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUserPools.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListUserPoolsResponse = $cognito -idp->ListUserPools(
      MaxResults => 1,
      NextToken  => 'MyPaginationKeyType',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListUserPoolsResponse->NextToken;
    my $UserPools = $ListUserPoolsResponse->UserPools;

    # Returns a L<Paws::CognitoIdp::ListUserPoolsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxResults => Int

The maximum number of user pools that you want Amazon Cognito to return
in the response.



=head2 NextToken => Str

This API operation returns a limited number of results. The pagination
token is an identifier that you can present in an additional API
request with the same parameters. When you include the pagination
token, Amazon Cognito returns the next set of items after the current
list. Subsequent requests return a new pagination token. By use of this
token, you can paginate through the full list of items.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUserPools in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

