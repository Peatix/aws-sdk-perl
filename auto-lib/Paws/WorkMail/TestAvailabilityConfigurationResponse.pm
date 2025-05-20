
package Paws::WorkMail::TestAvailabilityConfigurationResponse;
  use Moose;
  has FailureReason => (is => 'ro', isa => 'Str');
  has TestPassed => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::TestAvailabilityConfigurationResponse

=head1 ATTRIBUTES


=head2 FailureReason => Str

String containing the reason for a failed test if C<TestPassed> is
false.


=head2 TestPassed => Bool

Boolean indicating whether the test passed or failed.


=head2 _request_id => Str


=cut

1;