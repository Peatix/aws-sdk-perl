
package Paws::DataZone::CreateSubscriptionGrant;
  use Moose;
  has AssetTargetNames => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::AssetTargetNameMap]', traits => ['NameInRequest'], request_name => 'assetTargetNames');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentIdentifier', required => 1);
  has GrantedEntity => (is => 'ro', isa => 'Paws::DataZone::GrantedEntityInput', traits => ['NameInRequest'], request_name => 'grantedEntity', required => 1);
  has SubscriptionTargetIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subscriptionTargetIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscriptionGrant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscription-grants');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateSubscriptionGrantOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateSubscriptionGrant - Arguments for method CreateSubscriptionGrant on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriptionGrant on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateSubscriptionGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriptionGrant.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateSubscriptionGrantOutput = $datazone->CreateSubscriptionGrant(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      GrantedEntity         => {
        Listing => {
          Identifier => 'MyListingId',
          Revision   => 'MyRevision',    # min: 1, max: 64

        },    # OPTIONAL
      },
      AssetTargetNames => [
        {
          AssetId    => 'MyAssetId',
          TargetName => 'MyString',

        },
        ...
      ],    # OPTIONAL
      ClientToken                  => 'MyString',                  # OPTIONAL
      SubscriptionTargetIdentifier => 'MySubscriptionTargetId',    # OPTIONAL
    );

    # Results:
    my $Assets         = $CreateSubscriptionGrantOutput->Assets;
    my $CreatedAt      = $CreateSubscriptionGrantOutput->CreatedAt;
    my $CreatedBy      = $CreateSubscriptionGrantOutput->CreatedBy;
    my $DomainId       = $CreateSubscriptionGrantOutput->DomainId;
    my $GrantedEntity  = $CreateSubscriptionGrantOutput->GrantedEntity;
    my $Id             = $CreateSubscriptionGrantOutput->Id;
    my $Status         = $CreateSubscriptionGrantOutput->Status;
    my $SubscriptionId = $CreateSubscriptionGrantOutput->SubscriptionId;
    my $SubscriptionTargetId =
      $CreateSubscriptionGrantOutput->SubscriptionTargetId;
    my $UpdatedAt = $CreateSubscriptionGrantOutput->UpdatedAt;
    my $UpdatedBy = $CreateSubscriptionGrantOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::CreateSubscriptionGrantOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateSubscriptionGrant>

=head1 ATTRIBUTES


=head2 AssetTargetNames => ArrayRef[L<Paws::DataZone::AssetTargetNameMap>]

The names of the assets for which the subscription grant is created.



=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the subscription grant is
created.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The ID of the environment in which the subscription grant is created.



=head2 B<REQUIRED> GrantedEntity => L<Paws::DataZone::GrantedEntityInput>

The entity to which the subscription is to be granted.



=head2 SubscriptionTargetIdentifier => Str

The ID of the subscription target for which the subscription grant is
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriptionGrant in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

