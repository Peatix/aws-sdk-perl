
package Paws::FMS::ListThirdPartyFirewallFirewallPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ThirdPartyFirewall => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThirdPartyFirewallFirewallPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::ListThirdPartyFirewallFirewallPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListThirdPartyFirewallFirewallPolicies - Arguments for method ListThirdPartyFirewallFirewallPolicies on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThirdPartyFirewallFirewallPolicies on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method ListThirdPartyFirewallFirewallPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThirdPartyFirewallFirewallPolicies.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $ListThirdPartyFirewallFirewallPoliciesResponse =
      $fms->ListThirdPartyFirewallFirewallPolicies(
      MaxResults         => 1,
      ThirdPartyFirewall => 'PALO_ALTO_NETWORKS_CLOUD_NGFW',
      NextToken          => 'MyPaginationToken',               # OPTIONAL
      );

    # Results:
    my $NextToken = $ListThirdPartyFirewallFirewallPoliciesResponse->NextToken;
    my $ThirdPartyFirewallFirewallPolicies =
      $ListThirdPartyFirewallFirewallPoliciesResponse
      ->ThirdPartyFirewallFirewallPolicies;

# Returns a L<Paws::FMS::ListThirdPartyFirewallFirewallPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/ListThirdPartyFirewallFirewallPolicies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxResults => Int

The maximum number of third-party firewall policies that you want
Firewall Manager to return. If the specified third-party firewall
vendor is associated with more than C<MaxResults> firewall policies,
the response includes a C<NextToken> element. C<NextToken> contains an
encrypted token that identifies the first third-party firewall policies
that Firewall Manager will return if you submit another request.



=head2 NextToken => Str

If the previous response included a C<NextToken> element, the specified
third-party firewall vendor is associated with more third-party
firewall policies. To get more third-party firewall policies, submit
another C<ListThirdPartyFirewallFirewallPoliciesRequest> request.

For the value of C<NextToken>, specify the value of C<NextToken> from
the previous response. If the previous response didn't include a
C<NextToken> element, there are no more third-party firewall policies
to get.



=head2 B<REQUIRED> ThirdPartyFirewall => Str

The name of the third-party firewall vendor.

Valid values are: C<"PALO_ALTO_NETWORKS_CLOUD_NGFW">, C<"FORTIGATE_CLOUD_NATIVE_FIREWALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThirdPartyFirewallFirewallPolicies in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

