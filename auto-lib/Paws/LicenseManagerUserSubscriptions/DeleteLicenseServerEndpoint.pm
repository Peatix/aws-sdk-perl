
package Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpoint;
  use Moose;
  has LicenseServerEndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has ServerType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLicenseServerEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/license-server/DeleteLicenseServerEndpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpoint - Arguments for method DeleteLicenseServerEndpoint on L<Paws::LicenseManagerUserSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLicenseServerEndpoint on the
L<AWS License Manager User Subscriptions|Paws::LicenseManagerUserSubscriptions> service. Use the attributes of this class
as arguments to method DeleteLicenseServerEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLicenseServerEndpoint.

=head1 SYNOPSIS

    my $license-manager-user-subscriptions = Paws->service('LicenseManagerUserSubscriptions');
    my $DeleteLicenseServerEndpointResponse =
      $license -manager-user-subscriptions->DeleteLicenseServerEndpoint(
      LicenseServerEndpointArn => 'MyArn',
      ServerType               => 'RDS_SAL',

      );

    # Results:
    my $LicenseServerEndpoint =
      $DeleteLicenseServerEndpointResponse->LicenseServerEndpoint;

# Returns a L<Paws::LicenseManagerUserSubscriptions::DeleteLicenseServerEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions/DeleteLicenseServerEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LicenseServerEndpointArn => Str

The Amazon Resource Name (ARN) that identifies the
C<LicenseServerEndpoint> resource to delete.



=head2 B<REQUIRED> ServerType => Str

The type of License Server that the delete request refers to.

Valid values are: C<"RDS_SAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLicenseServerEndpoint in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

