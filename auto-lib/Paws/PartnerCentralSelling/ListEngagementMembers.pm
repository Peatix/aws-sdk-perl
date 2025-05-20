
package Paws::PartnerCentralSelling::ListEngagementMembers;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEngagementMembers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListEngagementMembersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementMembers - Arguments for method ListEngagementMembers on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEngagementMembers on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListEngagementMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEngagementMembers.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListEngagementMembersResponse =
      $partnercentral -selling->ListEngagementMembers(
      Catalog    => 'MyCatalogIdentifier',
      Identifier => 'MyEngagementArnOrIdentifier',
      MaxResults => 1,                               # OPTIONAL
      NextToken  => 'MyString',                      # OPTIONAL
      );

    # Results:
    my $EngagementMemberList =
      $ListEngagementMembersResponse->EngagementMemberList;
    my $NextToken = $ListEngagementMembersResponse->NextToken;

# Returns a L<Paws::PartnerCentralSelling::ListEngagementMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListEngagementMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

The catalog related to the request.



=head2 B<REQUIRED> Identifier => Str

Identifier of the Engagement record to retrieve members from.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEngagementMembers in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

