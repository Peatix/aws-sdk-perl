
package Paws::PartnerCentralSelling::GetEngagementInvitation;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEngagementInvitation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::GetEngagementInvitationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetEngagementInvitation - Arguments for method GetEngagementInvitation on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEngagementInvitation on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method GetEngagementInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEngagementInvitation.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $GetEngagementInvitationResponse =
      $partnercentral -selling->GetEngagementInvitation(
      Catalog    => 'MyCatalogIdentifier',
      Identifier => 'MyEngagementInvitationArnOrIdentifier',

      );

    # Results:
    my $Arn     = $GetEngagementInvitationResponse->Arn;
    my $Catalog = $GetEngagementInvitationResponse->Catalog;
    my $EngagementDescription =
      $GetEngagementInvitationResponse->EngagementDescription;
    my $EngagementId      = $GetEngagementInvitationResponse->EngagementId;
    my $EngagementTitle   = $GetEngagementInvitationResponse->EngagementTitle;
    my $ExistingMembers   = $GetEngagementInvitationResponse->ExistingMembers;
    my $ExpirationDate    = $GetEngagementInvitationResponse->ExpirationDate;
    my $Id                = $GetEngagementInvitationResponse->Id;
    my $InvitationDate    = $GetEngagementInvitationResponse->InvitationDate;
    my $InvitationMessage = $GetEngagementInvitationResponse->InvitationMessage;
    my $Payload           = $GetEngagementInvitationResponse->Payload;
    my $PayloadType       = $GetEngagementInvitationResponse->PayloadType;
    my $Receiver          = $GetEngagementInvitationResponse->Receiver;
    my $RejectionReason   = $GetEngagementInvitationResponse->RejectionReason;
    my $SenderAwsAccountId =
      $GetEngagementInvitationResponse->SenderAwsAccountId;
    my $SenderCompanyName = $GetEngagementInvitationResponse->SenderCompanyName;
    my $Status            = $GetEngagementInvitationResponse->Status;

# Returns a L<Paws::PartnerCentralSelling::GetEngagementInvitationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/GetEngagementInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. The field accepts
values from the predefined set: C<AWS> for live operations or
C<Sandbox> for testing environments.



=head2 B<REQUIRED> Identifier => Str

Specifies the unique identifier for the retrieved engagement
invitation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEngagementInvitation in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

