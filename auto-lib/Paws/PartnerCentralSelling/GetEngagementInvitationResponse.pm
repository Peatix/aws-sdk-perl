
package Paws::PartnerCentralSelling::GetEngagementInvitationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has EngagementDescription => (is => 'ro', isa => 'Str');
  has EngagementId => (is => 'ro', isa => 'Str');
  has EngagementTitle => (is => 'ro', isa => 'Str');
  has ExistingMembers => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::EngagementMemberSummary]');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has InvitationDate => (is => 'ro', isa => 'Str');
  has InvitationMessage => (is => 'ro', isa => 'Str');
  has Payload => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Payload');
  has PayloadType => (is => 'ro', isa => 'Str');
  has Receiver => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Receiver');
  has RejectionReason => (is => 'ro', isa => 'Str');
  has SenderAwsAccountId => (is => 'ro', isa => 'Str');
  has SenderCompanyName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetEngagementInvitationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) that identifies the engagement
invitation.


=head2 B<REQUIRED> Catalog => Str

Indicates the catalog from which the engagement invitation details are
retrieved. This field helps in identifying the appropriate catalog
(e.g., C<AWS> or C<Sandbox>) used in the request.


=head2 EngagementDescription => Str

The description of the engagement associated with this invitation.


=head2 EngagementId => Str

The identifier of the engagement associated with this invitation.This
ID links the invitation to its corresponding engagement.


=head2 EngagementTitle => Str

The title of the engagement invitation, summarizing the purpose or
objectives of the opportunity shared by AWS.


=head2 ExistingMembers => ArrayRef[L<Paws::PartnerCentralSelling::EngagementMemberSummary>]

A list of active members currently part of the Engagement. This array
contains a maximum of 10 members, each represented by an object with
the following properties.

=over

=item *

CompanyName: The name of the member's company.

=item *

WebsiteUrl: The website URL of the member's company.

=back



=head2 ExpirationDate => Str

Indicates the date on which the engagement invitation will expire if
not accepted by the partner.


=head2 B<REQUIRED> Id => Str

Unique identifier assigned to the engagement invitation being
retrieved.


=head2 InvitationDate => Str

The date when the engagement invitation was sent to the partner.


=head2 InvitationMessage => Str

The message sent to the invited partner when the invitation was
created.


=head2 Payload => L<Paws::PartnerCentralSelling::Payload>

Details of the engagement invitation payload, including specific data
relevant to the invitation's contents, such as customer information and
opportunity insights.


=head2 PayloadType => Str

The type of payload contained in the engagement invitation, indicating
what data or context the payload covers.

Valid values are: C<"OpportunityInvitation">
=head2 Receiver => L<Paws::PartnerCentralSelling::Receiver>

Information about the partner organization or team that received the
engagement invitation, including contact details and identifiers.


=head2 RejectionReason => Str

If the engagement invitation was rejected, this field specifies the
reason provided by the partner for the rejection.


=head2 SenderAwsAccountId => Str

Specifies the AWS Account ID of the sender, which identifies the AWS
team responsible for sharing the engagement invitation.


=head2 SenderCompanyName => Str

The name of the AWS organization or team that sent the engagement
invitation.


=head2 Status => Str

The current status of the engagement invitation.

Valid values are: C<"ACCEPTED">, C<"PENDING">, C<"REJECTED">, C<"EXPIRED">
=head2 _request_id => Str


=cut

1;