
package Paws::PartnerCentralSelling::StartEngagementByAcceptingInvitationTask;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartEngagementByAcceptingInvitationTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::StartEngagementByAcceptingInvitationTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::StartEngagementByAcceptingInvitationTask - Arguments for method StartEngagementByAcceptingInvitationTask on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartEngagementByAcceptingInvitationTask on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method StartEngagementByAcceptingInvitationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartEngagementByAcceptingInvitationTask.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $StartEngagementByAcceptingInvitationTaskResponse =
      $partnercentral -selling->StartEngagementByAcceptingInvitationTask(
      Catalog     => 'MyCatalogIdentifier',
      ClientToken =>
        'MyStartEngagementByAcceptingInvitationTaskRequestClientTokenString',
      Identifier => 'MyEngagementInvitationArnOrIdentifier',
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $EngagementInvitationId =
      $StartEngagementByAcceptingInvitationTaskResponse->EngagementInvitationId;
    my $Message = $StartEngagementByAcceptingInvitationTaskResponse->Message;
    my $OpportunityId =
      $StartEngagementByAcceptingInvitationTaskResponse->OpportunityId;
    my $ReasonCode =
      $StartEngagementByAcceptingInvitationTaskResponse->ReasonCode;
    my $ResourceSnapshotJobId =
      $StartEngagementByAcceptingInvitationTaskResponse->ResourceSnapshotJobId;
    my $StartTime =
      $StartEngagementByAcceptingInvitationTaskResponse->StartTime;
    my $TaskArn = $StartEngagementByAcceptingInvitationTaskResponse->TaskArn;
    my $TaskId  = $StartEngagementByAcceptingInvitationTaskResponse->TaskId;
    my $TaskStatus =
      $StartEngagementByAcceptingInvitationTaskResponse->TaskStatus;

# Returns a L<Paws::PartnerCentralSelling::StartEngagementByAcceptingInvitationTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/StartEngagementByAcceptingInvitationTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the task. Use C<AWS> for production
engagements and C<Sandbox> for testing scenarios.



=head2 B<REQUIRED> ClientToken => Str

A unique, case-sensitive identifier provided by the client that helps
to ensure the idempotency of the request. This can be a random or
meaningful string but must be unique for each request.



=head2 B<REQUIRED> Identifier => Str

Specifies the unique identifier of the C<EngagementInvitation> to be
accepted. Providing the correct identifier helps ensure that the
correct engagement is processed.



=head2 Tags => ArrayRef[L<Paws::PartnerCentralSelling::Tag>]

A list of objects specifying each tag name and value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartEngagementByAcceptingInvitationTask in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

