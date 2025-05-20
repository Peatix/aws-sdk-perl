
package Paws::SsmSap::GetDatabaseOutput;
  use Moose;
  has Database => (is => 'ro', isa => 'Paws::SsmSap::Database');
  has Tags => (is => 'ro', isa => 'Paws::SsmSap::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::GetDatabaseOutput

=head1 ATTRIBUTES


=head2 Database => L<Paws::SsmSap::Database>

The SAP HANA database of an application registered with AWS Systems
Manager for SAP.


=head2 Tags => L<Paws::SsmSap::TagMap>

The tags of a database.


=head2 _request_id => Str


=cut

