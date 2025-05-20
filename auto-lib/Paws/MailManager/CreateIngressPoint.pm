
package Paws::MailManager::CreateIngressPoint;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has IngressPointConfiguration => (is => 'ro', isa => 'Paws::MailManager::IngressPointConfiguration');
  has IngressPointName => (is => 'ro', isa => 'Str', required => 1);
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::MailManager::NetworkConfiguration');
  has RuleSetId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Tag]');
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIngressPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::CreateIngressPointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::CreateIngressPoint - Arguments for method CreateIngressPoint on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIngressPoint on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method CreateIngressPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIngressPoint.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $CreateIngressPointResponse = $mail -manager->CreateIngressPoint(
      IngressPointName          => 'MyIngressPointName',
      RuleSetId                 => 'MyRuleSetId',
      TrafficPolicyId           => 'MyTrafficPolicyId',
      Type                      => 'OPEN',
      ClientToken               => 'MyIdempotencyToken',    # OPTIONAL
      IngressPointConfiguration => {
        SecretArn    => 'MySecretArn',       # OPTIONAL
        SmtpPassword => 'MySmtpPassword',    # min: 8, max: 64; OPTIONAL
      },    # OPTIONAL
      NetworkConfiguration => {
        PrivateNetworkConfiguration => {
          VpcEndpointId => 'MyVpcEndpointId',

        },    # OPTIONAL
        PublicNetworkConfiguration => {
          IpType => 'IPV4',    # values: IPV4, DUAL_STACK

        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $IngressPointId = $CreateIngressPointResponse->IngressPointId;

    # Returns a L<Paws::MailManager::CreateIngressPointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/CreateIngressPoint>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique token that Amazon SES uses to recognize subsequent retries of
the same request.



=head2 IngressPointConfiguration => L<Paws::MailManager::IngressPointConfiguration>

If you choose an Authenticated ingress endpoint, you must configure
either an SMTP password or a secret ARN.



=head2 B<REQUIRED> IngressPointName => Str

A user friendly name for an ingress endpoint resource.



=head2 NetworkConfiguration => L<Paws::MailManager::NetworkConfiguration>

Specifies the network configuration for the ingress point. This allows
you to create an IPv4-only, Dual-Stack, or PrivateLink type of ingress
point. If not specified, the default network type is IPv4-only.



=head2 B<REQUIRED> RuleSetId => Str

The identifier of an existing rule set that you attach to an ingress
endpoint resource.



=head2 Tags => ArrayRef[L<Paws::MailManager::Tag>]

The tags used to organize, track, or control access for the resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.



=head2 B<REQUIRED> TrafficPolicyId => Str

The identifier of an existing traffic policy that you attach to an
ingress endpoint resource.



=head2 B<REQUIRED> Type => Str

The type of the ingress endpoint to create.

Valid values are: C<"OPEN">, C<"AUTH">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIngressPoint in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

