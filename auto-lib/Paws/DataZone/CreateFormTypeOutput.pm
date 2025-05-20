
package Paws::DataZone::CreateFormTypeOutput;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OriginDomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originDomainId');
  has OriginProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originProjectId');
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectId');
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateFormTypeOutput

=head1 ATTRIBUTES


=head2 Description => Str

The description of this Amazon DataZone metadata form type.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain in which this metadata form type
is created.


=head2 B<REQUIRED> Name => Str

The name of this Amazon DataZone metadata form type.


=head2 OriginDomainId => Str

The ID of the Amazon DataZone domain in which this metadata form type
was originally created.


=head2 OriginProjectId => Str

The ID of the project in which this Amazon DataZone metadata form type
was originally created.


=head2 OwningProjectId => Str

The ID of the project that owns this Amazon DataZone metadata form
type.


=head2 B<REQUIRED> Revision => Str

The revision of this Amazon DataZone metadata form type.


=head2 _request_id => Str


=cut

