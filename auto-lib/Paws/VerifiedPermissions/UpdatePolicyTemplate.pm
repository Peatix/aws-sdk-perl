
package Paws::VerifiedPermissions::UpdatePolicyTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has PolicyTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyTemplateId' , required => 1);
  has Statement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statement' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePolicyTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::UpdatePolicyTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdatePolicyTemplate - Arguments for method UpdatePolicyTemplate on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePolicyTemplate on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method UpdatePolicyTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePolicyTemplate.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $UpdatePolicyTemplateOutput = $verifiedpermissions->UpdatePolicyTemplate(
      PolicyStoreId    => 'MyPolicyStoreId',
      PolicyTemplateId => 'MyPolicyTemplateId',
      Statement        => 'MyPolicyStatement',
      Description      => 'MyPolicyTemplateDescription',    # OPTIONAL
    );

    # Results:
    my $CreatedDate      = $UpdatePolicyTemplateOutput->CreatedDate;
    my $LastUpdatedDate  = $UpdatePolicyTemplateOutput->LastUpdatedDate;
    my $PolicyStoreId    = $UpdatePolicyTemplateOutput->PolicyStoreId;
    my $PolicyTemplateId = $UpdatePolicyTemplateOutput->PolicyTemplateId;

    # Returns a L<Paws::VerifiedPermissions::UpdatePolicyTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/UpdatePolicyTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

Specifies a new description to apply to the policy template.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store that contains the policy template
that you want to update.



=head2 B<REQUIRED> PolicyTemplateId => Str

Specifies the ID of the policy template that you want to update.



=head2 B<REQUIRED> Statement => Str

Specifies new statement content written in Cedar policy language to
replace the current body of the policy template.

You can change only the following elements of the policy body:

=over

=item *

The C<action> referenced by the policy template.

=item *

Any conditional clauses, such as C<when> or C<unless> clauses.

=back

You B<can't> change the following elements:

=over

=item *

The effect (C<permit> or C<forbid>) of the policy template.

=item *

The C<principal> referenced by the policy template.

=item *

The C<resource> referenced by the policy template.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePolicyTemplate in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

