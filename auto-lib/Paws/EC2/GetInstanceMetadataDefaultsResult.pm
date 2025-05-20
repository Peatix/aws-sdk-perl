
package Paws::EC2::GetInstanceMetadataDefaultsResult;
  use Moose;
  has AccountLevel => (is => 'ro', isa => 'Paws::EC2::InstanceMetadataDefaultsResponse', request_name => 'accountLevel', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetInstanceMetadataDefaultsResult

=head1 ATTRIBUTES


=head2 AccountLevel => L<Paws::EC2::InstanceMetadataDefaultsResponse>

The account-level default IMDS settings.


=head2 _request_id => Str


=cut

