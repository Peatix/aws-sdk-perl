
package Paws::Grafana::DisassociateLicenseResponse;
  use Moose;
  has Workspace => (is => 'ro', isa => 'Paws::Grafana::WorkspaceDescription', traits => ['NameInRequest'], request_name => 'workspace', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::DisassociateLicenseResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Workspace => L<Paws::Grafana::WorkspaceDescription>

A structure containing information about the workspace.


=head2 _request_id => Str


=cut

