
package Paws::Route53Profiles::UpdateProfileResourceAssociation;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has ProfileResourceAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileResourceAssociationId', required => 1);
  has ResourceProperties => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProfileResourceAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profileresourceassociation/{ProfileResourceAssociationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::UpdateProfileResourceAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::UpdateProfileResourceAssociation - Arguments for method UpdateProfileResourceAssociation on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProfileResourceAssociation on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method UpdateProfileResourceAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProfileResourceAssociation.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $UpdateProfileResourceAssociationResponse =
      $route53profiles->UpdateProfileResourceAssociation(
      ProfileResourceAssociationId => 'MyResourceId',
      Name                         => 'MyName',                  # OPTIONAL
      ResourceProperties           => 'MyResourceProperties',    # OPTIONAL
      );

    # Results:
    my $ProfileResourceAssociation =
      $UpdateProfileResourceAssociationResponse->ProfileResourceAssociation;

# Returns a L<Paws::Route53Profiles::UpdateProfileResourceAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/UpdateProfileResourceAssociation>

=head1 ATTRIBUTES


=head2 Name => Str

Name of the resource association.



=head2 B<REQUIRED> ProfileResourceAssociationId => Str

ID of the resource association.



=head2 ResourceProperties => Str

If you are adding a DNS Firewall rule group, include also a priority.
The priority indicates the processing order for the rule groups,
starting with the priority assinged the lowest value.

The allowed values for priority are between 100 and 9900.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProfileResourceAssociation in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

