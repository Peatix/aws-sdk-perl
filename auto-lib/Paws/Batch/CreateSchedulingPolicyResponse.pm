
package Paws::Batch::CreateSchedulingPolicyResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateSchedulingPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the scheduling policy. The format is
C<aws:I<Partition>:batch:I<Region>:I<Account>:scheduling-policy/I<Name>
>. For example,
C<aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy>.


=head2 B<REQUIRED> Name => Str

The name of the scheduling policy.


=head2 _request_id => Str


=cut

