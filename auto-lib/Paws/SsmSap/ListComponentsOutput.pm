
package Paws::SsmSap::ListComponentsOutput;
  use Moose;
  has Components => (is => 'ro', isa => 'ArrayRef[Paws::SsmSap::ComponentSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::ListComponentsOutput

=head1 ATTRIBUTES


=head2 Components => ArrayRef[L<Paws::SsmSap::ComponentSummary>]

List of components registered with AWS System Manager for SAP.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

