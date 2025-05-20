
package Paws::WorkMail::ListMailDomainsResponse;
  use Moose;
  has MailDomains => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::MailDomainSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListMailDomainsResponse

=head1 ATTRIBUTES


=head2 MailDomains => ArrayRef[L<Paws::WorkMail::MailDomainSummary>]

The list of mail domain summaries, specifying domains that exist in the
specified WorkMail organization, along with the information about
whether the domain is or isn't the default.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value
becomes C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;