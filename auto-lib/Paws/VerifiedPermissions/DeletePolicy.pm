
package Paws::VerifiedPermissions::DeletePolicy;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyId' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::DeletePolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::DeletePolicy - Arguments for method DeletePolicy on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePolicy on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method DeletePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePolicy.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $DeletePolicyOutput = $verifiedpermissions->DeletePolicy(
      PolicyId      => 'MyPolicyId',
      PolicyStoreId => 'MyPolicyStoreId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/DeletePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

Specifies the ID of the policy that you want to delete.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store that contains the policy that you
want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePolicy in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

