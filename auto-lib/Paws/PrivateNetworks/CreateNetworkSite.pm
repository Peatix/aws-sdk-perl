
package Paws::PrivateNetworks::CreateNetworkSite;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone');
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneId');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has NetworkArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkArn', required => 1);
  has NetworkSiteName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkSiteName', required => 1);
  has PendingPlan => (is => 'ro', isa => 'Paws::PrivateNetworks::SitePlan', traits => ['NameInRequest'], request_name => 'pendingPlan');
  has Tags => (is => 'ro', isa => 'Paws::PrivateNetworks::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/network-sites');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::CreateNetworkSiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::CreateNetworkSite - Arguments for method CreateNetworkSite on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkSite on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method CreateNetworkSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkSite.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $CreateNetworkSiteResponse = $private -networks->CreateNetworkSite(
      NetworkArn         => 'MyArn',
      NetworkSiteName    => 'MyName',
      AvailabilityZone   => 'MyString',         # OPTIONAL
      AvailabilityZoneId => 'MyString',         # OPTIONAL
      ClientToken        => 'MyClientToken',    # OPTIONAL
      Description        => 'MyDescription',    # OPTIONAL
      PendingPlan        => {
        Options => [
          {
            Name  => 'MyString',
            Value => 'MyString',
          },
          ...
        ],    # OPTIONAL
        ResourceDefinitions => [
          {
            Count   => 1,
            Type    => 'RADIO_UNIT',    # values: RADIO_UNIT, DEVICE_IDENTIFIER
            Options => [
              {
                Name  => 'MyString',
                Value => 'MyString',
              },
              ...
            ],                          # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $NetworkSite = $CreateNetworkSiteResponse->NetworkSite;
    my $Tags        = $CreateNetworkSiteResponse->Tags;

    # Returns a L<Paws::PrivateNetworks::CreateNetworkSiteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/CreateNetworkSite>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone that is the parent of this site. You can't change
the Availability Zone after you create the site.



=head2 AvailabilityZoneId => Str

The ID of the Availability Zone that is the parent of this site. You
can't change the Availability Zone after you create the site.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 Description => Str

The description of the site.



=head2 B<REQUIRED> NetworkArn => Str

The Amazon Resource Name (ARN) of the network.



=head2 B<REQUIRED> NetworkSiteName => Str

The name of the site. You can't change the name after you create the
site.



=head2 PendingPlan => L<Paws::PrivateNetworks::SitePlan>

Information about the pending plan for this site.



=head2 Tags => L<Paws::PrivateNetworks::TagMap>

The tags to apply to the network site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkSite in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

