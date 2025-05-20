
package Paws::Connect::AssociateFlow;
  use Moose;
  has FlowId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flow-associations/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::AssociateFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AssociateFlow - Arguments for method AssociateFlow on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateFlow on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method AssociateFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateFlow.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $AssociateFlowResponse = $connect->AssociateFlow(
      FlowId       => 'MyARN',
      InstanceId   => 'MyInstanceId',
      ResourceId   => 'MyARN',
      ResourceType => 'SMS_PHONE_NUMBER',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/AssociateFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowId => Str

The identifier of the flow.



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

This class forms part of L<Paws>, documenting arguments for method AssociateFlow in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

