
package Paws::RolesAnywhere::EnableTrustAnchor;
  use Moose;
  has TrustAnchorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trustAnchorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableTrustAnchor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/trustanchor/{trustAnchorId}/enable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::TrustAnchorDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::EnableTrustAnchor - Arguments for method EnableTrustAnchor on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableTrustAnchor on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method EnableTrustAnchor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableTrustAnchor.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $TrustAnchorDetailResponse = $rolesanywhere->EnableTrustAnchor(
      TrustAnchorId => 'MyUuid',

    );

    # Results:
    my $TrustAnchor = $TrustAnchorDetailResponse->TrustAnchor;

    # Returns a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/EnableTrustAnchor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrustAnchorId => Str

The unique identifier of the trust anchor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableTrustAnchor in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

