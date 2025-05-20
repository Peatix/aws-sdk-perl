
package Paws::LakeFormation::GetDataLakePrincipal;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataLakePrincipal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetDataLakePrincipal');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::GetDataLakePrincipalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetDataLakePrincipal - Arguments for method GetDataLakePrincipal on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataLakePrincipal on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetDataLakePrincipal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataLakePrincipal.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetDataLakePrincipalResponse = $lakeformation->GetDataLakePrincipal();

    # Results:
    my $Identity = $GetDataLakePrincipalResponse->Identity;

    # Returns a L<Paws::LakeFormation::GetDataLakePrincipalResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetDataLakePrincipal>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataLakePrincipal in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

