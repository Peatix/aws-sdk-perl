
package Paws::GameLiftStreams::ListApplicationsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::GameLiftStreams::ApplicationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLiftStreams::ListApplicationsOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::GameLiftStreams::ApplicationSummary>]

A collection of Amazon GameLift Streams applications that are
associated with the Amazon Web Services account in use. Each item
includes application metadata and status.


=head2 NextToken => Str

A token that marks the start of the next sequential page of results. If
an operation doesn't return a token, you've reached the end of the
list.


=head2 _request_id => Str


=cut

