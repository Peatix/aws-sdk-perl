
package Paws::CloudFormation::ListGeneratedTemplatesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::TemplateSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListGeneratedTemplatesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all the remaining results, C<NextToken>
is set to a token. To retrieve the next set of results, call
C<ListGeneratedTemplates> again and use that value for the C<NextToken>
parameter. If the request returns all results, C<NextToken> is set to
an empty string.


=head2 Summaries => ArrayRef[L<Paws::CloudFormation::TemplateSummary>]

A list of summaries of the generated templates.


=head2 _request_id => Str


=cut

