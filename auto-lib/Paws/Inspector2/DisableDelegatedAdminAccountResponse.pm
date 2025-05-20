
package Paws::Inspector2::DisableDelegatedAdminAccountResponse;
  use Moose;
  has DelegatedAdminAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'delegatedAdminAccountId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::DisableDelegatedAdminAccountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegatedAdminAccountId => Str

The Amazon Web Services account ID of the successfully disabled
delegated administrator.


=head2 _request_id => Str


=cut

