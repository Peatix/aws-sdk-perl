
package Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcsResponse;
  use Moose;
  has EnvironmentVpcList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubRefactorSpaces::EnvironmentVpc]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::ListEnvironmentVpcsResponse

=head1 ATTRIBUTES


=head2 EnvironmentVpcList => ArrayRef[L<Paws::MigrationHubRefactorSpaces::EnvironmentVpc>]

The list of C<EnvironmentVpc> objects.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

