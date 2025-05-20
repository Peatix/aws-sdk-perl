
package Paws::Connect::CreateContactFlow;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContactFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact-flows/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateContactFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateContactFlow - Arguments for method CreateContactFlow on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContactFlow on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateContactFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContactFlow.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateContactFlowResponse = $connect->CreateContactFlow(
      Content     => 'MyContactFlowContent',
      InstanceId  => 'MyInstanceId',
      Name        => 'MyContactFlowName',
      Type        => 'CONTACT_FLOW',
      Description => 'MyContactFlowDescription',    # OPTIONAL
      Status      => 'PUBLISHED',                   # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ContactFlowArn    = $CreateContactFlowResponse->ContactFlowArn;
    my $ContactFlowId     = $CreateContactFlowResponse->ContactFlowId;
    my $FlowContentSha256 = $CreateContactFlowResponse->FlowContentSha256;

    # Returns a L<Paws::Connect::CreateContactFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateContactFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The JSON string that represents the content of the flow. For an
example, see Example flow in Amazon Connect Flow language
(https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html).

Length Constraints: Minimum length of 1. Maximum length of 256000.



=head2 Description => Str

The description of the flow.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> Name => Str

The name of the flow.



=head2 Status => Str

Indicates the flow status as either C<SAVED> or C<PUBLISHED>. The
C<PUBLISHED> status will initiate validation on the content. the
C<SAVED> status does not initiate validation of the content. C<SAVED> |
C<PUBLISHED>.

Valid values are: C<"PUBLISHED">, C<"SAVED">

=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.



=head2 B<REQUIRED> Type => Str

The type of the flow. For descriptions of the available types, see
Choose a flow type
(https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types)
in the I<Amazon Connect Administrator Guide>.

Valid values are: C<"CONTACT_FLOW">, C<"CUSTOMER_QUEUE">, C<"CUSTOMER_HOLD">, C<"CUSTOMER_WHISPER">, C<"AGENT_HOLD">, C<"AGENT_WHISPER">, C<"OUTBOUND_WHISPER">, C<"AGENT_TRANSFER">, C<"QUEUE_TRANSFER">, C<"CAMPAIGN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContactFlow in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

