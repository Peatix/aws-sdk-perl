
package Paws::SSMQuickSetup::GetConfigurationOutput;
  use Moose;
  has Account => (is => 'ro', isa => 'Str');
  has ConfigurationDefinitionId => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastModifiedAt => (is => 'ro', isa => 'Str');
  has ManagerArn => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSMQuickSetup::ConfigurationParametersMap');
  has Region => (is => 'ro', isa => 'Str');
  has StatusSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::StatusSummary]');
  has Type => (is => 'ro', isa => 'Str');
  has TypeVersion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::GetConfigurationOutput

=head1 ATTRIBUTES


=head2 Account => Str

The ID of the Amazon Web Services account where the configuration was
deployed.


=head2 ConfigurationDefinitionId => Str

The ID of the configuration definition.


=head2 CreatedAt => Str

The datetime stamp when the configuration manager was created.


=head2 Id => Str

A service generated identifier for the configuration.


=head2 LastModifiedAt => Str

The datetime stamp when the configuration manager was last updated.


=head2 ManagerArn => Str

The ARN of the configuration manager.


=head2 Parameters => L<Paws::SSMQuickSetup::ConfigurationParametersMap>

The parameters for the configuration definition type.


=head2 Region => Str

The Amazon Web Services Region where the configuration was deployed.


=head2 StatusSummaries => ArrayRef[L<Paws::SSMQuickSetup::StatusSummary>]

A summary of the state of the configuration manager. This includes
deployment statuses, association statuses, drift statuses, health
checks, and more.


=head2 Type => Str

The type of the Quick Setup configuration.


=head2 TypeVersion => Str

The version of the Quick Setup type used.


=head2 _request_id => Str


=cut

