
package Paws::CustomerProfiles::GetSegmentDefinitionResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'CreatedAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'Description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'DisplayName');
  has SegmentDefinitionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'SegmentDefinitionArn', required => 1);
  has SegmentDefinitionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'SegmentDefinitionName');
  has SegmentGroups => (is => 'ro', isa => 'Paws::CustomerProfiles::SegmentGroup', traits => ['NameInRequest'], request_name => 'SegmentGroups');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap', traits => ['NameInRequest'], request_name => 'Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSegmentDefinitionResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the segment definition was created.


=head2 Description => Str

The description of the segment definition.


=head2 DisplayName => Str

The display name of the segment definition.


=head2 B<REQUIRED> SegmentDefinitionArn => Str

The arn of the segment definition.


=head2 SegmentDefinitionName => Str

The name of the segment definition.


=head2 SegmentGroups => L<Paws::CustomerProfiles::SegmentGroup>

The segment criteria associated with this definition.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

