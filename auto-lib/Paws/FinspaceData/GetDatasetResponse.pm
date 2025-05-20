
package Paws::FinspaceData::GetDatasetResponse;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alias');
  has CreateTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'createTime');
  has DatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetArn');
  has DatasetDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetDescription');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetId');
  has DatasetTitle => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetTitle');
  has Kind => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kind');
  has LastModifiedTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has SchemaDefinition => (is => 'ro', isa => 'Paws::FinspaceData::SchemaUnion', traits => ['NameInRequest'], request_name => 'schemaDefinition');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetDatasetResponse

=head1 ATTRIBUTES


=head2 Alias => Str

The unique resource identifier for a Dataset.


=head2 CreateTime => Int

The timestamp at which the Dataset was created in FinSpace. The value
is determined as epoch time in milliseconds. For example, the value for
Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 DatasetArn => Str

The ARN identifier of the Dataset.


=head2 DatasetDescription => Str

A description of the Dataset.


=head2 DatasetId => Str

The unique identifier for a Dataset.


=head2 DatasetTitle => Str

Display title for a Dataset.


=head2 Kind => Str

The format in which Dataset data is structured.

=over

=item *

C<TABULAR> E<ndash> Data is structured in a tabular format.

=item *

C<NON_TABULAR> E<ndash> Data is structured in a non-tabular format.

=back


Valid values are: C<"TABULAR">, C<"NON_TABULAR">
=head2 LastModifiedTime => Int

The last time that the Dataset was modified. The value is determined as
epoch time in milliseconds. For example, the value for Monday, November
1, 2021 12:00:00 PM UTC is specified as 1635768000000.


=head2 SchemaDefinition => L<Paws::FinspaceData::SchemaUnion>

Definition for a schema on a tabular Dataset.


=head2 Status => Str

Status of the Dataset creation.

=over

=item *

C<PENDING> E<ndash> Dataset is pending creation.

=item *

C<FAILED> E<ndash> Dataset creation has failed.

=item *

C<SUCCESS> E<ndash> Dataset creation has succeeded.

=item *

C<RUNNING> E<ndash> Dataset creation is running.

=back


Valid values are: C<"PENDING">, C<"FAILED">, C<"SUCCESS">, C<"RUNNING">
=head2 _request_id => Str


=cut

