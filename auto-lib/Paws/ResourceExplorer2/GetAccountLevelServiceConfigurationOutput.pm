
package Paws::ResourceExplorer2::GetAccountLevelServiceConfigurationOutput;
  use Moose;
  has OrgConfiguration => (is => 'ro', isa => 'Paws::ResourceExplorer2::OrgConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::GetAccountLevelServiceConfigurationOutput

=head1 ATTRIBUTES


=head2 OrgConfiguration => L<Paws::ResourceExplorer2::OrgConfiguration>

Details about the organization, and whether configuration is C<ENABLED>
or C<DISABLED>.


=head2 _request_id => Str


=cut

