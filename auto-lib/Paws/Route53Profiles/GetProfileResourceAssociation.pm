
package Paws::Route53Profiles::GetProfileResourceAssociation;
  use Moose;
  has ProfileResourceAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileResourceAssociationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProfileResourceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profileresourceassociation/{ProfileResourceAssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::GetProfileResourceAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::GetProfileResourceAssociation - Arguments for method GetProfileResourceAssociation on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProfileResourceAssociation on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method GetProfileResourceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProfileResourceAssociation.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $GetProfileResourceAssociationResponse =
      $route53profiles->GetProfileResourceAssociation(
      ProfileResourceAssociationId => 'MyResourceId',

      );

    # Results:
    my $ProfileResourceAssociation =
      $GetProfileResourceAssociationResponse->ProfileResourceAssociation;

# Returns a L<Paws::Route53Profiles::GetProfileResourceAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/GetProfileResourceAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileResourceAssociationId => Str

The ID of the profile resource association that you want to get
information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfileResourceAssociation in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

