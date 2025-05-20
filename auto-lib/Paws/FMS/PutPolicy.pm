
package Paws::FMS::PutPolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::FMS::Policy', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::FMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::PutPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PutPolicy - Arguments for method PutPolicy on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPolicy on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method PutPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPolicy.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $PutPolicyResponse = $fms->PutPolicy(
      Policy => {
        ExcludeResourceTags       => 1,
        PolicyName                => 'MyResourceName',    # min: 1, max: 128
        RemediationEnabled        => 1,
        ResourceType              => 'MyResourceType',    # min: 1, max: 128
        SecurityServicePolicyData => {
          Type => 'WAF'
          , # values: WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT, NETWORK_FIREWALL, DNS_FIREWALL, THIRD_PARTY_FIREWALL, IMPORT_NETWORK_FIREWALL, NETWORK_ACL_COMMON
          ManagedServiceData =>
            'MyManagedServiceData',    # min: 1, max: 30000; OPTIONAL
          PolicyOption => {
            NetworkAclCommonPolicy => {
              NetworkAclEntrySet => {
                ForceRemediateForFirstEntries => 1,
                ForceRemediateForLastEntries  => 1,
                FirstEntries                  => [
                  {
                    Egress     => 1,
                    Protocol   => 'MyLengthBoundedString', # max: 1024
                    RuleAction => 'allow',                 # values: allow, deny
                    CidrBlock  => 'MyLengthBoundedNonEmptyString'
                    ,    # min: 1, max: 1024; OPTIONAL
                    IcmpTypeCode => {
                      Code => 1,   # min: -2147483648, max: 2147483647; OPTIONAL
                      Type => 1,   # min: -2147483648, max: 2147483647; OPTIONAL
                    },    # OPTIONAL
                    Ipv6CidrBlock => 'MyLengthBoundedNonEmptyString'
                    ,     # min: 1, max: 1024; OPTIONAL
                    PortRange => {
                      From => 1,    # max: 65535; OPTIONAL
                      To   => 1,    # max: 65535; OPTIONAL
                    },    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                LastEntries => [
                  {
                    Egress     => 1,
                    Protocol   => 'MyLengthBoundedString', # max: 1024
                    RuleAction => 'allow',                 # values: allow, deny
                    CidrBlock  => 'MyLengthBoundedNonEmptyString'
                    ,    # min: 1, max: 1024; OPTIONAL
                    IcmpTypeCode => {
                      Code => 1,   # min: -2147483648, max: 2147483647; OPTIONAL
                      Type => 1,   # min: -2147483648, max: 2147483647; OPTIONAL
                    },    # OPTIONAL
                    Ipv6CidrBlock => 'MyLengthBoundedNonEmptyString'
                    ,     # min: 1, max: 1024; OPTIONAL
                    PortRange => {
                      From => 1,    # max: 65535; OPTIONAL
                      To   => 1,    # max: 65535; OPTIONAL
                    },    # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
              },

            },    # OPTIONAL
            NetworkFirewallPolicy => {
              FirewallDeploymentModel =>
                'CENTRALIZED',    # values: CENTRALIZED, DISTRIBUTED; OPTIONAL
            },    # OPTIONAL
            ThirdPartyFirewallPolicy => {
              FirewallDeploymentModel =>
                'CENTRALIZED',    # values: CENTRALIZED, DISTRIBUTED; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        DeleteUnusedFMManagedResources => 1,
        ExcludeMap                     => {
          'ACCOUNT' => [
            'MyCustomerPolicyScopeId', ...    # min: 1, max: 1024
          ],    # key: values: ACCOUNT, ORG_UNIT
        },    # OPTIONAL
        IncludeMap => {
          'ACCOUNT' => [
            'MyCustomerPolicyScopeId', ...    # min: 1, max: 1024
          ],    # key: values: ACCOUNT, ORG_UNIT
        },    # OPTIONAL
        PolicyDescription => 'MyResourceDescription',    # max: 256; OPTIONAL
        PolicyId          => 'MyPolicyId',    # min: 36, max: 36; OPTIONAL
        PolicyStatus => 'ACTIVE', # values: ACTIVE, OUT_OF_ADMIN_SCOPE; OPTIONAL
        PolicyUpdateToken =>
          'MyPolicyUpdateToken',  # min: 1, max: 1024; OPTIONAL
        ResourceSetIds => [
          'MyBase62Id', ...       # min: 22, max: 22
        ],    # OPTIONAL
        ResourceTagLogicalOperator => 'AND',    # values: AND, OR; OPTIONAL
        ResourceTags               => [
          {
            Key   => 'MyResourceTagKey',      # min: 1, max: 128
            Value => 'MyResourceTagValue',    # max: 256; OPTIONAL
          },
          ...
        ],    # max: 50; OPTIONAL
        ResourceTypeList => [
          'MyResourceType', ...    # min: 1, max: 128
        ],    # OPTIONAL
      },
      TagList => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Policy    = $PutPolicyResponse->Policy;
    my $PolicyArn = $PutPolicyResponse->PolicyArn;

    # Returns a L<Paws::FMS::PutPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/PutPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => L<Paws::FMS::Policy>

The details of the Firewall Manager policy to be created.



=head2 TagList => ArrayRef[L<Paws::FMS::Tag>]

The tags to add to the Amazon Web Services resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPolicy in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

