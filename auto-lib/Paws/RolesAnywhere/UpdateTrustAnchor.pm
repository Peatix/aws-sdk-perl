
package Paws::RolesAnywhere::UpdateTrustAnchor;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Source => (is => 'ro', isa => 'Paws::RolesAnywhere::Source', traits => ['NameInRequest'], request_name => 'source');
  has TrustAnchorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trustAnchorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrustAnchor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/trustanchor/{trustAnchorId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::TrustAnchorDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::UpdateTrustAnchor - Arguments for method UpdateTrustAnchor on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTrustAnchor on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method UpdateTrustAnchor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTrustAnchor.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $TrustAnchorDetailResponse = $rolesanywhere->UpdateTrustAnchor(
      TrustAnchorId => 'MyUuid',
      Name          => 'MyResourceName',    # OPTIONAL
      Source        => {
        SourceData => {
          AcmPcaArn           => 'MyString',    # OPTIONAL
          X509CertificateData => 'MySourceDataX509CertificateDataString'
          ,                                     # min: 1, max: 8000; OPTIONAL
        },    # OPTIONAL
        SourceType => 'AWS_ACM_PCA'
        , # values: AWS_ACM_PCA, CERTIFICATE_BUNDLE, SELF_SIGNED_REPOSITORY; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TrustAnchor = $TrustAnchorDetailResponse->TrustAnchor;

    # Returns a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/UpdateTrustAnchor>

=head1 ATTRIBUTES


=head2 Name => Str

The name of the trust anchor.



=head2 Source => L<Paws::RolesAnywhere::Source>

The trust anchor type and its related certificate data.



=head2 B<REQUIRED> TrustAnchorId => Str

The unique identifier of the trust anchor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTrustAnchor in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

