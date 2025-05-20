
package Paws::IoTFleetWise::GetCampaign;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCampaign');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::GetCampaignResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetCampaign - Arguments for method GetCampaign on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCampaign on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method GetCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCampaign.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $GetCampaignResponse = $iotfleetwise->GetCampaign(
      Name => 'MycampaignName',

    );

    # Results:
    my $Arn                    = $GetCampaignResponse->Arn;
    my $CollectionScheme       = $GetCampaignResponse->CollectionScheme;
    my $Compression            = $GetCampaignResponse->Compression;
    my $CreationTime           = $GetCampaignResponse->CreationTime;
    my $DataDestinationConfigs = $GetCampaignResponse->DataDestinationConfigs;
    my $DataExtraDimensions    = $GetCampaignResponse->DataExtraDimensions;
    my $DataPartitions         = $GetCampaignResponse->DataPartitions;
    my $Description            = $GetCampaignResponse->Description;
    my $DiagnosticsMode        = $GetCampaignResponse->DiagnosticsMode;
    my $ExpiryTime             = $GetCampaignResponse->ExpiryTime;
    my $LastModificationTime   = $GetCampaignResponse->LastModificationTime;
    my $Name                   = $GetCampaignResponse->Name;
    my $PostTriggerCollectionDuration =
      $GetCampaignResponse->PostTriggerCollectionDuration;
    my $Priority         = $GetCampaignResponse->Priority;
    my $SignalCatalogArn = $GetCampaignResponse->SignalCatalogArn;
    my $SignalsToCollect = $GetCampaignResponse->SignalsToCollect;
    my $SignalsToFetch   = $GetCampaignResponse->SignalsToFetch;
    my $SpoolingMode     = $GetCampaignResponse->SpoolingMode;
    my $StartTime        = $GetCampaignResponse->StartTime;
    my $Status           = $GetCampaignResponse->Status;
    my $TargetArn        = $GetCampaignResponse->TargetArn;

    # Returns a L<Paws::IoTFleetWise::GetCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/GetCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the campaign to retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCampaign in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

