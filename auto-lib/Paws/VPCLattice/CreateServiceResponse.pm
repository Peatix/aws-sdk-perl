
package Paws::VPCLattice::CreateServiceResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType');
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName');
  has DnsEntry => (is => 'ro', isa => 'Paws::VPCLattice::DnsEntry', traits => ['NameInRequest'], request_name => 'dnsEntry');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateServiceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the service.


=head2 AuthType => Str

The type of IAM policy.

Valid values are: C<"NONE">, C<"AWS_IAM">
=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate.


=head2 CustomDomainName => Str

The custom domain name of the service.


=head2 DnsEntry => L<Paws::VPCLattice::DnsEntry>

The public DNS name of the service.


=head2 Id => Str

The ID of the service.


=head2 Name => Str

The name of the service.


=head2 Status => Str

The status. If the status is C<CREATE_FAILED>, you must delete and
recreate the service.

Valid values are: C<"ACTIVE">, C<"CREATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

