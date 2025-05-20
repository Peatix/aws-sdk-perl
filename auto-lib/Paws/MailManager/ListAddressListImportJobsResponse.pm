
package Paws::MailManager::ListAddressListImportJobsResponse;
  use Moose;
  has ImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::ImportJob]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListAddressListImportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobs => ArrayRef[L<Paws::MailManager::ImportJob>]

The list of import jobs.


=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;