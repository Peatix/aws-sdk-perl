
package Paws::SsmSap::ListDatabasesOutput;
  use Moose;
  has Databases => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::DatabaseSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::ListDatabasesOutput

=head1 ATTRIBUTES


=head2 Databases => ArrayRef[L<Paws::SsmSap::DatabaseSummary>]

The SAP HANA databases of an application.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

