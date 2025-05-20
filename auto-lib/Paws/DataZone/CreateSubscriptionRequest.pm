
package Paws::DataZone::CreateSubscriptionRequest;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MetadataForms => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FormInput]', traits => ['NameInRequest'], request_name => 'metadataForms');
  has RequestReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestReason', required => 1);
  has SubscribedListings => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SubscribedListingInput]', traits => ['NameInRequest'], request_name => 'subscribedListings', required => 1);
  has SubscribedPrincipals => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SubscribedPrincipalInput]', traits => ['NameInRequest'], request_name => 'subscribedPrincipals', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscriptionRequest');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscription-requests');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateSubscriptionRequestOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateSubscriptionRequest - Arguments for method CreateSubscriptionRequest on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriptionRequest on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateSubscriptionRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriptionRequest.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateSubscriptionRequestOutput = $datazone->CreateSubscriptionRequest(
      DomainIdentifier   => 'MyDomainId',
      RequestReason      => 'MyRequestReason',
      SubscribedListings => [
        {
          Identifier => 'MyListingId',

        },
        ...
      ],
      SubscribedPrincipals => [
        {
          Project => {
            Identifier => 'MyProjectId',    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      ClientToken   => 'MyString',    # OPTIONAL
      MetadataForms => [
        {
          FormName       => 'MyFormName',                # min: 1, max: 128
          Content        => 'MyFormInputContentString',  # max: 300000; OPTIONAL
          TypeIdentifier => 'MyFormTypeIdentifier', # min: 1, max: 385; OPTIONAL
          TypeRevision   => 'MyRevisionInput',      # min: 1, max: 64; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedAt       = $CreateSubscriptionRequestOutput->CreatedAt;
    my $CreatedBy       = $CreateSubscriptionRequestOutput->CreatedBy;
    my $DecisionComment = $CreateSubscriptionRequestOutput->DecisionComment;
    my $DomainId        = $CreateSubscriptionRequestOutput->DomainId;
    my $ExistingSubscriptionId =
      $CreateSubscriptionRequestOutput->ExistingSubscriptionId;
    my $Id            = $CreateSubscriptionRequestOutput->Id;
    my $MetadataForms = $CreateSubscriptionRequestOutput->MetadataForms;
    my $RequestReason = $CreateSubscriptionRequestOutput->RequestReason;
    my $ReviewerId    = $CreateSubscriptionRequestOutput->ReviewerId;
    my $Status        = $CreateSubscriptionRequestOutput->Status;
    my $SubscribedListings =
      $CreateSubscriptionRequestOutput->SubscribedListings;
    my $SubscribedPrincipals =
      $CreateSubscriptionRequestOutput->SubscribedPrincipals;
    my $UpdatedAt = $CreateSubscriptionRequestOutput->UpdatedAt;
    my $UpdatedBy = $CreateSubscriptionRequestOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::CreateSubscriptionRequestOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateSubscriptionRequest>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the subscription request
is created.



=head2 MetadataForms => ArrayRef[L<Paws::DataZone::FormInput>]

The metadata form included in the subscription request.



=head2 B<REQUIRED> RequestReason => Str

The reason for the subscription request.



=head2 B<REQUIRED> SubscribedListings => ArrayRef[L<Paws::DataZone::SubscribedListingInput>]

The published asset for which the subscription grant is to be created.



=head2 B<REQUIRED> SubscribedPrincipals => ArrayRef[L<Paws::DataZone::SubscribedPrincipalInput>]

The Amazon DataZone principals for whom the subscription request is
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriptionRequest in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

