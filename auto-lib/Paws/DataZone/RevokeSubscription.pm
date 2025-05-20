
package Paws::DataZone::RevokeSubscription;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has RetainPermissions => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'retainPermissions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscriptions/{identifier}/revoke');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::RevokeSubscriptionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::RevokeSubscription - Arguments for method RevokeSubscription on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeSubscription on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method RevokeSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeSubscription.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $RevokeSubscriptionOutput = $datazone->RevokeSubscription(
      DomainIdentifier  => 'MyDomainId',
      Identifier        => 'MySubscriptionId',
      RetainPermissions => 1,                    # OPTIONAL
    );

    # Results:
    my $CreatedAt           = $RevokeSubscriptionOutput->CreatedAt;
    my $CreatedBy           = $RevokeSubscriptionOutput->CreatedBy;
    my $DomainId            = $RevokeSubscriptionOutput->DomainId;
    my $Id                  = $RevokeSubscriptionOutput->Id;
    my $RetainPermissions   = $RevokeSubscriptionOutput->RetainPermissions;
    my $Status              = $RevokeSubscriptionOutput->Status;
    my $SubscribedListing   = $RevokeSubscriptionOutput->SubscribedListing;
    my $SubscribedPrincipal = $RevokeSubscriptionOutput->SubscribedPrincipal;
    my $SubscriptionRequestId =
      $RevokeSubscriptionOutput->SubscriptionRequestId;
    my $UpdatedAt = $RevokeSubscriptionOutput->UpdatedAt;
    my $UpdatedBy = $RevokeSubscriptionOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::RevokeSubscriptionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/RevokeSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain where you want to revoke a
subscription.



=head2 B<REQUIRED> Identifier => Str

The identifier of the revoked subscription.



=head2 RetainPermissions => Bool

Specifies whether permissions are retained when the subscription is
revoked.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeSubscription in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

