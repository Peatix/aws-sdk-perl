
package Paws::S3Tables::UpdateTableMetadataLocationResponse;
  use Moose;
  has MetadataLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadataLocation', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'namespace', required => 1);
  has TableARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableARN', required => 1);
  has VersionToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionToken', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::UpdateTableMetadataLocationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetadataLocation => Str

The metadata location of the table.


=head2 B<REQUIRED> Name => Str

The name of the table.


=head2 B<REQUIRED> Namespace => ArrayRef[Str|Undef]

The namespace the table is associated with.


=head2 B<REQUIRED> TableARN => Str

The Amazon Resource Name (ARN) of the table.


=head2 B<REQUIRED> VersionToken => Str

The version token of the table.


=head2 _request_id => Str


=cut

