
package Paws::Drs::ListStagingAccountsResponse;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Paws::Drs::Account]', traits => ['NameInRequest'], request_name => 'accounts');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::ListStagingAccountsResponse

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[L<Paws::Drs::Account>]

An array of staging AWS Accounts.


=head2 NextToken => Str

The token of the next staging Account to retrieve.


=head2 _request_id => Str


=cut

