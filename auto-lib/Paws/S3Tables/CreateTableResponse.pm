
package Paws::S3Tables::CreateTableResponse;
  use Moose;
  has TableARN => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableARN', required => 1);
  has VersionToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionToken', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::CreateTableResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableARN => Str

The Amazon Resource Name (ARN) of the table.


=head2 B<REQUIRED> VersionToken => Str

The version token of the table.


=head2 _request_id => Str


=cut

