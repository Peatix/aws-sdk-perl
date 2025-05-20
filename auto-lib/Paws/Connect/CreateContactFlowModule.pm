
package Paws::Connect::CreateContactFlowModule;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContactFlowModule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact-flow-modules/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateContactFlowModuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateContactFlowModule - Arguments for method CreateContactFlowModule on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContactFlowModule on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateContactFlowModule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContactFlowModule.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateContactFlowModuleResponse = $connect->CreateContactFlowModule(
      Content     => 'MyContactFlowModuleContent',
      InstanceId  => 'MyInstanceId',
      Name        => 'MyContactFlowModuleName',
      ClientToken => 'MyClientToken',                     # OPTIONAL
      Description => 'MyContactFlowModuleDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateContactFlowModuleResponse->Arn;
    my $Id  = $CreateContactFlowModuleResponse->Id;

    # Returns a L<Paws::Connect::CreateContactFlowModuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateContactFlowModule>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> Content => Str

The JSON string that represents the content of the flow. For an
example, see Example flow in Amazon Connect Flow language
(https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html).



=head2 Description => Str

The description of the flow module.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Name => Str

The name of the flow module.



=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContactFlowModule in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

