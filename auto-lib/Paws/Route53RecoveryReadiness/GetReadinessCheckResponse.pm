
package Paws::Route53RecoveryReadiness::GetReadinessCheckResponse;
  use Moose;
  has ReadinessCheckArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readinessCheckArn');
  has ReadinessCheckName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readinessCheckName');
  has ResourceSet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceSet');
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryReadiness::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::GetReadinessCheckResponse

=head1 ATTRIBUTES


=head2 ReadinessCheckArn => Str

The Amazon Resource Name (ARN) associated with a readiness check.


=head2 ReadinessCheckName => Str

Name of a readiness check.


=head2 ResourceSet => Str

Name of the resource set to be checked.


=head2 Tags => L<Paws::Route53RecoveryReadiness::Tags>




=head2 _request_id => Str


=cut

