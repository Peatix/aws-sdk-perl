
package Paws::M2::GetDataSetDetailsResponse;
  use Moose;
  has Blocksize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'blocksize');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has DataSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSetName', required => 1);
  has DataSetOrg => (is => 'ro', isa => 'Paws::M2::DatasetDetailOrgAttributes', traits => ['NameInRequest'], request_name => 'dataSetOrg');
  has FileSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'fileSize');
  has LastReferencedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastReferencedTime');
  has LastUpdatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedTime');
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location');
  has RecordLength => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'recordLength');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetDataSetDetailsResponse

=head1 ATTRIBUTES


=head2 Blocksize => Int

The size of the block on disk.


=head2 CreationTime => Str

The timestamp when the data set was created.


=head2 B<REQUIRED> DataSetName => Str

The name of the data set.


=head2 DataSetOrg => L<Paws::M2::DatasetDetailOrgAttributes>

The type of data set. The only supported value is VSAM.


=head2 FileSize => Int

File size of the dataset.


=head2 LastReferencedTime => Str

The last time the data set was referenced.


=head2 LastUpdatedTime => Str

The last time the data set was updated.


=head2 Location => Str

The location where the data set is stored.


=head2 RecordLength => Int

The length of records in the data set.


=head2 _request_id => Str


=cut

