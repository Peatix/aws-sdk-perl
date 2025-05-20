
package Paws::DataZone::GetEnvironmentActionOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::DataZone::ActionParameters', traits => ['NameInRequest'], request_name => 'parameters', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentActionOutput

=head1 ATTRIBUTES


=head2 Description => Str

The description of the environment action.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which the environment action
lives.


=head2 B<REQUIRED> EnvironmentId => Str

The environment ID of the environment action.


=head2 B<REQUIRED> Id => Str

The ID of the environment action.


=head2 B<REQUIRED> Name => Str

The name of the environment action.


=head2 B<REQUIRED> Parameters => L<Paws::DataZone::ActionParameters>

The parameters of the environment action.


=head2 _request_id => Str


=cut

