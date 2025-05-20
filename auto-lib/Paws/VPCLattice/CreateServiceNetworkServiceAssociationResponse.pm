
package Paws::VPCLattice::CreateServiceNetworkServiceAssociationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName');
  has DnsEntry => (is => 'ro', isa => 'Paws::VPCLattice::DnsEntry', traits => ['NameInRequest'], request_name => 'dnsEntry');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateServiceNetworkServiceAssociationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the association.


=head2 CreatedBy => Str

The account that created the association.


=head2 CustomDomainName => Str

The custom domain name of the service.


=head2 DnsEntry => L<Paws::VPCLattice::DnsEntry>

The DNS name of the service.


=head2 Id => Str

The ID of the association.


=head2 Status => Str

The association status.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"ACTIVE">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

