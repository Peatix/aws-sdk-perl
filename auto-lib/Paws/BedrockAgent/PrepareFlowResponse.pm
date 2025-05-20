
package Paws::BedrockAgent::PrepareFlowResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::PrepareFlowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the flow.


=head2 B<REQUIRED> Status => Str

The status of the flow. When you submit this request, the status will
be C<NotPrepared>. If preparation succeeds, the status becomes
C<Prepared>. If it fails, the status becomes C<FAILED>.

Valid values are: C<"Failed">, C<"Prepared">, C<"Preparing">, C<"NotPrepared">
=head2 _request_id => Str


=cut

