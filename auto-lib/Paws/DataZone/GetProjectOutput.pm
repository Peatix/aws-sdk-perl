
package Paws::DataZone::GetProjectOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has DomainUnitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainUnitId');
  has EnvironmentDeploymentDetails => (is => 'ro', isa => 'Paws::DataZone::EnvironmentDeploymentDetails', traits => ['NameInRequest'], request_name => 'environmentDeploymentDetails');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::ProjectDeletionError]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectProfileId');
  has ProjectStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectStatus');
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentConfigurationUserParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetProjectOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the project was created.


=head2 B<REQUIRED> CreatedBy => Str

The Amazon DataZone user who created the project.


=head2 Description => Str

The description of the project.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which the project exists.


=head2 DomainUnitId => Str

The ID of the domain unit.


=head2 EnvironmentDeploymentDetails => L<Paws::DataZone::EnvironmentDeploymentDetails>

The environment deployment status of a project.


=head2 FailureReasons => ArrayRef[L<Paws::DataZone::ProjectDeletionError>]

Specifies the error message that is returned if the operation cannot be
successfully completed.


=head2 GlossaryTerms => ArrayRef[Str|Undef]

The business glossary terms that can be used in the project.


=head2 B<REQUIRED> Id => Str

E<gt>The ID of the project.


=head2 LastUpdatedAt => Str

The timestamp of when the project was last updated.


=head2 B<REQUIRED> Name => Str

The name of the project.


=head2 ProjectProfileId => Str

The ID of the project profile of a project.


=head2 ProjectStatus => Str

The status of the project.

Valid values are: C<"ACTIVE">, C<"DELETING">, C<"DELETE_FAILED">, C<"UPDATING">, C<"UPDATE_FAILED">
=head2 UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentConfigurationUserParameter>]

The user parameters of a project.


=head2 _request_id => Str


=cut

