
package Paws::SSMQuickSetup::GetConfigurationManagerOutput;
  use Moose;
  has ConfigurationDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::ConfigurationDefinition]');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastModifiedAt => (is => 'ro', isa => 'Str');
  has ManagerArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has StatusSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::StatusSummary]');
  has Tags => (is => 'ro', isa => 'Paws::SSMQuickSetup::TagsMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::GetConfigurationManagerOutput

=head1 ATTRIBUTES


=head2 ConfigurationDefinitions => ArrayRef[L<Paws::SSMQuickSetup::ConfigurationDefinition>]

The configuration definitions association with the configuration
manager.


=head2 CreatedAt => Str

The datetime stamp when the configuration manager was created.


=head2 Description => Str

The description of the configuration manager.


=head2 LastModifiedAt => Str

The datetime stamp when the configuration manager was last updated.


=head2 B<REQUIRED> ManagerArn => Str

The ARN of the configuration manager.


=head2 Name => Str

The name of the configuration manager.


=head2 StatusSummaries => ArrayRef[L<Paws::SSMQuickSetup::StatusSummary>]

A summary of the state of the configuration manager. This includes
deployment statuses, association statuses, drift statuses, health
checks, and more.


=head2 Tags => L<Paws::SSMQuickSetup::TagsMap>

Key-value pairs of metadata to assign to the configuration manager.


=head2 _request_id => Str


=cut

