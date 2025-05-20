
package Paws::IoTTwinMaker::GetMetadataTransferJob;
  use Moose;
  has MetadataTransferJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'metadataTransferJobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetadataTransferJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metadata-transfer-jobs/{metadataTransferJobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::GetMetadataTransferJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetMetadataTransferJob - Arguments for method GetMetadataTransferJob on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetadataTransferJob on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method GetMetadataTransferJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetadataTransferJob.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $GetMetadataTransferJobResponse = $iottwinmaker->GetMetadataTransferJob(
      MetadataTransferJobId => 'MyId',

    );

    # Results:
    my $Arn              = $GetMetadataTransferJobResponse->Arn;
    my $CreationDateTime = $GetMetadataTransferJobResponse->CreationDateTime;
    my $Description      = $GetMetadataTransferJobResponse->Description;
    my $Destination      = $GetMetadataTransferJobResponse->Destination;
    my $MetadataTransferJobId =
      $GetMetadataTransferJobResponse->MetadataTransferJobId;
    my $MetadataTransferJobRole =
      $GetMetadataTransferJobResponse->MetadataTransferJobRole;
    my $Progress       = $GetMetadataTransferJobResponse->Progress;
    my $ReportUrl      = $GetMetadataTransferJobResponse->ReportUrl;
    my $Sources        = $GetMetadataTransferJobResponse->Sources;
    my $Status         = $GetMetadataTransferJobResponse->Status;
    my $UpdateDateTime = $GetMetadataTransferJobResponse->UpdateDateTime;

    # Returns a L<Paws::IoTTwinMaker::GetMetadataTransferJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/GetMetadataTransferJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetadataTransferJobId => Str

The metadata transfer job Id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetadataTransferJob in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

