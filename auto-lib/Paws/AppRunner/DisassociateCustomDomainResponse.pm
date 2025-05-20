
package Paws::AppRunner::DisassociateCustomDomainResponse;
  use Moose;
  has CustomDomain => (is => 'ro', isa => 'Paws::AppRunner::CustomDomain', required => 1);
  has DNSTarget => (is => 'ro', isa => 'Str', required => 1);
  has ServiceArn => (is => 'ro', isa => 'Str', required => 1);
  has VpcDNSTargets => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::VpcDNSTarget]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DisassociateCustomDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomDomain => L<Paws::AppRunner::CustomDomain>

A description of the domain name that's being disassociated.


=head2 B<REQUIRED> DNSTarget => Str

The App Runner subdomain of the App Runner service. The disassociated
custom domain name was mapped to this target name.


=head2 B<REQUIRED> ServiceArn => Str

The Amazon Resource Name (ARN) of the App Runner service that a custom
domain name is disassociated from.


=head2 B<REQUIRED> VpcDNSTargets => ArrayRef[L<Paws::AppRunner::VpcDNSTarget>]

DNS Target records for the custom domains of this Amazon VPC.


=head2 _request_id => Str


=cut

1;