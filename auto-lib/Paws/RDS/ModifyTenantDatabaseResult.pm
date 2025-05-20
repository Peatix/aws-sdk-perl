
package Paws::RDS::ModifyTenantDatabaseResult;
  use Moose;
  has TenantDatabase => (is => 'ro', isa => 'Paws::RDS::TenantDatabase');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyTenantDatabaseResult

=head1 ATTRIBUTES


=head2 TenantDatabase => L<Paws::RDS::TenantDatabase>




=head2 _request_id => Str


=cut

