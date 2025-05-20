
package Paws::Connect::GetFlowAssociation;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceId', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFlowAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flow-associations/{InstanceId}/{ResourceId}/{ResourceType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::GetFlowAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetFlowAssociation - Arguments for method GetFlowAssociation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFlowAssociation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method GetFlowAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFlowAssociation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $GetFlowAssociationResponse = $connect->GetFlowAssociation(
      InstanceId   => 'MyInstanceId',
      ResourceId   => 'MyARN',
      ResourceType => 'SMS_PHONE_NUMBER',

    );

    # Results:
    my $FlowId       = $GetFlowAssociationResponse->FlowId;
    my $ResourceId   = $GetFlowAssociationResponse->ResourceId;
    my $ResourceType = $GetFlowAssociationResponse->ResourceType;

    # Returns a L<Paws::Connect::GetFlowAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/GetFlowAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource.

=over

=item *

Amazon Web Services End User Messaging SMS phone number ARN when using
C<SMS_PHONE_NUMBER>

=item *

Amazon Web Services End User Messaging Social phone number ARN when
using C<WHATSAPP_MESSAGING_PHONE_NUMBER>

=back




=head2 B<REQUIRED> ResourceType => Str

A valid resource type.

Valid values are: C<"SMS_PHONE_NUMBER">, C<"INBOUND_EMAIL">, C<"OUTBOUND_EMAIL">, C<"ANALYTICS_CONNECTOR">, C<"WHATSAPP_MESSAGING_PHONE_NUMBER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFlowAssociation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

