
package Paws::Personalize::CreateCampaign;
  use Moose;
  has CampaignConfig => (is => 'ro', isa => 'Paws::Personalize::CampaignConfig', traits => ['NameInRequest'], request_name => 'campaignConfig' );
  has MinProvisionedTPS => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minProvisionedTPS' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has SolutionVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionVersionArn' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCampaign');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::CreateCampaignResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateCampaign - Arguments for method CreateCampaign on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCampaign on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCampaign.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateCampaignResponse = $personalize->CreateCampaign(
      Name               => 'MyName',
      SolutionVersionArn => 'MyArn',
      CampaignConfig     => {
        EnableMetadataWithRecommendations => 1,    # OPTIONAL
        ItemExplorationConfig             => {
          'MyParameterName' =>
            'MyParameterValue',    # key: max: 256, value: max: 1000
        },    # max: 100; OPTIONAL
        SyncWithLatestSolutionVersion => 1,    # OPTIONAL
      },    # OPTIONAL
      MinProvisionedTPS => 1,    # OPTIONAL
      Tags              => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CampaignArn = $CreateCampaignResponse->CampaignArn;

    # Returns a L<Paws::Personalize::CreateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateCampaign>

=head1 ATTRIBUTES


=head2 CampaignConfig => L<Paws::Personalize::CampaignConfig>

The configuration details of a campaign.



=head2 MinProvisionedTPS => Int

Specifies the requested minimum provisioned transactions
(recommendations) per second that Amazon Personalize will support. A
high C<minProvisionedTPS> will increase your bill. We recommend
starting with 1 for C<minProvisionedTPS> (the default). Track your
usage using Amazon CloudWatch metrics, and increase the
C<minProvisionedTPS> as necessary.



=head2 B<REQUIRED> Name => Str

A name for the new campaign. The campaign name must be unique within
your account.



=head2 B<REQUIRED> SolutionVersionArn => Str

The Amazon Resource Name (ARN) of the trained model to deploy with the
campaign. To specify the latest solution version of your solution,
specify the ARN of your I<solution> in C<SolutionArn/$LATEST> format.
You must use this format if you set C<syncWithLatestSolutionVersion> to
C<True> in the CampaignConfig
(https://docs.aws.amazon.com/personalize/latest/dg/API_CampaignConfig.html).

To deploy a model that isn't the latest solution version of your
solution, specify the ARN of the solution version.

For more information about automatic campaign updates, see Enabling
automatic campaign updates
(https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-automatic-latest-sv-update).



=head2 Tags => ArrayRef[L<Paws::Personalize::Tag>]

A list of tags
(https://docs.aws.amazon.com/personalize/latest/dg/tagging-resources.html)
to apply to the campaign.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCampaign in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

