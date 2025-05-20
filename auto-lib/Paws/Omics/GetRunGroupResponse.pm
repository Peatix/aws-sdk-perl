
package Paws::Omics::GetRunGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has MaxCpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxCpus');
  has MaxDuration => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxDuration');
  has MaxGpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxGpus');
  has MaxRuns => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxRuns');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetRunGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The group's ARN.


=head2 CreationTime => Str

When the group was created.


=head2 Id => Str

The group's ID.


=head2 MaxCpus => Int

The group's maximum number of CPUs to use.


=head2 MaxDuration => Int

The group's maximum run time in minutes.


=head2 MaxGpus => Int

The maximum GPUs that can be used by a run group.


=head2 MaxRuns => Int

The maximum number of concurrent runs for the group.


=head2 Name => Str

The group's name.


=head2 Tags => L<Paws::Omics::TagMap>

The group's tags.


=head2 _request_id => Str


=cut

