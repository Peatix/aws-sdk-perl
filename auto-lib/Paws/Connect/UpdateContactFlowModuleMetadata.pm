
package Paws::Connect::UpdateContactFlowModuleMetadata;
  use Moose;
  has ContactFlowModuleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactFlowModuleId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContactFlowModuleMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateContactFlowModuleMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateContactFlowModuleMetadata - Arguments for method UpdateContactFlowModuleMetadata on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContactFlowModuleMetadata on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateContactFlowModuleMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContactFlowModuleMetadata.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateContactFlowModuleMetadataResponse =
      $connect->UpdateContactFlowModuleMetadata(
      ContactFlowModuleId => 'MyContactFlowModuleId',
      InstanceId          => 'MyInstanceId',
      Description         => 'MyContactFlowModuleDescription',    # OPTIONAL
      Name                => 'MyContactFlowModuleName',           # OPTIONAL
      State               => 'ACTIVE',                            # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateContactFlowModuleMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactFlowModuleId => Str

The identifier of the flow module.



=head2 Description => Str

The description of the flow module.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 Name => Str

The name of the flow module.



=head2 State => Str

The state of flow module.

Valid values are: C<"ACTIVE">, C<"ARCHIVED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContactFlowModuleMetadata in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

