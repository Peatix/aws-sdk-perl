
package Paws::CostOptimizationHub::UpdateEnrollmentStatusResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::UpdateEnrollmentStatusResponse

=head1 ATTRIBUTES


=head2 Status => Str

The enrollment status of the account.


=head2 _request_id => Str


=cut

1;