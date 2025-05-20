
package Paws::SecretsManager::PutResourcePolicy;
  use Moose;
  has BlockPublicPolicy => (is => 'ro', isa => 'Bool');
  has ResourcePolicy => (is => 'ro', isa => 'Str', required => 1);
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
   # To add a resource-based policy to a secret
   # The following example shows how to add a resource-based policy to a secret.
    my $PutResourcePolicyResponse = $secretsmanager->PutResourcePolicy(
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
    my $ARN  = $PutResourcePolicyResponse->ARN;
    my $Name = $PutResourcePolicyResponse->Name;

    # Returns a L<Paws::SecretsManager::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 BlockPublicPolicy => Bool

Specifies whether to block resource-based policies that allow broad
access to the secret, for example those that use a wildcard for the
principal. By default, public policies aren't blocked.

Resource policy validation and the BlockPublicPolicy parameter help
protect your resources by preventing public access from being granted
through the resource policies that are directly attached to your
secrets. In addition to using these features, carefully inspect the
following policies to confirm that they do not grant public access:

=over

=item *

Identity-based policies attached to associated Amazon Web Services
principals (for example, IAM roles)

=item *

Resource-based policies attached to associated Amazon Web Services
resources (for example, Key Management Service (KMS) keys)

=back

To review permissions to your secrets, see Determine who has
permissions to your secrets
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/determine-acccess_examine-iam-policies.html).



=head2 B<REQUIRED> ResourcePolicy => Str

A JSON-formatted string for an Amazon Web Services resource-based
policy. For example policies, see Permissions policy examples
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html).



=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret to attach the resource-based policy.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

