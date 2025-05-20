
package Paws::PartnerCentralSelling::ListEngagements;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has CreatedBy => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EngagementIdentifier => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ExcludeCreatedBy => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Sort => (is => 'ro', isa => 'Paws::PartnerCentralSelling::EngagementSort');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEngagements');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListEngagementsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagements - Arguments for method ListEngagements on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEngagements on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListEngagements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEngagements.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListEngagementsResponse = $partnercentral -selling->ListEngagements(
      Catalog              => 'MyCatalogIdentifier',
      CreatedBy            => [ 'MyAwsAccount',                ... ], # OPTIONAL
      EngagementIdentifier => [ 'MyEngagementArnOrIdentifier', ... ], # OPTIONAL
      ExcludeCreatedBy     => [ 'MyAwsAccount',                ... ], # OPTIONAL
      MaxResults           => 1,                                      # OPTIONAL
      NextToken            => 'MyString',                             # OPTIONAL
      Sort                 => {
        SortBy    => 'CreatedDate',    # values: CreatedDate
        SortOrder => 'ASCENDING',      # values: ASCENDING, DESCENDING

      },    # OPTIONAL
    );

    # Results:
    my $EngagementSummaryList = $ListEngagementsResponse->EngagementSummaryList;
    my $NextToken             = $ListEngagementsResponse->NextToken;

    # Returns a L<Paws::PartnerCentralSelling::ListEngagementsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListEngagements>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the request.



=head2 CreatedBy => ArrayRef[Str|Undef]

A list of AWS account IDs. When specified, the response includes
engagements created by these accounts. This filter is useful for
finding engagements created by specific team members.



=head2 EngagementIdentifier => ArrayRef[Str|Undef]

An array of strings representing engagement identifiers to retrieve.



=head2 ExcludeCreatedBy => ArrayRef[Str|Undef]

An array of strings representing AWS Account IDs. Use this to exclude
engagements created by specific users.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token for the next set of results. This value is returned from a
previous call.



=head2 Sort => L<Paws::PartnerCentralSelling::EngagementSort>

An object that specifies the sort order of the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEngagements in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

