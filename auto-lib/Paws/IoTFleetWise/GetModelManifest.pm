
package Paws::IoTFleetWise::GetModelManifest;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModelManifest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::GetModelManifestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetModelManifest - Arguments for method GetModelManifest on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModelManifest on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method GetModelManifest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModelManifest.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $GetModelManifestResponse = $iotfleetwise->GetModelManifest(
      Name => 'MyresourceName',

    );

    # Results:
    my $Arn                  = $GetModelManifestResponse->Arn;
    my $CreationTime         = $GetModelManifestResponse->CreationTime;
    my $Description          = $GetModelManifestResponse->Description;
    my $LastModificationTime = $GetModelManifestResponse->LastModificationTime;
    my $Name                 = $GetModelManifestResponse->Name;
    my $SignalCatalogArn     = $GetModelManifestResponse->SignalCatalogArn;
    my $Status               = $GetModelManifestResponse->Status;

    # Returns a L<Paws::IoTFleetWise::GetModelManifestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/GetModelManifest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the vehicle model to retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModelManifest in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

