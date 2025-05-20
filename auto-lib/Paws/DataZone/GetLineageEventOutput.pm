
package Paws::DataZone::GetLineageEventOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Created-At');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Created-By');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Domain-Id');
  has Event => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'event');
  has EventTime => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Event-Time');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Id');
  has ProcessingStatus => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Processing-Status');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Event');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetLineageEventOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the lineage event was created.


=head2 CreatedBy => Str

The user who created the lineage event.


=head2 DomainId => Str

The ID of the domain.


=head2 Event => Str

The lineage event details.


=head2 EventTime => Str

The time of the lineage event.


=head2 Id => Str

The ID of the lineage event.


=head2 ProcessingStatus => Str

The progressing status of the lineage event.

Valid values are: C<"REQUESTED">, C<"PROCESSING">, C<"SUCCESS">, C<"FAILED">
=head2 _request_id => Str


=cut

