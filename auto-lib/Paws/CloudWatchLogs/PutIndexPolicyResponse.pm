
package Paws::CloudWatchLogs::PutIndexPolicyResponse;
  use Moose;
  has IndexPolicy => (is => 'ro', isa => 'Paws::CloudWatchLogs::IndexPolicy', traits => ['NameInRequest'], request_name => 'indexPolicy' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutIndexPolicyResponse

=head1 ATTRIBUTES


=head2 IndexPolicy => L<Paws::CloudWatchLogs::IndexPolicy>

The index policy that you just created or updated.


=head2 _request_id => Str


=cut

1;