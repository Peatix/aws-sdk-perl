
package Paws::DataZone::GetSubscriptionGrant;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionGrant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscription-grants/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetSubscriptionGrantOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetSubscriptionGrant - Arguments for method GetSubscriptionGrant on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscriptionGrant on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetSubscriptionGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscriptionGrant.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetSubscriptionGrantOutput = $datazone->GetSubscriptionGrant(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MySubscriptionGrantId',

    );

    # Results:
    my $Assets         = $GetSubscriptionGrantOutput->Assets;
    my $CreatedAt      = $GetSubscriptionGrantOutput->CreatedAt;
    my $CreatedBy      = $GetSubscriptionGrantOutput->CreatedBy;
    my $DomainId       = $GetSubscriptionGrantOutput->DomainId;
    my $GrantedEntity  = $GetSubscriptionGrantOutput->GrantedEntity;
    my $Id             = $GetSubscriptionGrantOutput->Id;
    my $Status         = $GetSubscriptionGrantOutput->Status;
    my $SubscriptionId = $GetSubscriptionGrantOutput->SubscriptionId;
    my $SubscriptionTargetId =
      $GetSubscriptionGrantOutput->SubscriptionTargetId;
    my $UpdatedAt = $GetSubscriptionGrantOutput->UpdatedAt;
    my $UpdatedBy = $GetSubscriptionGrantOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::GetSubscriptionGrantOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetSubscriptionGrant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the subscription grant
exists.



=head2 B<REQUIRED> Identifier => Str

The ID of the subscription grant.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscriptionGrant in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

