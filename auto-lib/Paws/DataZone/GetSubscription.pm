
package Paws::DataZone::GetSubscription;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscriptions/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetSubscriptionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetSubscription - Arguments for method GetSubscription on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscription on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscription.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetSubscriptionOutput = $datazone->GetSubscription(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MySubscriptionId',

    );

    # Results:
    my $CreatedAt             = $GetSubscriptionOutput->CreatedAt;
    my $CreatedBy             = $GetSubscriptionOutput->CreatedBy;
    my $DomainId              = $GetSubscriptionOutput->DomainId;
    my $Id                    = $GetSubscriptionOutput->Id;
    my $RetainPermissions     = $GetSubscriptionOutput->RetainPermissions;
    my $Status                = $GetSubscriptionOutput->Status;
    my $SubscribedListing     = $GetSubscriptionOutput->SubscribedListing;
    my $SubscribedPrincipal   = $GetSubscriptionOutput->SubscribedPrincipal;
    my $SubscriptionRequestId = $GetSubscriptionOutput->SubscriptionRequestId;
    my $UpdatedAt             = $GetSubscriptionOutput->UpdatedAt;
    my $UpdatedBy             = $GetSubscriptionOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::GetSubscriptionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the subscription exists.



=head2 B<REQUIRED> Identifier => Str

The ID of the subscription.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscription in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

