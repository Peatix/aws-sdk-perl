
package Paws::IoTTwinMaker::CancelMetadataTransferJob;
  use Moose;
  has MetadataTransferJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'metadataTransferJobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelMetadataTransferJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metadata-transfer-jobs/{metadataTransferJobId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::CancelMetadataTransferJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CancelMetadataTransferJob - Arguments for method CancelMetadataTransferJob on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelMetadataTransferJob on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method CancelMetadataTransferJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelMetadataTransferJob.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $CancelMetadataTransferJobResponse =
      $iottwinmaker->CancelMetadataTransferJob(
      MetadataTransferJobId => 'MyId',

      );

    # Results:
    my $Arn = $CancelMetadataTransferJobResponse->Arn;
    my $MetadataTransferJobId =
      $CancelMetadataTransferJobResponse->MetadataTransferJobId;
    my $Progress       = $CancelMetadataTransferJobResponse->Progress;
    my $Status         = $CancelMetadataTransferJobResponse->Status;
    my $UpdateDateTime = $CancelMetadataTransferJobResponse->UpdateDateTime;

    # Returns a L<Paws::IoTTwinMaker::CancelMetadataTransferJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/CancelMetadataTransferJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetadataTransferJobId => Str

The metadata transfer job Id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelMetadataTransferJob in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

