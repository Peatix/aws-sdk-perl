
package Paws::PartnerCentralSelling::StartEngagementFromOpportunityTask;
  use Moose;
  has AwsSubmission => (is => 'ro', isa => 'Paws::PartnerCentralSelling::AwsSubmission', required => 1);
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartEngagementFromOpportunityTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::StartEngagementFromOpportunityTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::StartEngagementFromOpportunityTask - Arguments for method StartEngagementFromOpportunityTask on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartEngagementFromOpportunityTask on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method StartEngagementFromOpportunityTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartEngagementFromOpportunityTask.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $StartEngagementFromOpportunityTaskResponse =
      $partnercentral -selling->StartEngagementFromOpportunityTask(
      AwsSubmission => {
        InvolvementType =>
          'For Visibility Only',    # values: For Visibility Only, Co-Sell
        Visibility => 'Full',       # values: Full, Limited; OPTIONAL
      },
      Catalog     => 'MyCatalogIdentifier',
      ClientToken =>
        'MyStartEngagementFromOpportunityTaskRequestClientTokenString',
      Identifier => 'MyOpportunityIdentifier',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $EngagementId =
      $StartEngagementFromOpportunityTaskResponse->EngagementId;
    my $EngagementInvitationId =
      $StartEngagementFromOpportunityTaskResponse->EngagementInvitationId;
    my $Message = $StartEngagementFromOpportunityTaskResponse->Message;
    my $OpportunityId =
      $StartEngagementFromOpportunityTaskResponse->OpportunityId;
    my $ReasonCode = $StartEngagementFromOpportunityTaskResponse->ReasonCode;
    my $ResourceSnapshotJobId =
      $StartEngagementFromOpportunityTaskResponse->ResourceSnapshotJobId;
    my $StartTime  = $StartEngagementFromOpportunityTaskResponse->StartTime;
    my $TaskArn    = $StartEngagementFromOpportunityTaskResponse->TaskArn;
    my $TaskId     = $StartEngagementFromOpportunityTaskResponse->TaskId;
    my $TaskStatus = $StartEngagementFromOpportunityTaskResponse->TaskStatus;

# Returns a L<Paws::PartnerCentralSelling::StartEngagementFromOpportunityTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/StartEngagementFromOpportunityTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsSubmission => L<Paws::PartnerCentralSelling::AwsSubmission>





=head2 B<REQUIRED> Catalog => Str

Specifies the catalog in which the engagement is tracked. Acceptable
values include C<AWS> for production and C<Sandbox> for testing
environments.



=head2 B<REQUIRED> ClientToken => Str

A unique token provided by the client to help ensure the idempotency of
the request. It helps prevent the same task from being performed
multiple times.



=head2 B<REQUIRED> Identifier => Str

The unique identifier of the opportunity from which the engagement task
is to be initiated. This helps ensure that the task is applied to the
correct opportunity.



=head2 Tags => ArrayRef[L<Paws::PartnerCentralSelling::Tag>]

A list of objects specifying each tag name and value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartEngagementFromOpportunityTask in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

