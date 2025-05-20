
package Paws::DataZone::GetLineageNodeOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has DownstreamNodes => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::LineageNodeReference]', traits => ['NameInRequest'], request_name => 'downstreamNodes');
  has EventTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTimestamp');
  has FormsOutput => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormOutput]', traits => ['NameInRequest'], request_name => 'formsOutput');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceIdentifier');
  has TypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeName', required => 1);
  has TypeRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'typeRevision');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');
  has UpstreamNodes => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::LineageNodeReference]', traits => ['NameInRequest'], request_name => 'upstreamNodes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetLineageNodeOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp at which the data lineage node was created.


=head2 CreatedBy => Str

The user who created the data lineage node.


=head2 Description => Str

The description of the data lineage node.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain where you're getting the data lineage node.


=head2 DownstreamNodes => ArrayRef[L<Paws::DataZone::LineageNodeReference>]

The downsteam nodes of the specified data lineage node.


=head2 EventTimestamp => Str

The timestamp of the event described in the data lineage node.


=head2 FormsOutput => ArrayRef[L<Paws::DataZone::FormOutput>]

The metadata of the specified data lineage node.


=head2 B<REQUIRED> Id => Str

The ID of the data lineage node.


=head2 Name => Str

The name of the data lineage node.


=head2 SourceIdentifier => Str

The source identifier of the data lineage node.


=head2 B<REQUIRED> TypeName => Str

The name of the type of the specified data lineage node.


=head2 TypeRevision => Str

The revision type of the specified data lineage node.


=head2 UpdatedAt => Str

The timestamp at which the data lineage node was updated.


=head2 UpdatedBy => Str

The user who updated the data lineage node.


=head2 UpstreamNodes => ArrayRef[L<Paws::DataZone::LineageNodeReference>]

The upstream nodes of the specified data lineage node.


=head2 _request_id => Str


=cut

