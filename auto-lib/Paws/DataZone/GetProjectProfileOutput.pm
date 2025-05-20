
package Paws::DataZone::GetProjectProfileOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has DomainUnitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainUnitId');
  has EnvironmentConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentConfiguration]', traits => ['NameInRequest'], request_name => 'environmentConfigurations');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetProjectProfileOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the project profile was created.


=head2 B<REQUIRED> CreatedBy => Str

The user who created the project profile.


=head2 Description => Str

The description of the project profile.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain of the project profile.


=head2 DomainUnitId => Str

The ID of the domain unit of the project profile.


=head2 EnvironmentConfigurations => ArrayRef[L<Paws::DataZone::EnvironmentConfiguration>]

The environment configurations of the project profile.


=head2 B<REQUIRED> Id => Str

The ID of the project profile.


=head2 LastUpdatedAt => Str

The timestamp of when project profile was last updated.


=head2 B<REQUIRED> Name => Str

The name of the project profile.


=head2 Status => Str

The status of the project profile.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

