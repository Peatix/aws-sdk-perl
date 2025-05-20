
package Paws::ConnectCampaigns::PutDialRequestBatch;
  use Moose;
  has DialRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaigns::DialRequest]', traits => ['NameInRequest'], request_name => 'dialRequests', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDialRequestBatch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/campaigns/{id}/dial-requests');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCampaigns::PutDialRequestBatchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::PutDialRequestBatch - Arguments for method PutDialRequestBatch on L<Paws::ConnectCampaigns>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDialRequestBatch on the
L<AmazonConnectCampaignService|Paws::ConnectCampaigns> service. Use the attributes of this class
as arguments to method PutDialRequestBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDialRequestBatch.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaigns');
    my $PutDialRequestBatchResponse = $connect -campaigns->PutDialRequestBatch(
      DialRequests => [
        {
          Attributes => {
            'MyAttributeName' =>
              'MyAttributeValue',    # key: max: 32767, value: max: 32767
          },
          ClientToken    => 'MyClientToken',               # max: 200
          ExpirationTime => '1970-01-01T01:00:00',
          PhoneNumber    => 'MyDestinationPhoneNumber',    # max: 20

        },
        ...
      ],
      Id => 'MyCampaignId',

    );

    # Results:
    my $FailedRequests     = $PutDialRequestBatchResponse->FailedRequests;
    my $SuccessfulRequests = $PutDialRequestBatchResponse->SuccessfulRequests;

    # Returns a L<Paws::ConnectCampaigns::PutDialRequestBatchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/PutDialRequestBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DialRequests => ArrayRef[L<Paws::ConnectCampaigns::DialRequest>]





=head2 B<REQUIRED> Id => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDialRequestBatch in L<Paws::ConnectCampaigns>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

