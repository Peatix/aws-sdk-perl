
package Paws::CleanRoomsML::PutConfiguredAudienceModelPolicyResponse;
  use Moose;
  has ConfiguredAudienceModelPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredAudienceModelPolicy', required => 1);
  has PolicyHash => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyHash', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::PutConfiguredAudienceModelPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModelPolicy => Str

The IAM resource policy.


=head2 B<REQUIRED> PolicyHash => Str

A cryptographic hash of the contents of the policy used to prevent
unexpected concurrent modification of the policy.


=head2 _request_id => Str


=cut

