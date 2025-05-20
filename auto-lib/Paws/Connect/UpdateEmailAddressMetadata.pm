
package Paws::Connect::UpdateEmailAddressMetadata;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EmailAddressId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailAddressId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEmailAddressMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/email-addresses/{InstanceId}/{EmailAddressId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateEmailAddressMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateEmailAddressMetadata - Arguments for method UpdateEmailAddressMetadata on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEmailAddressMetadata on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateEmailAddressMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEmailAddressMetadata.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateEmailAddressMetadataResponse =
      $connect->UpdateEmailAddressMetadata(
      EmailAddressId => 'MyEmailAddressId',
      InstanceId     => 'MyInstanceId',
      ClientToken    => 'MyClientToken',                # OPTIONAL
      Description    => 'MyDescription',                # OPTIONAL
      DisplayName    => 'MyEmailAddressDisplayName',    # OPTIONAL
      );

    # Results:
    my $EmailAddressArn = $UpdateEmailAddressMetadataResponse->EmailAddressArn;
    my $EmailAddressId  = $UpdateEmailAddressMetadataResponse->EmailAddressId;

    # Returns a L<Paws::Connect::UpdateEmailAddressMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateEmailAddressMetadata>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 Description => Str

The description of the email address.



=head2 DisplayName => Str

The display name of email address.



=head2 B<REQUIRED> EmailAddressId => Str

The identifier of the email address.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEmailAddressMetadata in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

