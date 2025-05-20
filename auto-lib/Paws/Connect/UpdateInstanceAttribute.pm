
package Paws::Connect::UpdateInstanceAttribute;
  use Moose;
  has AttributeType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AttributeType', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstanceAttribute');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/attribute/{AttributeType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateInstanceAttribute - Arguments for method UpdateInstanceAttribute on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstanceAttribute on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateInstanceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstanceAttribute.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateInstanceAttribute(
      AttributeType => 'INBOUND_CALLS',
      InstanceId    => 'MyInstanceId',
      Value         => 'MyInstanceAttributeValue',
      ClientToken   => 'MyClientToken',              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateInstanceAttribute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeType => Str

The type of attribute.

Only allowlisted customers can consume USE_CUSTOM_TTS_VOICES. To access
this feature, contact Amazon Web ServicesSupport for allowlisting.

Valid values are: C<"INBOUND_CALLS">, C<"OUTBOUND_CALLS">, C<"CONTACTFLOW_LOGS">, C<"CONTACT_LENS">, C<"AUTO_RESOLVE_BEST_VOICES">, C<"USE_CUSTOM_TTS_VOICES">, C<"EARLY_MEDIA">, C<"MULTI_PARTY_CONFERENCE">, C<"HIGH_VOLUME_OUTBOUND">, C<"ENHANCED_CONTACT_MONITORING">, C<"ENHANCED_CHAT_MONITORING">, C<"MULTI_PARTY_CHAT_CONFERENCE">

=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Value => Str

The value for the attribute. Maximum character limit is 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstanceAttribute in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

