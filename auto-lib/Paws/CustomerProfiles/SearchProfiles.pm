
package Paws::CustomerProfiles::SearchProfiles;
  use Moose;
  has AdditionalSearchKeys => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::AdditionalSearchKey]');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has KeyName => (is => 'ro', isa => 'Str', required => 1);
  has LogicalOperator => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchProfiles');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/profiles/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::SearchProfilesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::SearchProfiles - Arguments for method SearchProfiles on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchProfiles on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method SearchProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchProfiles.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $SearchProfilesResponse = $profile->SearchProfiles(
      DomainName => 'Myname',
      KeyName    => 'Myname',
      Values     => [
        'Mystring1To255', ...    # min: 1, max: 255
      ],
      AdditionalSearchKeys => [
        {
          KeyName => 'Myname',    # min: 1, max: 64
          Values  => [
            'Mystring1To255', ...    # min: 1, max: 255
          ],

        },
        ...
      ],    # OPTIONAL
      LogicalOperator => 'AND',        # OPTIONAL
      MaxResults      => 1,            # OPTIONAL
      NextToken       => 'Mytoken',    # OPTIONAL
    );

    # Results:
    my $Items     = $SearchProfilesResponse->Items;
    my $NextToken = $SearchProfilesResponse->NextToken;

    # Returns a L<Paws::CustomerProfiles::SearchProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/SearchProfiles>

=head1 ATTRIBUTES


=head2 AdditionalSearchKeys => ArrayRef[L<Paws::CustomerProfiles::AdditionalSearchKey>]

A list of C<AdditionalSearchKey> objects that are each searchable
identifiers of a profile. Each C<AdditionalSearchKey> object contains a
C<KeyName> and a list of C<Values> associated with that specific key
(i.e., a key-value(s) pair). These additional search keys will be used
in conjunction with the C<LogicalOperator> and the required C<KeyName>
and C<Values> parameters to search for profiles that satisfy the search
criteria.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> KeyName => Str

A searchable identifier of a customer profile. The predefined keys you
can use to search include: _account, _profileId, _assetId, _caseId,
_orderId, _fullName, _phone, _email, _ctrContactId, _marketoLeadId,
_salesforceAccountId, _salesforceContactId, _salesforceAssetId,
_zendeskUserId, _zendeskExternalId, _zendeskTicketId,
_serviceNowSystemId, _serviceNowIncidentId, _segmentUserId,
_shopifyCustomerId, _shopifyOrderId.



=head2 LogicalOperator => Str

Relationship between all specified search keys that will be used to
search for profiles. This includes the required C<KeyName> and
C<Values> parameters as well as any key-value(s) pairs specified in the
C<AdditionalSearchKeys> list.

This parameter influences which profiles will be returned in the
response in the following manner:

=over

=item *

C<AND> - The response only includes profiles that match all of the
search keys.

=item *

C<OR> - The response includes profiles that match at least one of the
search keys.

=back

The C<OR> relationship is the default behavior if this parameter is not
included in the request.

Valid values are: C<"AND">, C<"OR">

=head2 MaxResults => Int

The maximum number of objects returned per page.

The default is 20 if this parameter is not included in the request.



=head2 NextToken => Str

The pagination token from the previous SearchProfiles API call.



=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

A list of key values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchProfiles in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

