
package Paws::DataZone::CancelSubscription;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscriptions/{identifier}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CancelSubscriptionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CancelSubscription - Arguments for method CancelSubscription on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelSubscription on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CancelSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelSubscription.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CancelSubscriptionOutput = $datazone->CancelSubscription(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MySubscriptionId',

    );

    # Results:
    my $CreatedAt           = $CancelSubscriptionOutput->CreatedAt;
    my $CreatedBy           = $CancelSubscriptionOutput->CreatedBy;
    my $DomainId            = $CancelSubscriptionOutput->DomainId;
    my $Id                  = $CancelSubscriptionOutput->Id;
    my $RetainPermissions   = $CancelSubscriptionOutput->RetainPermissions;
    my $Status              = $CancelSubscriptionOutput->Status;
    my $SubscribedListing   = $CancelSubscriptionOutput->SubscribedListing;
    my $SubscribedPrincipal = $CancelSubscriptionOutput->SubscribedPrincipal;
    my $SubscriptionRequestId =
      $CancelSubscriptionOutput->SubscriptionRequestId;
    my $UpdatedAt = $CancelSubscriptionOutput->UpdatedAt;
    my $UpdatedBy = $CancelSubscriptionOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::CancelSubscriptionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CancelSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The unique identifier of the Amazon DataZone domain where the
subscription request is being cancelled.



=head2 B<REQUIRED> Identifier => Str

The unique identifier of the subscription that is being cancelled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelSubscription in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

