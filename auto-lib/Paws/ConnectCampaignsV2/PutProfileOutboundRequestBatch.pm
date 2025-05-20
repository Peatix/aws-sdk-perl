
package Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatch;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has ProfileOutboundRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::ProfileOutboundRequest]', traits => ['NameInRequest'], request_name => 'profileOutboundRequests', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutProfileOutboundRequestBatch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/campaigns/{id}/profile-outbound-requests');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatch - Arguments for method PutProfileOutboundRequestBatch on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutProfileOutboundRequestBatch on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method PutProfileOutboundRequestBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutProfileOutboundRequestBatch.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    my $PutProfileOutboundRequestBatchResponse =
      $connect -campaigns->PutProfileOutboundRequestBatch(
      Id                      => 'MyCampaignId',
      ProfileOutboundRequests => [
        {
          ClientToken    => 'MyClientToken',          # max: 200
          ProfileId      => 'MyProfileId',
          ExpirationTime => '1970-01-01T01:00:00',    # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $FailedRequests =
      $PutProfileOutboundRequestBatchResponse->FailedRequests;
    my $SuccessfulRequests =
      $PutProfileOutboundRequestBatchResponse->SuccessfulRequests;

# Returns a L<Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/PutProfileOutboundRequestBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str





=head2 B<REQUIRED> ProfileOutboundRequests => ArrayRef[L<Paws::ConnectCampaignsV2::ProfileOutboundRequest>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutProfileOutboundRequestBatch in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

