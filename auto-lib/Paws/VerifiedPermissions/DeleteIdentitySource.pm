
package Paws::VerifiedPermissions::DeleteIdentitySource;
  use Moose;
  has IdentitySourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identitySourceId' , required => 1);
  has PolicyStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyStoreId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentitySource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VerifiedPermissions::DeleteIdentitySourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::DeleteIdentitySource - Arguments for method DeleteIdentitySource on L<Paws::VerifiedPermissions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIdentitySource on the
L<Amazon Verified Permissions|Paws::VerifiedPermissions> service. Use the attributes of this class
as arguments to method DeleteIdentitySource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIdentitySource.

=head1 SYNOPSIS

    my $verifiedpermissions = Paws->service('VerifiedPermissions');
    my $DeleteIdentitySourceOutput = $verifiedpermissions->DeleteIdentitySource(
      IdentitySourceId => 'MyIdentitySourceId',
      PolicyStoreId    => 'MyPolicyStoreId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/verifiedpermissions/DeleteIdentitySource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentitySourceId => Str

Specifies the ID of the identity source that you want to delete.



=head2 B<REQUIRED> PolicyStoreId => Str

Specifies the ID of the policy store that contains the identity source
that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIdentitySource in L<Paws::VerifiedPermissions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

