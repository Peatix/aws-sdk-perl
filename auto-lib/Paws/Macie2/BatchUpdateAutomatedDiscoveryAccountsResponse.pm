
package Paws::Macie2::BatchUpdateAutomatedDiscoveryAccountsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::AutomatedDiscoveryAccountUpdateError]', traits => ['NameInRequest'], request_name => 'errors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::BatchUpdateAutomatedDiscoveryAccountsResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::Macie2::AutomatedDiscoveryAccountUpdateError>]

An array of objects, one for each account whose status wasnE<rsquo>t
changed. Each object identifies the account and explains why the status
of automated sensitive data discovery wasnE<rsquo>t changed for the
account. This value is null if the request succeeded for all specified
accounts.


=head2 _request_id => Str


=cut

