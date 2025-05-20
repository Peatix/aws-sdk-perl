
package Paws::SecurityLake::GetDataLakeOrganizationConfigurationResponse;
  use Moose;
  has AutoEnableNewAccount => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::DataLakeAutoEnableNewAccountConfiguration]', traits => ['NameInRequest'], request_name => 'autoEnableNewAccount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::GetDataLakeOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 AutoEnableNewAccount => ArrayRef[L<Paws::SecurityLake::DataLakeAutoEnableNewAccountConfiguration>]

The configuration used for new accounts in Security Lake.


=head2 _request_id => Str


=cut

