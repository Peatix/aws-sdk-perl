
package Paws::CloudFront::VerifyDnsConfigurationResult;
  use Moose;
  has DnsConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::DnsConfiguration]', request_name => 'DnsConfiguration', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::VerifyDnsConfigurationResult

=head1 ATTRIBUTES


=head2 DnsConfigurationList => ArrayRef[L<Paws::CloudFront::DnsConfiguration>]

The list of domain names, their statuses, and a description of each
status.




=cut

