
package Paws::SES::SendBulkTemplatedEmailResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'ArrayRef[Paws::SES::BulkEmailDestinationStatus]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendBulkTemplatedEmailResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => ArrayRef[L<Paws::SES::BulkEmailDestinationStatus>]

One object per intended recipient. Check each response object and retry
any messages with a failure status. (Note that order of responses will
be respective to order of destinations in the request.)Receipt rules
enable you to specify which actions


=head2 _request_id => Str


=cut

