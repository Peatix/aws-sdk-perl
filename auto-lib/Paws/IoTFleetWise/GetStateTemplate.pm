
package Paws::IoTFleetWise::GetStateTemplate;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStateTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::GetStateTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetStateTemplate - Arguments for method GetStateTemplate on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetStateTemplate on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method GetStateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetStateTemplate.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $GetStateTemplateResponse = $iotfleetwise->GetStateTemplate(
      Identifier => 'MyResourceIdentifier',

    );

    # Results:
    my $Arn                  = $GetStateTemplateResponse->Arn;
    my $CreationTime         = $GetStateTemplateResponse->CreationTime;
    my $DataExtraDimensions  = $GetStateTemplateResponse->DataExtraDimensions;
    my $Description          = $GetStateTemplateResponse->Description;
    my $Id                   = $GetStateTemplateResponse->Id;
    my $LastModificationTime = $GetStateTemplateResponse->LastModificationTime;
    my $MetadataExtraDimensions =
      $GetStateTemplateResponse->MetadataExtraDimensions;
    my $Name             = $GetStateTemplateResponse->Name;
    my $SignalCatalogArn = $GetStateTemplateResponse->SignalCatalogArn;
    my $StateTemplateProperties =
      $GetStateTemplateResponse->StateTemplateProperties;

    # Returns a L<Paws::IoTFleetWise::GetStateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/GetStateTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The unique ID of the state template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetStateTemplate in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

