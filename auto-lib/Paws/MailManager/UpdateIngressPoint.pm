
package Paws::MailManager::UpdateIngressPoint;
  use Moose;
  has IngressPointConfiguration => (is => 'ro', isa => 'Paws::MailManager::IngressPointConfiguration');
  has IngressPointId => (is => 'ro', isa => 'Str', required => 1);
  has IngressPointName => (is => 'ro', isa => 'Str');
  has RuleSetId => (is => 'ro', isa => 'Str');
  has StatusToUpdate => (is => 'ro', isa => 'Str');
  has TrafficPolicyId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIngressPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::UpdateIngressPointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::UpdateIngressPoint - Arguments for method UpdateIngressPoint on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIngressPoint on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method UpdateIngressPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIngressPoint.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $UpdateIngressPointResponse = $mail -manager->UpdateIngressPoint(
      IngressPointId            => 'MyIngressPointId',
      IngressPointConfiguration => {
        SecretArn    => 'MySecretArn',       # OPTIONAL
        SmtpPassword => 'MySmtpPassword',    # min: 8, max: 64; OPTIONAL
      },    # OPTIONAL
      IngressPointName => 'MyIngressPointName',    # OPTIONAL
      RuleSetId        => 'MyRuleSetId',           # OPTIONAL
      StatusToUpdate   => 'ACTIVE',                # OPTIONAL
      TrafficPolicyId  => 'MyTrafficPolicyId',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/UpdateIngressPoint>

=head1 ATTRIBUTES


=head2 IngressPointConfiguration => L<Paws::MailManager::IngressPointConfiguration>

If you choose an Authenticated ingress endpoint, you must configure
either an SMTP password or a secret ARN.



=head2 B<REQUIRED> IngressPointId => Str

The identifier for the ingress endpoint you want to update.



=head2 IngressPointName => Str

A user friendly name for the ingress endpoint resource.



=head2 RuleSetId => Str

The identifier of an existing rule set that you attach to an ingress
endpoint resource.



=head2 StatusToUpdate => Str

The update status of an ingress endpoint.

Valid values are: C<"ACTIVE">, C<"CLOSED">

=head2 TrafficPolicyId => Str

The identifier of an existing traffic policy that you attach to an
ingress endpoint resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIngressPoint in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

