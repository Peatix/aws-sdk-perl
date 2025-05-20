
package Paws::Synthetics::StartCanaryDryRunResponse;
  use Moose;
  has DryRunConfig => (is => 'ro', isa => 'Paws::Synthetics::DryRunConfigOutput');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::StartCanaryDryRunResponse

=head1 ATTRIBUTES


=head2 DryRunConfig => L<Paws::Synthetics::DryRunConfigOutput>

Returns the dry run configurations for a canary.


=head2 _request_id => Str


=cut

