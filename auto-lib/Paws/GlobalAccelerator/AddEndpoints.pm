
package Paws::GlobalAccelerator::AddEndpoints;
  use Moose;
  has EndpointConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::EndpointConfiguration]', required => 1);
  has EndpointGroupArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::AddEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::AddEndpoints - Arguments for method AddEndpoints on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddEndpoints on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method AddEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddEndpoints.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $AddEndpointsResponse = $globalaccelerator->AddEndpoints(
      EndpointConfigurations => [
        {
          AttachmentArn               => 'MyGenericString', # max: 255; OPTIONAL
          ClientIPPreservationEnabled => 1,                 # OPTIONAL
          EndpointId                  => 'MyGenericString', # max: 255; OPTIONAL
          Weight                      => 1,                 # max: 255; OPTIONAL
        },
        ...
      ],
      EndpointGroupArn => 'MyGenericString',

    );

    # Results:
    my $EndpointDescriptions = $AddEndpointsResponse->EndpointDescriptions;
    my $EndpointGroupArn     = $AddEndpointsResponse->EndpointGroupArn;

    # Returns a L<Paws::GlobalAccelerator::AddEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/AddEndpoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointConfigurations => ArrayRef[L<Paws::GlobalAccelerator::EndpointConfiguration>]

The list of endpoint objects.



=head2 B<REQUIRED> EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddEndpoints in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

