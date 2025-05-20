
package Paws::SupplyChain::DeleteInstance;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/instance/{instanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::DeleteInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::DeleteInstance - Arguments for method DeleteInstance on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInstance on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method DeleteInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInstance.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $DeleteInstanceResponse = $scn->DeleteInstance(
      InstanceId => 'MyUUID',

    );

    # Results:
    my $Instance = $DeleteInstanceResponse->Instance;

    # Returns a L<Paws::SupplyChain::DeleteInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/DeleteInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInstance in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

