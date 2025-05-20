
package Paws::DataZone::CreateEnvironmentProfileOutput;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountId');
  has AwsAccountRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountRegion');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has EnvironmentBlueprintId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentBlueprintId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::CustomParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateEnvironmentProfileOutput

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

The Amazon Web Services account ID in which this Amazon DataZone
environment profile is created.


=head2 AwsAccountRegion => Str

The Amazon Web Services region in which this Amazon DataZone
environment profile is created.


=head2 CreatedAt => Str

The timestamp of when this environment profile was created.


=head2 B<REQUIRED> CreatedBy => Str

The Amazon DataZone user who created this environment profile.


=head2 Description => Str

The description of this Amazon DataZone environment profile.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which this environment profile
is created.


=head2 B<REQUIRED> EnvironmentBlueprintId => Str

The ID of the blueprint with which this environment profile is created.


=head2 B<REQUIRED> Id => Str

The ID of this Amazon DataZone environment profile.


=head2 B<REQUIRED> Name => Str

The name of this Amazon DataZone environment profile.


=head2 ProjectId => Str

The ID of the Amazon DataZone project in which this environment profile
is created.


=head2 UpdatedAt => Str

The timestamp of when this environment profile was updated.


=head2 UserParameters => ArrayRef[L<Paws::DataZone::CustomParameter>]

The user parameters of this Amazon DataZone environment profile.


=head2 _request_id => Str


=cut

