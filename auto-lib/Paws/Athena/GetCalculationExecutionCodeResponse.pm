
package Paws::Athena::GetCalculationExecutionCodeResponse;
  use Moose;
  has CodeBlock => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetCalculationExecutionCodeResponse

=head1 ATTRIBUTES


=head2 CodeBlock => Str

The unencrypted code that was executed for the calculation.


=head2 _request_id => Str


=cut

1;