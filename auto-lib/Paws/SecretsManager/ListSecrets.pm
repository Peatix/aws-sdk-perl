
package Paws::SecretsManager::ListSecrets;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::Filter]');
  has IncludePlannedDeletion => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSecrets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::ListSecretsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ListSecrets - Arguments for method ListSecrets on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSecrets on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method ListSecrets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSecrets.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
   # To list the secrets in your account
   # The following example shows how to list all of the secrets in your account.
    my $ListSecretsResponse = $secretsmanager->ListSecrets();

    # Results:
    my $SecretList = $ListSecretsResponse->SecretList;

    # Returns a L<Paws::SecretsManager::ListSecretsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/ListSecrets>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SecretsManager::Filter>]

The filters to apply to the list of secrets.



=head2 IncludePlannedDeletion => Bool

Specifies whether to include secrets scheduled for deletion. By
default, secrets scheduled for deletion aren't included.



=head2 MaxResults => Int

The number of results to include in the response.

If there are more results available, in the response, Secrets Manager
includes C<NextToken>. To get the next results, call C<ListSecrets>
again with the value from C<NextToken>.



=head2 NextToken => Str

A token that indicates where the output should continue from, if a
previous call did not show all results. To get the next results, call
C<ListSecrets> again with this value.



=head2 SortOrder => Str

Secrets are listed by C<CreatedDate>.

Valid values are: C<"asc">, C<"desc">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSecrets in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

