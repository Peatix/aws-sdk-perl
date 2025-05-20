
package Paws::QBusiness::ListDataSourcesResponse;
  use Moose;
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DataSource]', traits => ['NameInRequest'], request_name => 'dataSources');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListDataSourcesResponse

=head1 ATTRIBUTES


=head2 DataSources => ArrayRef[L<Paws::QBusiness::DataSource>]

An array of summary information for one or more data source connector.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token. You
can use this token in a subsequent request to retrieve the next set of
data source connectors.


=head2 _request_id => Str


=cut

