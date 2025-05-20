
package Paws::ConnectCampaigns::ListCampaigns;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ConnectCampaigns::CampaignFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCampaigns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/campaigns-summary');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCampaigns::ListCampaignsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::ListCampaigns - Arguments for method ListCampaigns on L<Paws::ConnectCampaigns>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCampaigns on the
L<AmazonConnectCampaignService|Paws::ConnectCampaigns> service. Use the attributes of this class
as arguments to method ListCampaigns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCampaigns.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaigns');
    my $ListCampaignsResponse = $connect -campaigns->ListCampaigns(
      Filters => {
        InstanceIdFilter => {
          Operator => 'Eq',              # values: Eq
          Value    => 'MyInstanceId',    # max: 256

        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $CampaignSummaryList = $ListCampaignsResponse->CampaignSummaryList;
    my $NextToken           = $ListCampaignsResponse->NextToken;

    # Returns a L<Paws::ConnectCampaigns::ListCampaignsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/ListCampaigns>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::ConnectCampaigns::CampaignFilters>





=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCampaigns in L<Paws::ConnectCampaigns>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

