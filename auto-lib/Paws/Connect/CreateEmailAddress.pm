
package Paws::Connect::CreateEmailAddress;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEmailAddress');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/email-addresses/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateEmailAddressResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateEmailAddress - Arguments for method CreateEmailAddress on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEmailAddress on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateEmailAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEmailAddress.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateEmailAddressResponse = $connect->CreateEmailAddress(
      EmailAddress => 'MyEmailAddress',
      InstanceId   => 'MyInstanceId',
      ClientToken  => 'MyClientToken',                # OPTIONAL
      Description  => 'MyDescription',                # OPTIONAL
      DisplayName  => 'MyEmailAddressDisplayName',    # OPTIONAL
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $EmailAddressArn = $CreateEmailAddressResponse->EmailAddressArn;
    my $EmailAddressId  = $CreateEmailAddressResponse->EmailAddressId;

    # Returns a L<Paws::Connect::CreateEmailAddressResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateEmailAddress>

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

The display name of email address



=head2 B<REQUIRED> EmailAddress => Str

The email address with the instance, in [^\s@]+@[^\s@]+\.[^\s@]+
format.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEmailAddress in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

