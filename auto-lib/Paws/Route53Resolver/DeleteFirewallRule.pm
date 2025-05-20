
package Paws::Route53Resolver::DeleteFirewallRule;
  use Moose;
  has FirewallDomainListId => (is => 'ro', isa => 'Str');
  has FirewallRuleGroupId => (is => 'ro', isa => 'Str', required => 1);
  has FirewallThreatProtectionId => (is => 'ro', isa => 'Str');
  has Qtype => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFirewallRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::DeleteFirewallRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::DeleteFirewallRule - Arguments for method DeleteFirewallRule on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFirewallRule on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method DeleteFirewallRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFirewallRule.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $DeleteFirewallRuleResponse = $route53resolver->DeleteFirewallRule(
      FirewallRuleGroupId        => 'MyResourceId',
      FirewallDomainListId       => 'MyResourceId',    # OPTIONAL
      FirewallThreatProtectionId => 'MyResourceId',    # OPTIONAL
      Qtype                      => 'MyQtype',         # OPTIONAL
    );

    # Results:
    my $FirewallRule = $DeleteFirewallRuleResponse->FirewallRule;

    # Returns a L<Paws::Route53Resolver::DeleteFirewallRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/DeleteFirewallRule>

=head1 ATTRIBUTES


=head2 FirewallDomainListId => Str

The ID of the domain list that's used in the rule.



=head2 B<REQUIRED> FirewallRuleGroupId => Str

The unique identifier of the firewall rule group that you want to
delete the rule from.



=head2 FirewallThreatProtectionId => Str

The ID that is created for a DNS Firewall Advanced rule.



=head2 Qtype => Str

The DNS query type that the rule you are deleting evaluates. Allowed
values are;

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

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFirewallRule in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

