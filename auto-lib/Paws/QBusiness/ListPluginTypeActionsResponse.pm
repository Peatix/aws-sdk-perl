
package Paws::QBusiness::ListPluginTypeActionsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::ActionSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListPluginTypeActionsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::QBusiness::ActionSummary>]

An array of information on one or more plugins.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token,
which you can use in a later request to list the next set of plugins.


=head2 _request_id => Str


=cut

