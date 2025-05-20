
package Paws::SecretsManager::GetResourcePolicy;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::GetResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::GetResourcePolicy - Arguments for method GetResourcePolicy on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourcePolicy on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method GetResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourcePolicy.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
 # To retrieve the resource-based policy attached to a secret
 # The following example shows how to retrieve the resource-based policy that is
 # attached to a secret.
    my $GetResourcePolicyResponse = $secretsmanager->GetResourcePolicy(
      'SecretId' => 'MyTestDatabaseSecret' );

    # Results:
    my $ARN            = $GetResourcePolicyResponse->ARN;
    my $Name           = $GetResourcePolicyResponse->Name;
    my $ResourcePolicy = $GetResourcePolicyResponse->ResourcePolicy;

    # Returns a L<Paws::SecretsManager::GetResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/GetResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret to retrieve the attached resource-based
policy for.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourcePolicy in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

