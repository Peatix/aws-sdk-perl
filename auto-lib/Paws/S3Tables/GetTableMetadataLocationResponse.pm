
package Paws::S3Tables::GetTableMetadataLocationResponse;
  use Moose;
  has MetadataLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadataLocation');
  has VersionToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionToken', required => 1);
  has WarehouseLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'warehouseLocation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::GetTableMetadataLocationResponse

=head1 ATTRIBUTES


=head2 MetadataLocation => Str

The metadata location.


=head2 B<REQUIRED> VersionToken => Str

The version token.


=head2 B<REQUIRED> WarehouseLocation => Str

The warehouse location.


=head2 _request_id => Str


=cut

