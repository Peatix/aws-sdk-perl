
package Paws::DataZone::CreateListingChangeSetOutput;
  use Moose;
  has ListingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'listingId', required => 1);
  has ListingRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'listingRevision', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateListingChangeSetOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListingId => Str

The ID of the listing (a record of an asset at a given time).


=head2 B<REQUIRED> ListingRevision => Str

The revision of a listing.


=head2 B<REQUIRED> Status => Str

Specifies the status of the listing.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"INACTIVE">
=head2 _request_id => Str


=cut

