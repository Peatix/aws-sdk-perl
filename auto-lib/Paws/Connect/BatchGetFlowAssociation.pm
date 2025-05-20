
package Paws::Connect::BatchGetFlowAssociation;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetFlowAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/flow-associations-batch/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::BatchGetFlowAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchGetFlowAssociation - Arguments for method BatchGetFlowAssociation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetFlowAssociation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method BatchGetFlowAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetFlowAssociation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $BatchGetFlowAssociationResponse = $connect->BatchGetFlowAssociation(
      InstanceId   => 'MyInstanceId',
      ResourceIds  => [ 'MyARN', ... ],
      ResourceType => 'WHATSAPP_MESSAGING_PHONE_NUMBER',    # OPTIONAL
    );

    # Results:
    my $FlowAssociationSummaryList =
      $BatchGetFlowAssociationResponse->FlowAssociationSummaryList;

    # Returns a L<Paws::Connect::BatchGetFlowAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/BatchGetFlowAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> ResourceIds => ArrayRef[Str|Undef]

A list of resource identifiers to retrieve flow associations.

=over

=item *

Amazon Web Services End User Messaging SMS phone number ARN when using
C<SMS_PHONE_NUMBER>

=item *

Amazon Web Services End User Messaging Social phone number ARN when
using C<WHATSAPP_MESSAGING_PHONE_NUMBER>

=back




=head2 ResourceType => Str

The type of resource association.

Valid values are: C<"WHATSAPP_MESSAGING_PHONE_NUMBER">, C<"VOICE_PHONE_NUMBER">, C<"INBOUND_EMAIL">, C<"OUTBOUND_EMAIL">, C<"ANALYTICS_CONNECTOR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetFlowAssociation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

