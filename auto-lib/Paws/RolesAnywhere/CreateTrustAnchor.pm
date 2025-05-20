
package Paws::RolesAnywhere::CreateTrustAnchor;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has NotificationSettings => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::NotificationSetting]', traits => ['NameInRequest'], request_name => 'notificationSettings');
  has Source => (is => 'ro', isa => 'Paws::RolesAnywhere::Source', traits => ['NameInRequest'], request_name => 'source', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrustAnchor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/trustanchors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RolesAnywhere::TrustAnchorDetailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::CreateTrustAnchor - Arguments for method CreateTrustAnchor on L<Paws::RolesAnywhere>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrustAnchor on the
L<IAM Roles Anywhere|Paws::RolesAnywhere> service. Use the attributes of this class
as arguments to method CreateTrustAnchor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrustAnchor.

=head1 SYNOPSIS

    my $rolesanywhere = Paws->service('RolesAnywhere');
    my $TrustAnchorDetailResponse = $rolesanywhere->CreateTrustAnchor(
      Name   => 'MyResourceName',
      Source => {
        SourceData => {
          AcmPcaArn           => 'MyString',    # OPTIONAL
          X509CertificateData => 'MySourceDataX509CertificateDataString'
          ,                                     # min: 1, max: 8000; OPTIONAL
        },    # OPTIONAL
        SourceType => 'AWS_ACM_PCA'
        , # values: AWS_ACM_PCA, CERTIFICATE_BUNDLE, SELF_SIGNED_REPOSITORY; OPTIONAL
      },
      Enabled              => 1,    # OPTIONAL
      NotificationSettings => [
        {
          Enabled => 1,
          Event   => 'CA_CERTIFICATE_EXPIRY'
          ,    # values: CA_CERTIFICATE_EXPIRY, END_ENTITY_CERTIFICATE_EXPIRY
          Channel   => 'ALL',    # values: ALL; OPTIONAL
          Threshold => 1,        # min: 1, max: 360; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TrustAnchor = $TrustAnchorDetailResponse->TrustAnchor;

    # Returns a L<Paws::RolesAnywhere::TrustAnchorDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rolesanywhere/CreateTrustAnchor>

=head1 ATTRIBUTES


=head2 Enabled => Bool

Specifies whether the trust anchor is enabled.



=head2 B<REQUIRED> Name => Str

The name of the trust anchor.



=head2 NotificationSettings => ArrayRef[L<Paws::RolesAnywhere::NotificationSetting>]

A list of notification settings to be associated to the trust anchor.



=head2 B<REQUIRED> Source => L<Paws::RolesAnywhere::Source>

The trust anchor type and its related certificate data.



=head2 Tags => ArrayRef[L<Paws::RolesAnywhere::Tag>]

The tags to attach to the trust anchor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrustAnchor in L<Paws::RolesAnywhere>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

