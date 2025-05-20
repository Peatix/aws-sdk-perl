
package Paws::QConnect::ListMessageTemplatesResponse;
  use Moose;
  has MessageTemplateSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::MessageTemplateSummary]', traits => ['NameInRequest'], request_name => 'messageTemplateSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListMessageTemplatesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageTemplateSummaries => ArrayRef[L<Paws::QConnect::MessageTemplateSummary>]

Summary information about the message template.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

