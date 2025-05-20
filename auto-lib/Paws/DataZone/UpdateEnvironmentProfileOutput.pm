
package Paws::DataZone::UpdateEnvironmentProfileOutput;
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

Paws::DataZone::UpdateEnvironmentProfileOutput

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

The Amazon Web Services account in which a specified environment
profile is to be udpated.


=head2 AwsAccountRegion => Str

The Amazon Web Services Region in which a specified environment profile
is to be updated.


=head2 CreatedAt => Str

The timestamp of when the environment profile was created.


=head2 B<REQUIRED> CreatedBy => Str

The Amazon DataZone user who created the environment profile.


=head2 Description => Str

The description to be updated as part of the
C<UpdateEnvironmentProfile> action.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain in which the environment
profile is to be updated.


=head2 B<REQUIRED> EnvironmentBlueprintId => Str

The identifier of the blueprint of the environment profile that is to
be updated.


=head2 B<REQUIRED> Id => Str

The identifier of the environment profile that is to be udpated.


=head2 B<REQUIRED> Name => Str

The name to be updated as part of the C<UpdateEnvironmentProfile>
action.


=head2 ProjectId => Str

The identifier of the project of the environment profile that is to be
updated.


=head2 UpdatedAt => Str

The timestamp of when the environment profile was updated.


=head2 UserParameters => ArrayRef[L<Paws::DataZone::CustomParameter>]

The user parameters to be updated as part of the
C<UpdateEnvironmentProfile> action.


=head2 _request_id => Str


=cut

