
package Paws::Synthetics::StopCanary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopCanary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/canary/{name}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::StopCanaryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::StopCanary - Arguments for method StopCanary on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopCanary on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method StopCanary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopCanary.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $StopCanaryResponse = $synthetics->StopCanary(
      Name => 'MyCanaryName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/StopCanary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the canary that you want to stop. To find the names of your
canaries, use ListCanaries
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopCanary in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

