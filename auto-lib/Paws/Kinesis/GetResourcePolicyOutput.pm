
package Paws::Kinesis::GetResourcePolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::GetResourcePolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

Details of the resource policy. This is formatted as a JSON string.


=head2 _request_id => Str


=cut

1;