
package Paws::Route53Profiles::GetProfileAssociation;
  use Moose;
  has ProfileAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileAssociationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProfileAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profileassociation/{ProfileAssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::GetProfileAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::GetProfileAssociation - Arguments for method GetProfileAssociation on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProfileAssociation on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method GetProfileAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProfileAssociation.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $GetProfileAssociationResponse = $route53profiles->GetProfileAssociation(
      ProfileAssociationId => 'MyResourceId',

    );

    # Results:
    my $ProfileAssociation = $GetProfileAssociationResponse->ProfileAssociation;

    # Returns a L<Paws::Route53Profiles::GetProfileAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/GetProfileAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileAssociationId => Str

The identifier of the association you want to get information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfileAssociation in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

