
package Paws::IoTTwinMaker::CancelMetadataTransferJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has MetadataTransferJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadataTransferJobId', required => 1);
  has Progress => (is => 'ro', isa => 'Paws::IoTTwinMaker::MetadataTransferJobProgress', traits => ['NameInRequest'], request_name => 'progress');
  has Status => (is => 'ro', isa => 'Paws::IoTTwinMaker::MetadataTransferJobStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CancelMetadataTransferJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The metadata transfer job ARN.


=head2 B<REQUIRED> MetadataTransferJobId => Str

The metadata transfer job Id.


=head2 Progress => L<Paws::IoTTwinMaker::MetadataTransferJobProgress>

The metadata transfer job's progress.


=head2 B<REQUIRED> Status => L<Paws::IoTTwinMaker::MetadataTransferJobStatus>

The metadata transfer job's status.


=head2 B<REQUIRED> UpdateDateTime => Str

Used to update the DateTime property.


=head2 _request_id => Str


=cut

