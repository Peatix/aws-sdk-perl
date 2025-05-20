
package Paws::IoTFleetWise::UpdateCampaign;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action' , required => 1);
  has DataExtraDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'dataExtraDimensions' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCampaign');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::UpdateCampaignResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::UpdateCampaign - Arguments for method UpdateCampaign on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCampaign on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method UpdateCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCampaign.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $UpdateCampaignResponse = $iotfleetwise->UpdateCampaign(
      Action              => 'APPROVE',
      Name                => 'MycampaignName',
      DataExtraDimensions => [
        'MyNodePath', ...    # min: 1, max: 150
      ],    # OPTIONAL
      Description => 'Mydescription',    # OPTIONAL
    );

    # Results:
    my $Arn    = $UpdateCampaignResponse->Arn;
    my $Name   = $UpdateCampaignResponse->Name;
    my $Status = $UpdateCampaignResponse->Status;

    # Returns a L<Paws::IoTFleetWise::UpdateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/UpdateCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

Specifies how to update a campaign. The action can be one of the
following:

=over

=item *

C<APPROVE> - To approve delivering a data collection scheme to
vehicles.

=item *

C<SUSPEND> - To suspend collecting signal data. The campaign is deleted
from vehicles and all vehicles in the suspended campaign will stop
sending data.

=item *

C<RESUME> - To reactivate the C<SUSPEND> campaign. The campaign is
redeployed to all vehicles and the vehicles will resume sending data.

=item *

C<UPDATE> - To update a campaign.

=back


Valid values are: C<"APPROVE">, C<"SUSPEND">, C<"RESUME">, C<"UPDATE">

=head2 DataExtraDimensions => ArrayRef[Str|Undef]

A list of vehicle attributes to associate with a signal.

Default: An empty array



=head2 Description => Str

The description of the campaign.



=head2 B<REQUIRED> Name => Str

The name of the campaign to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCampaign in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

