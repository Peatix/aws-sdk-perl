
package Paws::SecretsManager::UntagResource;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::UntagResource - Arguments for method UntagResource on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
  # To remove tags from a secret
  # The following example shows how to remove two tags from a secret's metadata.
  # For each, both the tag and the associated value are removed. There is no
  # output from this API. To see the result, use the DescribeSecret operation.
    $secretsmanager->UntagResource(
      'SecretId' => 'MyTestDatabaseSecret',
      'TagKeys'  => [ 'FirstTag', 'SecondTag' ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

The ARN or name of the secret.

For an ARN, we recommend that you specify a complete ARN rather than a
partial ARN. See Finding a secret from a partial ARN
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen).



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of tag key names to remove from the secret. You don't specify
the value. Both the key and its associated value are removed.

This parameter requires a JSON text string argument.

For storing multiple values, we recommend that you use a JSON text
string argument and specify key/value pairs. For more information, see
Specifying parameter values for the Amazon Web Services CLI
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html)
in the Amazon Web Services CLI User Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

