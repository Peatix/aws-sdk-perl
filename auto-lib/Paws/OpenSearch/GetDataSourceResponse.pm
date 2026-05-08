
package Paws::OpenSearch::GetDataSourceResponse;
  use Moose;
  has DataSourceType => (is => 'ro', isa => 'Paws::OpenSearch::DataSourceType');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetDataSourceResponse

=head1 ATTRIBUTES


=head2 DataSourceType => L<Paws::OpenSearch::DataSourceType>

The type of data source.


=head2 Description => Str

A description of the data source.


=head2 Name => Str

The name of the data source.


=head2 Status => Str

The status of the data source.

Valid values are: C<"ACTIVE">, C<"DISABLED">
=head2 _request_id => Str


=cut

