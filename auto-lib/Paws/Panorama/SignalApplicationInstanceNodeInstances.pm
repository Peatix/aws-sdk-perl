
package Paws::Panorama::SignalApplicationInstanceNodeInstances;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationInstanceId', required => 1);
  has NodeSignals => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::NodeSignal]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SignalApplicationInstanceNodeInstances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/application-instances/{ApplicationInstanceId}/node-signals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::SignalApplicationInstanceNodeInstancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::SignalApplicationInstanceNodeInstances - Arguments for method SignalApplicationInstanceNodeInstances on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SignalApplicationInstanceNodeInstances on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method SignalApplicationInstanceNodeInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SignalApplicationInstanceNodeInstances.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $SignalApplicationInstanceNodeInstancesResponse =
      $panorama->SignalApplicationInstanceNodeInstances(
      ApplicationInstanceId => 'MyApplicationInstanceId',
      NodeSignals           => [
        {
          NodeInstanceId => 'MyNodeInstanceId',    # min: 1, max: 128
          Signal         => 'PAUSE',               # values: PAUSE, RESUME

        },
        ...
      ],

      );

    # Results:
    my $ApplicationInstanceId =
      $SignalApplicationInstanceNodeInstancesResponse->ApplicationInstanceId;

# Returns a L<Paws::Panorama::SignalApplicationInstanceNodeInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/SignalApplicationInstanceNodeInstances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationInstanceId => Str

An application instance ID.



=head2 B<REQUIRED> NodeSignals => ArrayRef[L<Paws::Panorama::NodeSignal>]

A list of signals.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SignalApplicationInstanceNodeInstances in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

