
package Paws::SecretsManager::ListSecretVersionIds;
  use Moose;
  has IncludeDeprecated => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSecretVersionIds');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::ListSecretVersionIdsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ListSecretVersionIds - Arguments for method ListSecretVersionIds on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSecretVersionIds on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method ListSecretVersionIds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSecretVersionIds.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
# To list all of the secret versions associated with a secret
# The following example shows how to retrieve a list of all of the versions of a
# secret, including those without any staging labels.
    my $ListSecretVersionIdsResponse = $secretsmanager->ListSecretVersionIds(
      'IncludeDeprecated' => 1,
      'SecretId'          => 'MyTestDatabaseSecret'
    );

    # Results:
    my $ARN      = $ListSecretVersionIdsResponse->ARN;
    my $Name     = $ListSecretVersionIdsResponse->Name;
    my $Versions = $ListSecretVersionIdsResponse->Versions;

    # Returns a L<Paws::SecretsManager::ListSecretVersionIdsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/ListSecretVersionIds>

=head1 ATTRIBUTES


=head2 IncludeDeprecated => Bool

Specifies whether to include versions of secrets that don't have any
staging labels attached to them. Versions without staging labels are
considered deprecated and are subject to deletion by Secrets Manager.
By default, versions without staging labels aren't included.



=head2 MaxResults => Int

The number of results to include in the response.

If there are more results available, in the response, Secrets Manager
includes C<NextToken>. To get the next results, call
C<ListSecretVersionIds> again with the value from C<NextToken>.



=head2 NextToken => Str

A token that indicates where the output should continue from, if a
previous call did not show all results. To get the next results, call
C<ListSecretVersionIds> again with this value.



=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret whose versions you want to list.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSecretVersionIds in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

