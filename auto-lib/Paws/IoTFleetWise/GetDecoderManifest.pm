
package Paws::IoTFleetWise::GetDecoderManifest;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDecoderManifest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::GetDecoderManifestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetDecoderManifest - Arguments for method GetDecoderManifest on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDecoderManifest on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method GetDecoderManifest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDecoderManifest.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $GetDecoderManifestResponse = $iotfleetwise->GetDecoderManifest(
      Name => 'MyresourceName',

    );

    # Results:
    my $Arn          = $GetDecoderManifestResponse->Arn;
    my $CreationTime = $GetDecoderManifestResponse->CreationTime;
    my $Description  = $GetDecoderManifestResponse->Description;
    my $LastModificationTime =
      $GetDecoderManifestResponse->LastModificationTime;
    my $Message          = $GetDecoderManifestResponse->Message;
    my $ModelManifestArn = $GetDecoderManifestResponse->ModelManifestArn;
    my $Name             = $GetDecoderManifestResponse->Name;
    my $Status           = $GetDecoderManifestResponse->Status;

    # Returns a L<Paws::IoTFleetWise::GetDecoderManifestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/GetDecoderManifest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the decoder manifest to retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDecoderManifest in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

