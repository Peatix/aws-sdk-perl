
package Paws::IoTTwinMaker::CreateMetadataTransferJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime', required => 1);
  has MetadataTransferJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadataTransferJobId', required => 1);
  has Status => (is => 'ro', isa => 'Paws::IoTTwinMaker::MetadataTransferJobStatus', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::CreateMetadataTransferJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The metadata transfer job ARN.


=head2 B<REQUIRED> CreationDateTime => Str

The The metadata transfer job creation DateTime property.


=head2 B<REQUIRED> MetadataTransferJobId => Str

The metadata transfer job Id.


=head2 B<REQUIRED> Status => L<Paws::IoTTwinMaker::MetadataTransferJobStatus>

The metadata transfer job response status.


=head2 _request_id => Str


=cut

