
package Paws::SSMQuickSetup::CreateConfigurationManagerOutput;
  use Moose;
  has ManagerArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::CreateConfigurationManagerOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManagerArn => Str

The ARN for the newly created configuration manager.


=head2 _request_id => Str


=cut

