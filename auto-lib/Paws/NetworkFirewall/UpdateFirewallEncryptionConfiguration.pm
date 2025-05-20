
package Paws::NetworkFirewall::UpdateFirewallEncryptionConfiguration;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::NetworkFirewall::EncryptionConfiguration');
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FirewallName => (is => 'ro', isa => 'Str');
  has UpdateToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFirewallEncryptionConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::UpdateFirewallEncryptionConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::UpdateFirewallEncryptionConfiguration - Arguments for method UpdateFirewallEncryptionConfiguration on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFirewallEncryptionConfiguration on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method UpdateFirewallEncryptionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFirewallEncryptionConfiguration.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $UpdateFirewallEncryptionConfigurationResponse =
      $network -firewall->UpdateFirewallEncryptionConfiguration(
      EncryptionConfiguration => {
        Type  => 'CUSTOMER_KMS',    # values: CUSTOMER_KMS, AWS_OWNED_KMS_KEY
        KeyId => 'MyKeyId',         # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      FirewallArn  => 'MyResourceArn',     # OPTIONAL
      FirewallName => 'MyResourceName',    # OPTIONAL
      UpdateToken  => 'MyUpdateToken',     # OPTIONAL
      );

    # Results:
    my $EncryptionConfiguration =
      $UpdateFirewallEncryptionConfigurationResponse->EncryptionConfiguration;
    my $FirewallArn =
      $UpdateFirewallEncryptionConfigurationResponse->FirewallArn;
    my $FirewallName =
      $UpdateFirewallEncryptionConfigurationResponse->FirewallName;
    my $UpdateToken =
      $UpdateFirewallEncryptionConfigurationResponse->UpdateToken;

# Returns a L<Paws::NetworkFirewall::UpdateFirewallEncryptionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/UpdateFirewallEncryptionConfiguration>

=head1 ATTRIBUTES


=head2 EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>





=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.



=head2 FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.



=head2 UpdateToken => Str

An optional token that you can use for optimistic locking. Network
Firewall returns a token to your requests that access the firewall. The
token marks the state of the firewall resource at the time of the
request.

To make an unconditional change to the firewall, omit the token in your
update request. Without the token, Network Firewall performs your
updates regardless of whether the firewall has changed since you last
retrieved it.

To make a conditional change to the firewall, provide the token in your
update request. Network Firewall uses the token to ensure that the
firewall hasn't changed since you last retrieved it. If it has changed,
the operation fails with an C<InvalidTokenException>. If this happens,
retrieve the firewall again to get a current copy of it with a new
token. Reapply your changes as needed, then try the operation again
using the new token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFirewallEncryptionConfiguration in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

