
package Paws::Appflow::ListConnectorsResponse;
  use Moose;
  has Connectors => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::ConnectorDetail]', traits => ['NameInRequest'], request_name => 'connectors');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ListConnectorsResponse

=head1 ATTRIBUTES


=head2 Connectors => ArrayRef[L<Paws::Appflow::ConnectorDetail>]

Contains information about the connectors supported by Amazon AppFlow.


=head2 NextToken => Str

The pagination token for the next page of data. If nextToken=null, this
means that all records have been fetched.


=head2 _request_id => Str


=cut

