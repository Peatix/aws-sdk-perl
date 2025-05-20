
package Paws::SecretsManager::ValidateResourcePolicy;
  use Moose;
  has ResourcePolicy => (is => 'ro', isa => 'Str', required => 1);
  has SecretId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::ValidateResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ValidateResourcePolicy - Arguments for method ValidateResourcePolicy on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateResourcePolicy on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method ValidateResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateResourcePolicy.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    # To validate a resource-based policy to a secret
    # The following example shows how to validate a resource-based policy to a
    # secret.
    my $ValidateResourcePolicyResponse =
      $secretsmanager->ValidateResourcePolicy(
      'ResourcePolicy' => '{
"Version":"2012-10-17",
"Statement":[{
"Effect":"Allow",
"Principal":{
"AWS":"arn:aws:iam::123456789012:root"
},
"Action":"secretsmanager:GetSecretValue",
"Resource":"*"
}]
}',
      'SecretId' => 'MyTestDatabaseSecret'
      );

    # Results:
    my $PolicyValidationPassed =
      $ValidateResourcePolicyResponse->PolicyValidationPassed;
    my $ValidationErrors = $ValidateResourcePolicyResponse->ValidationErrors;

    # Returns a L<Paws::SecretsManager::ValidateResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/ValidateResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourcePolicy => Str

A JSON-formatted string that contains an Amazon Web Services
resource-based policy. The policy in the string identifies who can
access or manage this secret and its versions. For example policies,
see Permissions policy examples
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html).



=head2 SecretId => Str

The ARN or name of the secret with the resource-based policy you want
to validate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateResourcePolicy in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

