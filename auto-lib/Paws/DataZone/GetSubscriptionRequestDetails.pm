
package Paws::DataZone::GetSubscriptionRequestDetails;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionRequestDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscription-requests/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetSubscriptionRequestDetailsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetSubscriptionRequestDetails - Arguments for method GetSubscriptionRequestDetails on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscriptionRequestDetails on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetSubscriptionRequestDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscriptionRequestDetails.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetSubscriptionRequestDetailsOutput =
      $datazone->GetSubscriptionRequestDetails(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MySubscriptionRequestId',

      );

    # Results:
    my $CreatedAt       = $GetSubscriptionRequestDetailsOutput->CreatedAt;
    my $CreatedBy       = $GetSubscriptionRequestDetailsOutput->CreatedBy;
    my $DecisionComment = $GetSubscriptionRequestDetailsOutput->DecisionComment;
    my $DomainId        = $GetSubscriptionRequestDetailsOutput->DomainId;
    my $ExistingSubscriptionId =
      $GetSubscriptionRequestDetailsOutput->ExistingSubscriptionId;
    my $Id            = $GetSubscriptionRequestDetailsOutput->Id;
    my $MetadataForms = $GetSubscriptionRequestDetailsOutput->MetadataForms;
    my $RequestReason = $GetSubscriptionRequestDetailsOutput->RequestReason;
    my $ReviewerId    = $GetSubscriptionRequestDetailsOutput->ReviewerId;
    my $Status        = $GetSubscriptionRequestDetailsOutput->Status;
    my $SubscribedListings =
      $GetSubscriptionRequestDetailsOutput->SubscribedListings;
    my $SubscribedPrincipals =
      $GetSubscriptionRequestDetailsOutput->SubscribedPrincipals;
    my $UpdatedAt = $GetSubscriptionRequestDetailsOutput->UpdatedAt;
    my $UpdatedBy = $GetSubscriptionRequestDetailsOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::GetSubscriptionRequestDetailsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetSubscriptionRequestDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which to get the
subscription request details.



=head2 B<REQUIRED> Identifier => Str

The identifier of the subscription request the details of which to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscriptionRequestDetails in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

