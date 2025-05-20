
package Paws::Organizations::EnablePolicyType;
  use Moose;
  has PolicyType => (is => 'ro', isa => 'Str', required => 1);
  has RootId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnablePolicyType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::EnablePolicyTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::EnablePolicyType - Arguments for method EnablePolicyType on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnablePolicyType on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method EnablePolicyType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnablePolicyType.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    # To enable a policy type in a root
    # The following example shows how to enable the service control policy (SCP)
    # policy type in a root. The output shows a root object with a PolicyTypes
    # response element showing that SCPs are now enabled:/n/n
    my $EnablePolicyTypeResponse = $organizations->EnablePolicyType(
      'PolicyType' => 'SERVICE_CONTROL_POLICY',
      'RootId'     => 'r-examplerootid111'
    );

    # Results:
    my $Root = $EnablePolicyTypeResponse->Root;

    # Returns a L<Paws::Organizations::EnablePolicyTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/EnablePolicyType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyType => Str

The policy type that you want to enable. You can specify one of the
following values:

=over

=item *

SERVICE_CONTROL_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html)

=item *

RESOURCE_CONTROL_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps.html)

=item *

DECLARATIVE_POLICY_EC2
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative.html)

=item *

BACKUP_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html)

=item *

TAG_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html)

=item *

CHATBOT_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot.html)

=item *

AISERVICES_OPT_OUT_POLICY
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html)

=back


Valid values are: C<"SERVICE_CONTROL_POLICY">, C<"RESOURCE_CONTROL_POLICY">, C<"TAG_POLICY">, C<"BACKUP_POLICY">, C<"AISERVICES_OPT_OUT_POLICY">, C<"CHATBOT_POLICY">, C<"DECLARATIVE_POLICY_EC2">

=head2 B<REQUIRED> RootId => Str

The unique identifier (ID) of the root in which you want to enable a
policy type. You can get the ID from the ListRoots operation.

The regex pattern (http://wikipedia.org/wiki/regex) for a root ID
string requires "r-" followed by from 4 to 32 lowercase letters or
digits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnablePolicyType in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

