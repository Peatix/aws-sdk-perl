
package Paws::VerifiedPermissions::ListPolicyStores;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPolicyStores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::ListPolicyStoresOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::ListPolicyStores - Arguments for method ListPolicyStores on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPolicyStores on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method ListPolicyStores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPolicyStores.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $ListPolicyStoresOutput = $verifiedpermissions->ListPolicyStores(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListPolicyStoresOutput->NextToken;
    my $PolicyStores = $ListPolicyStoresOutput->PolicyStores;

    # Returns a L<Paws::VerifiedPermissions::ListPolicyStoresOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/ListPolicyStores>

=head1 ATTRIBUTES


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
policy stores per response. You can specify a maximum of 50 policy
stores per response.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<NextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<NextToken> response to
request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPolicyStores in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

