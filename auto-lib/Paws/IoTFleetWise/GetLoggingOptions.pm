
package Paws::IoTFleetWise::GetLoggingOptions;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoggingOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::GetLoggingOptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetLoggingOptions - Arguments for method GetLoggingOptions on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLoggingOptions on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method GetLoggingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLoggingOptions.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $GetLoggingOptionsResponse = $iotfleetwise->GetLoggingOptions();

    # Results:
    my $CloudWatchLogDelivery =
      $GetLoggingOptionsResponse->CloudWatchLogDelivery;

    # Returns a L<Paws::IoTFleetWise::GetLoggingOptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/GetLoggingOptions>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLoggingOptions in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

