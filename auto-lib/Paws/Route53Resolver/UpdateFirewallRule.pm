
package Paws::Route53Resolver::UpdateFirewallRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has BlockOverrideDnsType => (is => 'ro', isa => 'Str');
  has BlockOverrideDomain => (is => 'ro', isa => 'Str');
  has BlockOverrideTtl => (is => 'ro', isa => 'Int');
  has BlockResponse => (is => 'ro', isa => 'Str');
  has ConfidenceThreshold => (is => 'ro', isa => 'Str');
  has DnsThreatProtection => (is => 'ro', isa => 'Str');
  has FirewallDomainListId => (is => 'ro', isa => 'Str');
  has FirewallDomainRedirectionAction => (is => 'ro', isa => 'Str');
  has FirewallRuleGroupId => (is => 'ro', isa => 'Str', required => 1);
  has FirewallThreatProtectionId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has Qtype => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFirewallRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateFirewallRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateFirewallRule - Arguments for method UpdateFirewallRule on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFirewallRule on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateFirewallRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFirewallRule.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateFirewallRuleResponse = $route53resolver->UpdateFirewallRule(
      FirewallRuleGroupId             => 'MyResourceId',
      Action                          => 'ALLOW',                    # OPTIONAL
      BlockOverrideDnsType            => 'CNAME',                    # OPTIONAL
      BlockOverrideDomain             => 'MyBlockOverrideDomain',    # OPTIONAL
      BlockOverrideTtl                => 1,                          # OPTIONAL
      BlockResponse                   => 'NODATA',                   # OPTIONAL
      ConfidenceThreshold             => 'LOW',                      # OPTIONAL
      DnsThreatProtection             => 'DGA',                      # OPTIONAL
      FirewallDomainListId            => 'MyResourceId',             # OPTIONAL
      FirewallDomainRedirectionAction =>
        'INSPECT_REDIRECTION_DOMAIN',                                # OPTIONAL
      FirewallThreatProtectionId => 'MyResourceId',                  # OPTIONAL
      Name                       => 'MyName',                        # OPTIONAL
      Priority                   => 1,                               # OPTIONAL
      Qtype                      => 'MyQtype',                       # OPTIONAL
    );

    # Results:
    my $FirewallRule = $UpdateFirewallRuleResponse->FirewallRule;

    # Returns a L<Paws::Route53Resolver::UpdateFirewallRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateFirewallRule>

=head1 ATTRIBUTES


=head2 Action => Str

The action that DNS Firewall should take on a DNS query when it matches
one of the domains in the rule's domain list, or a threat in a DNS
Firewall Advanced rule:

=over

=item *

C<ALLOW> - Permit the request to go through. Not available for DNS
Firewall Advanced rules.

=item *

C<ALERT> - Permit the request to go through but send an alert to the
logs.

=item *

C<BLOCK> - Disallow the request. This option requires additional
details in the rule's C<BlockResponse>.

=back


Valid values are: C<"ALLOW">, C<"BLOCK">, C<"ALERT">

=head2 BlockOverrideDnsType => Str

The DNS record's type. This determines the format of the record value
that you provided in C<BlockOverrideDomain>. Used for the rule action
C<BLOCK> with a C<BlockResponse> setting of C<OVERRIDE>.

Valid values are: C<"CNAME">

=head2 BlockOverrideDomain => Str

The custom DNS record to send back in response to the query. Used for
the rule action C<BLOCK> with a C<BlockResponse> setting of
C<OVERRIDE>.



=head2 BlockOverrideTtl => Int

The recommended amount of time, in seconds, for the DNS resolver or web
browser to cache the provided override record. Used for the rule action
C<BLOCK> with a C<BlockResponse> setting of C<OVERRIDE>.



=head2 BlockResponse => Str

The way that you want DNS Firewall to block the request. Used for the
rule action setting C<BLOCK>.

=over

=item *

C<NODATA> - Respond indicating that the query was successful, but no
response is available for it.

=item *

C<NXDOMAIN> - Respond indicating that the domain name that's in the
query doesn't exist.

=item *

C<OVERRIDE> - Provide a custom override in the response. This option
requires custom handling details in the rule's C<BlockOverride*>
settings.

=back


Valid values are: C<"NODATA">, C<"NXDOMAIN">, C<"OVERRIDE">

=head2 ConfidenceThreshold => Str

The confidence threshold for DNS Firewall Advanced. You must provide
this value when you create a DNS Firewall Advanced rule. The confidence
level values mean:

=over

=item *

C<LOW>: Provides the highest detection rate for threats, but also
increases false positives.

=item *

C<MEDIUM>: Provides a balance between detecting threats and false
positives.

=item *

C<HIGH>: Detects only the most well corroborated threats with a low
rate of false positives.

=back


Valid values are: C<"LOW">, C<"MEDIUM">, C<"HIGH">

=head2 DnsThreatProtection => Str

The type of the DNS Firewall Advanced rule. Valid values are:

=over

=item *

C<DGA>: Domain generation algorithms detection. DGAs are used by
attackers to generate a large number of domains to to launch malware
attacks.

=item *

C<DNS_TUNNELING>: DNS tunneling detection. DNS tunneling is used by
attackers to exfiltrate data from the client by using the DNS tunnel
without making a network connection to the client.

=back


Valid values are: C<"DGA">, C<"DNS_TUNNELING">

=head2 FirewallDomainListId => Str

The ID of the domain list to use in the rule.



=head2 FirewallDomainRedirectionAction => Str

How you want the the rule to evaluate DNS redirection in the DNS
redirection chain, such as CNAME or DNAME.

C<INSPECT_REDIRECTION_DOMAIN>: (Default) inspects all domains in the
redirection chain. The individual domains in the redirection chain must
be added to the domain list.

C<TRUST_REDIRECTION_DOMAIN>: Inspects only the first domain in the
redirection chain. You don't need to add the subsequent domains in the
domain in the redirection list to the domain list.

Valid values are: C<"INSPECT_REDIRECTION_DOMAIN">, C<"TRUST_REDIRECTION_DOMAIN">

=head2 B<REQUIRED> FirewallRuleGroupId => Str

The unique identifier of the firewall rule group for the rule.



=head2 FirewallThreatProtectionId => Str

The DNS Firewall Advanced rule ID.



=head2 Name => Str

The name of the rule.



=head2 Priority => Int

The setting that determines the processing order of the rule in the
rule group. DNS Firewall processes the rules in a rule group by order
of priority, starting from the lowest setting.

You must specify a unique priority for each rule in a rule group. To
make it easier to insert rules later, leave space between the numbers,
for example, use 100, 200, and so on. You can change the priority
setting for the rules in a rule group at any time.



=head2 Qtype => Str

The DNS query type you want the rule to evaluate. Allowed values are;

=over

=item *

A: Returns an IPv4 address.

=item *

AAAA: Returns an Ipv6 address.

=item *

CAA: Restricts CAs that can create SSL/TLS certifications for the
domain.

=item *

CNAME: Returns another domain name.

=item *

DS: Record that identifies the DNSSEC signing key of a delegated zone.

=item *

MX: Specifies mail servers.

=item *

NAPTR: Regular-expression-based rewriting of domain names.

=item *

NS: Authoritative name servers.

=item *

PTR: Maps an IP address to a domain name.

=item *

SOA: Start of authority record for the zone.

=item *

SPF: Lists the servers authorized to send emails from a domain.

=item *

SRV: Application specific values that identify servers.

=item *

TXT: Verifies email senders and application-specific values.

=item *

A query type you define by using the DNS type ID, for example 28 for
AAAA. The values must be defined as TYPENUMBER, where the NUMBER can be
1-65334, for example, TYPE28. For more information, see List of DNS
record types (https://en.wikipedia.org/wiki/List_of_DNS_record_types).

If you set up a firewall BLOCK rule with action NXDOMAIN on query type
equals AAAA, this action will not be applied to synthetic IPv6
addresses generated when DNS64 is enabled.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFirewallRule in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

