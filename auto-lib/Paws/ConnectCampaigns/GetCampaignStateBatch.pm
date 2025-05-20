
package Paws::ConnectCampaigns::GetCampaignStateBatch;
  use Moose;
  has CampaignIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'campaignIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCampaignStateBatch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/campaigns-state');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCampaigns::GetCampaignStateBatchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::GetCampaignStateBatch - Arguments for method GetCampaignStateBatch on L<Paws::ConnectCampaigns>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCampaignStateBatch on the
L<AmazonConnectCampaignService|Paws::ConnectCampaigns> service. Use the attributes of this class
as arguments to method GetCampaignStateBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCampaignStateBatch.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaigns');
    my $GetCampaignStateBatchResponse =
      $connect -campaigns->GetCampaignStateBatch(
      CampaignIds => [
        'MyCampaignId', ...    # max: 256
      ],

      );

    # Results:
    my $FailedRequests     = $GetCampaignStateBatchResponse->FailedRequests;
    my $SuccessfulRequests = $GetCampaignStateBatchResponse->SuccessfulRequests;

    # Returns a L<Paws::ConnectCampaigns::GetCampaignStateBatchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/GetCampaignStateBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignIds => ArrayRef[Str|Undef]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCampaignStateBatch in L<Paws::ConnectCampaigns>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

