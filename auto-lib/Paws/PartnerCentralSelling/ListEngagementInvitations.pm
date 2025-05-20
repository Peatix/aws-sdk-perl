
package Paws::PartnerCentralSelling::ListEngagementInvitations;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has EngagementIdentifier => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParticipantType => (is => 'ro', isa => 'Str', required => 1);
  has PayloadType => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SenderAwsAccountId => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Sort => (is => 'ro', isa => 'Paws::PartnerCentralSelling::OpportunityEngagementInvitationSort');
  has Status => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEngagementInvitations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListEngagementInvitationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementInvitations - Arguments for method ListEngagementInvitations on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEngagementInvitations on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListEngagementInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEngagementInvitations.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListEngagementInvitationsResponse =
      $partnercentral -selling->ListEngagementInvitations(
      Catalog              => 'MyCatalogIdentifier',
      ParticipantType      => 'SENDER',
      EngagementIdentifier => [ 'MyEngagementArnOrIdentifier', ... ], # OPTIONAL
      MaxResults           => 1,                                      # OPTIONAL
      NextToken            => 'MyString',                             # OPTIONAL
      PayloadType          => [
        'OpportunityInvitation', ...    # values: OpportunityInvitation
      ],    # OPTIONAL
      SenderAwsAccountId => [ 'MyAwsAccount', ... ],    # OPTIONAL
      Sort               => {
        SortBy    => 'InvitationDate',    # values: InvitationDate
        SortOrder => 'ASCENDING',         # values: ASCENDING, DESCENDING

      },    # OPTIONAL
      Status => [
        'ACCEPTED', ...    # values: ACCEPTED, PENDING, REJECTED, EXPIRED
      ],    # OPTIONAL
      );

    # Results:
    my $EngagementInvitationSummaries =
      $ListEngagementInvitationsResponse->EngagementInvitationSummaries;
    my $NextToken = $ListEngagementInvitationsResponse->NextToken;

# Returns a L<Paws::PartnerCentralSelling::ListEngagementInvitationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListEngagementInvitations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog from which to list the engagement invitations.
Use C<AWS> for production invitations or C<Sandbox> for testing
environments.



=head2 EngagementIdentifier => ArrayRef[Str|Undef]

Retrieves a list of engagement invitation summaries based on specified
filters. The ListEngagementInvitations operation allows you to view all
invitations that you have sent or received. You must specify the
ParticipantType to filter invitations where you are either the SENDER
or the RECEIVER. Invitations will automatically expire if not accepted
within 15 days.



=head2 MaxResults => Int

Specifies the maximum number of engagement invitations to return in the
response. If more results are available, a pagination token will be
provided.



=head2 NextToken => Str

A pagination token used to retrieve additional pages of results when
the response to a previous request was truncated. Pass this token to
continue listing invitations from where the previous call left off.



=head2 B<REQUIRED> ParticipantType => Str

Specifies the type of participant for which to list engagement
invitations. Identifies the role of the participant.

Valid values are: C<"SENDER">, C<"RECEIVER">

=head2 PayloadType => ArrayRef[Str|Undef]

Defines the type of payload associated with the engagement invitations
to be listed. The attributes in this payload help decide on acceptance
or rejection of the invitation.



=head2 SenderAwsAccountId => ArrayRef[Str|Undef]

List of sender AWS account IDs to filter the invitations.



=head2 Sort => L<Paws::PartnerCentralSelling::OpportunityEngagementInvitationSort>

Specifies the sorting options for listing engagement invitations.
Invitations can be sorted by fields such as C<InvitationDate> or
C<Status> to help partners view results in their preferred order.



=head2 Status => ArrayRef[Str|Undef]

Status values to filter the invitations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEngagementInvitations in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

