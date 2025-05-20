
package Paws::SNS::GetDataProtectionPolicyResponse;
  use Moose;
  has DataProtectionPolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetDataProtectionPolicyResponse

=head1 ATTRIBUTES


=head2 DataProtectionPolicy => Str

Retrieves the C<DataProtectionPolicy> in JSON string format.


=head2 _request_id => Str


=cut

