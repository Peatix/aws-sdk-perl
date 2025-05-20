
package Paws::DataZone::CreateProjectProfileOutput;
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

Paws::DataZone::CreateProjectProfileOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

A timestamp at which a project profile is created.


=head2 B<REQUIRED> CreatedBy => Str

A user who created a project profile.


=head2 Description => Str

A project profile description.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain where a project profile is created.


=head2 DomainUnitId => Str

The ID of the domain unit where a project profile is created.


=head2 EnvironmentConfigurations => ArrayRef[L<Paws::DataZone::EnvironmentConfiguration>]

Environment configurations of a project profile.


=head2 B<REQUIRED> Id => Str

Project profile ID.


=head2 LastUpdatedAt => Str

A timestamp when a project profile was last updated.


=head2 B<REQUIRED> Name => Str

Project profile name.


=head2 Status => Str

Project profile status.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

