
package Paws::Inspector2::UpdateEncryptionKey;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType', required => 1);
  has ScanType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEncryptionKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/encryptionkey/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::UpdateEncryptionKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::UpdateEncryptionKey - Arguments for method UpdateEncryptionKey on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEncryptionKey on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method UpdateEncryptionKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEncryptionKey.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $UpdateEncryptionKeyResponse = $inspector2->UpdateEncryptionKey(
      KmsKeyId     => 'MyKmsKeyArn',
      ResourceType => 'AWS_EC2_INSTANCE',
      ScanType     => 'NETWORK',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/UpdateEncryptionKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KmsKeyId => Str

A KMS key ID for the encryption key.



=head2 B<REQUIRED> ResourceType => Str

The resource type for the encryption key.

Valid values are: C<"AWS_EC2_INSTANCE">, C<"AWS_ECR_CONTAINER_IMAGE">, C<"AWS_ECR_REPOSITORY">, C<"AWS_LAMBDA_FUNCTION">

=head2 B<REQUIRED> ScanType => Str

The scan type for the encryption key.

Valid values are: C<"NETWORK">, C<"PACKAGE">, C<"CODE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEncryptionKey in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

