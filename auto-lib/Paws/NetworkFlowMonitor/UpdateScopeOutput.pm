
package Paws::NetworkFlowMonitor::UpdateScopeOutput;
  use Moose;
  has ScopeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scopeArn', required => 1);
  has ScopeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scopeId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NetworkFlowMonitor::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFlowMonitor::UpdateScopeOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScopeArn => Str

The Amazon Resource Name (ARN) of the scope.


=head2 B<REQUIRED> ScopeId => Str

The identifier for the scope that includes the resources you want to
get data results for. A scope ID is an internally-generated identifier
that includes all the resources for a specific root account.


=head2 B<REQUIRED> Status => Str

The status for a call to update a scope. The status can be one of the
following: C<SUCCEEDED>, C<IN_PROGRESS>, or C<FAILED>.

Valid values are: C<"SUCCEEDED">, C<"IN_PROGRESS">, C<"FAILED">
=head2 Tags => L<Paws::NetworkFlowMonitor::TagMap>

The tags for a scope.


=head2 _request_id => Str


=cut

