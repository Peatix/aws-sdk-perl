
package Paws::LookoutEquipment::ImportDatasetResponse;
  use Moose;
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ImportDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset that was imported.


=head2 DatasetName => Str

The name of the created machine learning dataset.


=head2 JobId => Str

A unique identifier for the job of importing the dataset.


=head2 Status => Str

The status of the C<ImportDataset> operation.

Valid values are: C<"CREATED">, C<"INGESTION_IN_PROGRESS">, C<"ACTIVE">, C<"IMPORT_IN_PROGRESS">
=head2 _request_id => Str


=cut

1;