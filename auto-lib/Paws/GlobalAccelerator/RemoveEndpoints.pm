
package Paws::GlobalAccelerator::RemoveEndpoints;
  use Moose;
  has EndpointGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::EndpointIdentifier]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::RemoveEndpoints - Arguments for method RemoveEndpoints on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveEndpoints on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method RemoveEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveEndpoints.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    $globalaccelerator->RemoveEndpoints(
      EndpointGroupArn    => 'MyGenericString',
      EndpointIdentifiers => [
        {
          EndpointId                  => 'MyGenericString',    # max: 255
          ClientIPPreservationEnabled => 1,                    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/RemoveEndpoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group.



=head2 B<REQUIRED> EndpointIdentifiers => ArrayRef[L<Paws::GlobalAccelerator::EndpointIdentifier>]

The identifiers of the endpoints that you want to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveEndpoints in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

