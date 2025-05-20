
package Paws::VerifiedPermissions::UpdatePolicyStore;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deletionProtection' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);
  has ValidationSettings => (is => 'ro', isa => 'Paws::VerifiedPermissions::ValidationSettings', traits => ['NameInRequest'], request_name => 'validationSettings' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePolicyStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::UpdatePolicyStoreOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::UpdatePolicyStore - Arguments for method UpdatePolicyStore on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePolicyStore on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method UpdatePolicyStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePolicyStore.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $UpdatePolicyStoreOutput = $verifiedpermissions->UpdatePolicyStore(
      PolicyStoreId      => 'MyPolicyStoreId',
      ValidationSettings => {
        Mode => 'OFF',    # values: OFF, STRICT

      },
      DeletionProtection => 'ENABLED',                     # OPTIONAL
      Description        => 'MyPolicyStoreDescription',    # OPTIONAL
    );

    # Results:
    my $Arn             = $UpdatePolicyStoreOutput->Arn;
    my $CreatedDate     = $UpdatePolicyStoreOutput->CreatedDate;
    my $LastUpdatedDate = $UpdatePolicyStoreOutput->LastUpdatedDate;
    my $PolicyStoreId   = $UpdatePolicyStoreOutput->PolicyStoreId;

    # Returns a L<Paws::VerifiedPermissions::UpdatePolicyStoreOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/UpdatePolicyStore>

=head1 ATTRIBUTES


=head2 DeletionProtection => Str

Specifies whether the policy store can be deleted. If enabled, the
policy store can't be deleted.

When you call C<UpdatePolicyStore>, this parameter is unchanged unless
explicitly included in the call.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Description => Str

Descriptive text that you can provide to help with identification of
the current policy store.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store that you want to update



=head2 B<REQUIRED> ValidationSettings => L<Paws::VerifiedPermissions::ValidationSettings>

A structure that defines the validation settings that want to enable
for the policy store.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePolicyStore in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

