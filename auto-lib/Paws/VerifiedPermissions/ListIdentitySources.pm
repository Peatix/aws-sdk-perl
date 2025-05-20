
package Paws::VerifiedPermissions::ListIdentitySources;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::IdentitySourceFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentitySources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::ListIdentitySourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::ListIdentitySources - Arguments for method ListIdentitySources on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIdentitySources on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method ListIdentitySources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIdentitySources.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $ListIdentitySourcesOutput = $verifiedpermissions->ListIdentitySources(
      PolicyStoreId => 'MyPolicyStoreId',
      Filters       => [
        {
          PrincipalEntityType =>
            'MyPrincipalEntityType',    # min: 1, max: 200; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $IdentitySources = $ListIdentitySourcesOutput->IdentitySources;
    my $NextToken       = $ListIdentitySourcesOutput->NextToken;

    # Returns a L<Paws::VerifiedPermissions::ListIdentitySourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/ListIdentitySources>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::VerifiedPermissions::IdentitySourceFilter>]

Specifies characteristics of an identity source that you can use to
limit the output to matching identity sources.



=head2 MaxResults => Int

Specifies the total number of results that you want included in each
response. If additional items exist beyond the number you specify, the
C<NextToken> response element is returned with a value (not null).
Include the specified value as the C<NextToken> request parameter in
the next call to the operation to get the next set of results. Note
that the service might return fewer results than the maximum even when
there are more results available. You should check C<NextToken> after
every operation to ensure that you receive all of the results.

If you do not specify this parameter, the operation defaults to 10
identity sources per response. You can specify a maximum of 50 identity
sources per response.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<NextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<NextToken> response to
request the next page of results.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store that contains the identity sources
that you want to list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIdentitySources in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

