
package Paws::Route53Profiles::DisassociateResourceFromProfile;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ProfileId', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateResourceFromProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profileresourceassociation/profileid/{ProfileId}/resourcearn/{ResourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Profiles::DisassociateResourceFromProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::DisassociateResourceFromProfile - Arguments for method DisassociateResourceFromProfile on L<Paws::Route53Profiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateResourceFromProfile on the
L<Route 53 Profiles|Paws::Route53Profiles> service. Use the attributes of this class
as arguments to method DisassociateResourceFromProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateResourceFromProfile.

=head1 SYNOPSIS

    my $route53profiles = Paws->service('Route53Profiles');
    my $DisassociateResourceFromProfileResponse =
      $route53profiles->DisassociateResourceFromProfile(
      ProfileId   => 'MyResourceId',
      ResourceArn => 'MyArn',

      );

    # Results:
    my $ProfileResourceAssociation =
      $DisassociateResourceFromProfileResponse->ProfileResourceAssociation;

# Returns a L<Paws::Route53Profiles::DisassociateResourceFromProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53profiles/DisassociateResourceFromProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

The ID of the Profile.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateResourceFromProfile in L<Paws::Route53Profiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

