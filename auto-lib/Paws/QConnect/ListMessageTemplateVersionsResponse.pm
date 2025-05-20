
package Paws::QConnect::ListMessageTemplateVersionsResponse;
  use Moose;
  has MessageTemplateVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::MessageTemplateVersionSummary]', traits => ['NameInRequest'], request_name => 'messageTemplateVersionSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListMessageTemplateVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageTemplateVersionSummaries => ArrayRef[L<Paws::QConnect::MessageTemplateVersionSummary>]

Summary information about the versions of a message template.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

