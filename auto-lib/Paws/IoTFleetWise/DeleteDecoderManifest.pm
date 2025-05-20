
package Paws::IoTFleetWise::DeleteDecoderManifest;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDecoderManifest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::DeleteDecoderManifestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::DeleteDecoderManifest - Arguments for method DeleteDecoderManifest on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDecoderManifest on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method DeleteDecoderManifest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDecoderManifest.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $DeleteDecoderManifestResponse = $iotfleetwise->DeleteDecoderManifest(
      Name => 'MyresourceName',

    );

    # Results:
    my $Arn  = $DeleteDecoderManifestResponse->Arn;
    my $Name = $DeleteDecoderManifestResponse->Name;

    # Returns a L<Paws::IoTFleetWise::DeleteDecoderManifestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/DeleteDecoderManifest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the decoder manifest to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDecoderManifest in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

