
package Paws::DataZone::GetListingOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Item => (is => 'ro', isa => 'Paws::DataZone::ListingItem', traits => ['NameInRequest'], request_name => 'item');
  has ListingRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'listingRevision', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UpdatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedBy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetListingOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the listing was created.


=head2 CreatedBy => Str

The Amazon DataZone user who created the listing.


=head2 Description => Str

The description of the listing.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain.


=head2 B<REQUIRED> Id => Str

The ID of the listing.


=head2 Item => L<Paws::DataZone::ListingItem>

The details of a listing.


=head2 B<REQUIRED> ListingRevision => Str

The revision of a listing.


=head2 Name => Str

The name of the listing.


=head2 Status => Str

The status of the listing.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"INACTIVE">
=head2 UpdatedAt => Str

The timestamp of when the listing was updated.


=head2 UpdatedBy => Str

The Amazon DataZone user who updated the listing.


=head2 _request_id => Str


=cut

