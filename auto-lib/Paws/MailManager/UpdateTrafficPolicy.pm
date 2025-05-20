
package Paws::MailManager::UpdateTrafficPolicy;
  use Moose;
  has DefaultAction => (is => 'ro', isa => 'Str');
  has MaxMessageSizeBytes => (is => 'ro', isa => 'Int');
  has PolicyStatements => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::PolicyStatement]');
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrafficPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::UpdateTrafficPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::UpdateTrafficPolicy - Arguments for method UpdateTrafficPolicy on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTrafficPolicy on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method UpdateTrafficPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTrafficPolicy.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $UpdateTrafficPolicyResponse = $mail -manager->UpdateTrafficPolicy(
      TrafficPolicyId     => 'MyTrafficPolicyId',
      DefaultAction       => 'ALLOW',               # OPTIONAL
      MaxMessageSizeBytes => 1,                     # OPTIONAL
      PolicyStatements    => [
        {
          Action     => 'ALLOW',                    # values: ALLOW, DENY
          Conditions => [
            {
              BooleanExpression => {
                Evaluate => {
                  Analysis => {
                    Analyzer    => 'MyAnalyzerArn',
                    ResultField => 'MyResultField',    # min: 1, max: 256

                  },    # OPTIONAL
                  IsInAddressList => {
                    AddressLists => [ 'MyAddressListArn', ... ]
                    ,                            # min: 1, max: 1
                    Attribute => 'RECIPIENT',    # values: RECIPIENT

                  },    # OPTIONAL
                },
                Operator => 'IS_TRUE',    # values: IS_TRUE, IS_FALSE

              },    # OPTIONAL
              IpExpression => {
                Evaluate => {
                  Attribute => 'SENDER_IP',    # values: SENDER_IP; OPTIONAL
                },
                Operator =>
                  'CIDR_MATCHES',    # values: CIDR_MATCHES, NOT_CIDR_MATCHES
                Values => [ 'MyIpv4Cidr', ... ],

              },    # OPTIONAL
              Ipv6Expression => {
                Evaluate => {
                  Attribute => 'SENDER_IPV6',    # values: SENDER_IPV6; OPTIONAL
                },
                Operator =>
                  'CIDR_MATCHES',    # values: CIDR_MATCHES, NOT_CIDR_MATCHES
                Values => [
                  'MyIpv6Cidr', ...    # max: 49
                ],

              },    # OPTIONAL
              StringExpression => {
                Evaluate => {
                  Analysis => {
                    Analyzer    => 'MyAnalyzerArn',
                    ResultField => 'MyResultField',    # min: 1, max: 256

                  },    # OPTIONAL
                  Attribute => 'RECIPIENT',    # values: RECIPIENT; OPTIONAL
                },
                Operator => 'EQUALS'
                , # values: EQUALS, NOT_EQUALS, STARTS_WITH, ENDS_WITH, CONTAINS
                Values => [ 'MyString', ... ],

              },    # OPTIONAL
              TlsExpression => {
                Evaluate => {
                  Attribute => 'TLS_PROTOCOL',  # values: TLS_PROTOCOL; OPTIONAL
                },
                Operator =>
                  'MINIMUM_TLS_VERSION',    # values: MINIMUM_TLS_VERSION, IS
                Value => 'TLS1_2',          # values: TLS1_2, TLS1_3

              },    # OPTIONAL
            },
            ...
          ],    # min: 1

        },
        ...
      ],    # OPTIONAL
      TrafficPolicyName => 'MyTrafficPolicyName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/UpdateTrafficPolicy>

=head1 ATTRIBUTES


=head2 DefaultAction => Str

Default action instructs the trac policy to either Allow or Deny
(block) messages that fall outside of (or not addressed by) the
conditions of your policy statements

Valid values are: C<"ALLOW">, C<"DENY">

=head2 MaxMessageSizeBytes => Int

The maximum message size in bytes of email which is allowed in by this
traffic policyE<mdash>anything larger will be blocked.



=head2 PolicyStatements => ArrayRef[L<Paws::MailManager::PolicyStatement>]

The list of conditions to be updated for filtering email traffic.



=head2 B<REQUIRED> TrafficPolicyId => Str

The identifier of the traffic policy that you want to update.



=head2 TrafficPolicyName => Str

A user-friendly name for the traffic policy resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTrafficPolicy in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

