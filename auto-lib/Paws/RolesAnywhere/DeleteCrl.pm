
package Paws::RolesAnywhere::DeleteCrl;
  use Moose;
  has CrlId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'crlId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/crl/{crlId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::CrlDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::DeleteCrl - Arguments for method DeleteCrl on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCrl on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method DeleteCrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCrl.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $CrlDetailResponse = $rolesanywhere->DeleteCrl(
      CrlId => 'MyUuid',

    );

    # Results:
    my $Crl = $CrlDetailResponse->Crl;

    # Returns a L<Paws::RolesAnywhere::CrlDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/DeleteCrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CrlId => Str

The unique identifier of the certificate revocation list (CRL).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCrl in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

