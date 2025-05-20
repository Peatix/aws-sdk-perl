
package Paws::VerifiedPermissions::UpdatePolicy;
  use Moose;
  has Definition => (is => 'ro', isa => 'Paws::VerifiedPermissions::UpdatePolicyDefinition', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has PolicyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyId' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::UpdatePolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdatePolicy - Arguments for method UpdatePolicy on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePolicy on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method UpdatePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePolicy.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $UpdatePolicyOutput = $verifiedpermissions->UpdatePolicy(
      Definition => {
        Static => {
          Statement   => 'MyPolicyStatement',            # min: 1, max: 10000
          Description => 'MyStaticPolicyDescription',    # max: 150; OPTIONAL
        },    # OPTIONAL
      },
      PolicyId      => 'MyPolicyId',
      PolicyStoreId => 'MyPolicyStoreId',

    );

    # Results:
    my $Actions         = $UpdatePolicyOutput->Actions;
    my $CreatedDate     = $UpdatePolicyOutput->CreatedDate;
    my $Effect          = $UpdatePolicyOutput->Effect;
    my $LastUpdatedDate = $UpdatePolicyOutput->LastUpdatedDate;
    my $PolicyId        = $UpdatePolicyOutput->PolicyId;
    my $PolicyStoreId   = $UpdatePolicyOutput->PolicyStoreId;
    my $PolicyType      = $UpdatePolicyOutput->PolicyType;
    my $Principal       = $UpdatePolicyOutput->Principal;
    my $Resource        = $UpdatePolicyOutput->Resource;

    # Returns a L<Paws::VerifiedPermissions::UpdatePolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/UpdatePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => L<Paws::VerifiedPermissions::UpdatePolicyDefinition>

Specifies the updated policy content that you want to replace on the
specified policy. The content must be valid Cedar policy language text.

You can change only the following elements from the policy definition:

=over

=item *

The C<action> referenced by the policy.

=item *

Any conditional clauses, such as C<when> or C<unless> clauses.

=back

You B<can't> change the following elements:

=over

=item *

Changing from C<static> to C<templateLinked>.

=item *

Changing the effect of the policy from C<permit> or C<forbid>.

=item *

The C<principal> referenced by the policy.

=item *

The C<resource> referenced by the policy.

=back




=head2 B<REQUIRED> PolicyId => Str

Specifies the ID of the policy that you want to update. To find this
value, you can use ListPolicies
(https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_ListPolicies.html).



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store that contains the policy that you
want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePolicy in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

