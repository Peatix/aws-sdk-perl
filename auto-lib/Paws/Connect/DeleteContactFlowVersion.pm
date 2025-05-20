
package Paws::Connect::DeleteContactFlowVersion;
  use Moose;
  has ContactFlowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactFlowId', required => 1);
  has ContactFlowVersion => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'ContactFlowVersion', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteContactFlowVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact-flows/{InstanceId}/{ContactFlowId}/version/{ContactFlowVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DeleteContactFlowVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DeleteContactFlowVersion - Arguments for method DeleteContactFlowVersion on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteContactFlowVersion on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DeleteContactFlowVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteContactFlowVersion.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DeleteContactFlowVersionResponse = $connect->DeleteContactFlowVersion(
      ContactFlowId      => 'MyARN',
      ContactFlowVersion => 1,
      InstanceId         => 'MyInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DeleteContactFlowVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the flow.



=head2 B<REQUIRED> ContactFlowVersion => Int

The identifier of the flow version.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteContactFlowVersion in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

