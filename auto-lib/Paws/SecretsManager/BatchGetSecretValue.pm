
package Paws::SecretsManager::BatchGetSecretValue;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SecretIdList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetSecretValue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::BatchGetSecretValueResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::BatchGetSecretValue - Arguments for method BatchGetSecretValue on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetSecretValue on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method BatchGetSecretValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetSecretValue.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $BatchGetSecretValueResponse = $secretsmanager->BatchGetSecretValue(
      Filters => [
        {
          Key => 'description'
          , # values: description, name, tag-key, tag-value, primary-region, owning-service, all; OPTIONAL
          Values => [
            'MyFilterValueStringType', ...    # max: 512
          ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults   => 1,                    # OPTIONAL
      NextToken    => 'MyNextTokenType',    # OPTIONAL
      SecretIdList => [
        'MySecretIdType', ...               # min: 1, max: 2048
      ],    # OPTIONAL
    );

    # Results:
    my $Errors       = $BatchGetSecretValueResponse->Errors;
    my $NextToken    = $BatchGetSecretValueResponse->NextToken;
    my $SecretValues = $BatchGetSecretValueResponse->SecretValues;

    # Returns a L<Paws::SecretsManager::BatchGetSecretValueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/BatchGetSecretValue>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SecretsManager::Filter>]

The filters to choose which secrets to retrieve. You must include
C<Filters> or C<SecretIdList>, but not both.



=head2 MaxResults => Int

The number of results to include in the response.

If there are more results available, in the response, Secrets Manager
includes C<NextToken>. To get the next results, call
C<BatchGetSecretValue> again with the value from C<NextToken>. To use
this parameter, you must also use the C<Filters> parameter.



=head2 NextToken => Str

A token that indicates where the output should continue from, if a
previous call did not show all results. To get the next results, call
C<BatchGetSecretValue> again with this value.



=head2 SecretIdList => ArrayRef[Str|Undef]

The ARN or names of the secrets to retrieve. You must include
C<Filters> or C<SecretIdList>, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetSecretValue in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

