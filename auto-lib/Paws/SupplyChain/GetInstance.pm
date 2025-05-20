
package Paws::SupplyChain::GetInstance;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/instance/{instanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::GetInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetInstance - Arguments for method GetInstance on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstance on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method GetInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstance.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $GetInstanceResponse = $scn->GetInstance(
      InstanceId => 'MyUUID',

    );

    # Results:
    my $Instance = $GetInstanceResponse->Instance;

    # Returns a L<Paws::SupplyChain::GetInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/GetInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstance in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

