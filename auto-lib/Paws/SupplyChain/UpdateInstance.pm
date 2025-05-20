
package Paws::SupplyChain::UpdateInstance;
  use Moose;
  has InstanceDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceDescription');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/instance/{instanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::UpdateInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::UpdateInstance - Arguments for method UpdateInstance on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstance on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method UpdateInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstance.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $UpdateInstanceResponse = $scn->UpdateInstance(
      InstanceId          => 'MyUUID',
      InstanceDescription => 'MyInstanceDescription',    # OPTIONAL
      InstanceName        => 'MyInstanceName',           # OPTIONAL
    );

    # Results:
    my $Instance = $UpdateInstanceResponse->Instance;

    # Returns a L<Paws::SupplyChain::UpdateInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/UpdateInstance>

=head1 ATTRIBUTES


=head2 InstanceDescription => Str

The AWS Supply Chain instance description.



=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.



=head2 InstanceName => Str

The AWS Supply Chain instance name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstance in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

