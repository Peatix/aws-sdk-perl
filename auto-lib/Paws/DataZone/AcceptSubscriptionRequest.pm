
package Paws::DataZone::AcceptSubscriptionRequest;
  use Moose;
  has AssetScopes => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::AcceptedAssetScope]', traits => ['NameInRequest'], request_name => 'assetScopes');
  has DecisionComment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'decisionComment');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptSubscriptionRequest');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/accept');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::AcceptSubscriptionRequestOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::AcceptSubscriptionRequest - Arguments for method AcceptSubscriptionRequest on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptSubscriptionRequest on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method AcceptSubscriptionRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptSubscriptionRequest.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $AcceptSubscriptionRequestOutput = $datazone->AcceptSubscriptionRequest(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MySubscriptionRequestId',
      AssetScopes      => [
        {
          AssetId   => 'MyAssetId',
          FilterIds => [ 'MyFilterId', ... ],

        },
        ...
      ],    # OPTIONAL
      DecisionComment => 'MyDecisionComment',    # OPTIONAL
    );

    # Results:
    my $CreatedAt       = $AcceptSubscriptionRequestOutput->CreatedAt;
    my $CreatedBy       = $AcceptSubscriptionRequestOutput->CreatedBy;
    my $DecisionComment = $AcceptSubscriptionRequestOutput->DecisionComment;
    my $DomainId        = $AcceptSubscriptionRequestOutput->DomainId;
    my $ExistingSubscriptionId =
      $AcceptSubscriptionRequestOutput->ExistingSubscriptionId;
    my $Id            = $AcceptSubscriptionRequestOutput->Id;
    my $MetadataForms = $AcceptSubscriptionRequestOutput->MetadataForms;
    my $RequestReason = $AcceptSubscriptionRequestOutput->RequestReason;
    my $ReviewerId    = $AcceptSubscriptionRequestOutput->ReviewerId;
    my $Status        = $AcceptSubscriptionRequestOutput->Status;
    my $SubscribedListings =
      $AcceptSubscriptionRequestOutput->SubscribedListings;
    my $SubscribedPrincipals =
      $AcceptSubscriptionRequestOutput->SubscribedPrincipals;
    my $UpdatedAt = $AcceptSubscriptionRequestOutput->UpdatedAt;
    my $UpdatedBy = $AcceptSubscriptionRequestOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::AcceptSubscriptionRequestOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/AcceptSubscriptionRequest>

=head1 ATTRIBUTES


=head2 AssetScopes => ArrayRef[L<Paws::DataZone::AcceptedAssetScope>]

The asset scopes of the accept subscription request.



=head2 DecisionComment => Str

A description that specifies the reason for accepting the specified
subscription request.



=head2 B<REQUIRED> DomainIdentifier => Str

The Amazon DataZone domain where the specified subscription request is
being accepted.



=head2 B<REQUIRED> Identifier => Str

The unique identifier of the subscription request that is to be
accepted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptSubscriptionRequest in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

