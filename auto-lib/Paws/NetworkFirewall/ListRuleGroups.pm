
package Paws::NetworkFirewall::ListRuleGroups;
  use Moose;
  has ManagedType => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRuleGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::ListRuleGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::ListRuleGroups - Arguments for method ListRuleGroups on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRuleGroups on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method ListRuleGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRuleGroups.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $ListRuleGroupsResponse = $network -firewall->ListRuleGroups(
      ManagedType => 'AWS_MANAGED_THREAT_SIGNATURES',    # OPTIONAL
      MaxResults  => 1,                                  # OPTIONAL
      NextToken   => 'MyPaginationToken',                # OPTIONAL
      Scope       => 'MANAGED',                          # OPTIONAL
      Type        => 'STATELESS',                        # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListRuleGroupsResponse->NextToken;
    my $RuleGroups = $ListRuleGroupsResponse->RuleGroups;

    # Returns a L<Paws::NetworkFirewall::ListRuleGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/ListRuleGroups>

=head1 ATTRIBUTES


=head2 ManagedType => Str

Indicates the general category of the Amazon Web Services managed rule
group.

Valid values are: C<"AWS_MANAGED_THREAT_SIGNATURES">, C<"AWS_MANAGED_DOMAIN_LISTS">

=head2 MaxResults => Int

The maximum number of objects that you want Network Firewall to return
for this request. If more objects are available, in the response,
Network Firewall provides a C<NextToken> value that you can use in a
subsequent call to get the next batch of objects.



=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Network Firewall returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.



=head2 Scope => Str

The scope of the request. The default setting of C<ACCOUNT> or a
setting of C<NULL> returns all of the rule groups in your account. A
setting of C<MANAGED> returns all available managed rule groups.

Valid values are: C<"MANAGED">, C<"ACCOUNT">

=head2 Type => Str

Indicates whether the rule group is stateless or stateful. If the rule
group is stateless, it contains stateless rules. If it is stateful, it
contains stateful rules.

Valid values are: C<"STATELESS">, C<"STATEFUL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRuleGroups in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

