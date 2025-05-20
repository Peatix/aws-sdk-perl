
package Paws::Inspector2::GetDelegatedAdminAccountResponse;
  use Moose;
  has DelegatedAdmin => (is => 'ro', isa => 'Paws::Inspector2::DelegatedAdmin', traits => ['NameInRequest'], request_name => 'delegatedAdmin');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetDelegatedAdminAccountResponse

=head1 ATTRIBUTES


=head2 DelegatedAdmin => L<Paws::Inspector2::DelegatedAdmin>

The Amazon Web Services account ID of the Amazon Inspector delegated
administrator.


=head2 _request_id => Str


=cut

