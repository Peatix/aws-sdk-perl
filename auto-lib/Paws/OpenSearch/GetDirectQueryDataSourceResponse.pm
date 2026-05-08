
package Paws::OpenSearch::GetDirectQueryDataSourceResponse;
  use Moose;
  has DataSourceArn => (is => 'ro', isa => 'Str');
  has DataSourceName => (is => 'ro', isa => 'Str');
  has DataSourceType => (is => 'ro', isa => 'Paws::OpenSearch::DirectQueryDataSourceType');
  has Description => (is => 'ro', isa => 'Str');
  has OpenSearchArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetDirectQueryDataSourceResponse

=head1 ATTRIBUTES


=head2 DataSourceArn => Str

The unique, system-generated identifier that represents the data
source.


=head2 DataSourceName => Str

A unique, user-defined label to identify the data source within your
OpenSearch Service environment.


=head2 DataSourceType => L<Paws::OpenSearch::DirectQueryDataSourceType>

The supported Amazon Web Services service that is used as the source
for direct queries in OpenSearch Service.


=head2 Description => Str

A description that provides additional context and details about the
data source.


=head2 OpenSearchArns => ArrayRef[Str|Undef]

A list of Amazon Resource Names (ARNs) for the OpenSearch collections
that are associated with the direct query data source.


=head2 _request_id => Str


=cut

