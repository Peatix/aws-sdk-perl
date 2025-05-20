
package Paws::RedshiftServerless::GetUsageLimitResponse;
  use Moose;
  has UsageLimit => (is => 'ro', isa => 'Paws::RedshiftServerless::UsageLimit', traits => ['NameInRequest'], request_name => 'usageLimit' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetUsageLimitResponse

=head1 ATTRIBUTES


=head2 UsageLimit => L<Paws::RedshiftServerless::UsageLimit>

The returned usage limit object.


=head2 _request_id => Str


=cut

1;