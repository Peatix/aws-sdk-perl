
package Paws::IoTTwinMaker::GetMetadataTransferJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Destination => (is => 'ro', isa => 'Paws::IoTTwinMaker::DestinationConfiguration', traits => ['NameInRequest'], request_name => 'destination', required => 1);
  has MetadataTransferJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadataTransferJobId', required => 1);
  has MetadataTransferJobRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadataTransferJobRole', required => 1);
  has Progress => (is => 'ro', isa => 'Paws::IoTTwinMaker::MetadataTransferJobProgress', traits => ['NameInRequest'], request_name => 'progress');
  has ReportUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportUrl');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::SourceConfiguration]', traits => ['NameInRequest'], request_name => 'sources', required => 1);
  has Status => (is => 'ro', isa => 'Paws::IoTTwinMaker::MetadataTransferJobStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has UpdateDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateDateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::GetMetadataTransferJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The metadata transfer job ARN.


=head2 B<REQUIRED> CreationDateTime => Str

The metadata transfer job's creation DateTime property.


=head2 Description => Str

The metadata transfer job description.


=head2 B<REQUIRED> Destination => L<Paws::IoTTwinMaker::DestinationConfiguration>

The metadata transfer job's destination.


=head2 B<REQUIRED> MetadataTransferJobId => Str

The metadata transfer job Id.


=head2 B<REQUIRED> MetadataTransferJobRole => Str

The metadata transfer job's role.


=head2 Progress => L<Paws::IoTTwinMaker::MetadataTransferJobProgress>

The metadata transfer job's progress.


=head2 ReportUrl => Str

The metadata transfer job's report URL.


=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::IoTTwinMaker::SourceConfiguration>]

The metadata transfer job's sources.


=head2 B<REQUIRED> Status => L<Paws::IoTTwinMaker::MetadataTransferJobStatus>

The metadata transfer job's status.


=head2 B<REQUIRED> UpdateDateTime => Str

The metadata transfer job's update DateTime property.


=head2 _request_id => Str


=cut

