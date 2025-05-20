
package Paws::CloudWatchLogs::PutAccountPolicyResponse;
  use Moose;
  has AccountPolicy => (is => 'ro', isa => 'Paws::CloudWatchLogs::AccountPolicy', traits => ['NameInRequest'], request_name => 'accountPolicy' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutAccountPolicyResponse

=head1 ATTRIBUTES


=head2 AccountPolicy => L<Paws::CloudWatchLogs::AccountPolicy>

The account policy that you created.


=head2 _request_id => Str


=cut

1;