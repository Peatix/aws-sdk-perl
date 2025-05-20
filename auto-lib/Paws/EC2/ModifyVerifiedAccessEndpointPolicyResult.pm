
package Paws::EC2::ModifyVerifiedAccessEndpointPolicyResult;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', request_name => 'policyDocument', traits => ['NameInRequest',]);
  has PolicyEnabled => (is => 'ro', isa => 'Bool', request_name => 'policyEnabled', traits => ['NameInRequest',]);
  has SseSpecification => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessSseSpecificationResponse', request_name => 'sseSpecification', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessEndpointPolicyResult

=head1 ATTRIBUTES


=head2 PolicyDocument => Str

The Verified Access policy document.


=head2 PolicyEnabled => Bool

The status of the Verified Access policy.


=head2 SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationResponse>

The options in use for server side encryption.


=head2 _request_id => Str


=cut

