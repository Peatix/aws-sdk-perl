
package Paws::DataZone::ListRules;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ruleAction');
  has AssetTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'assetTypes');
  has DataProduct => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'dataProduct');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has IncludeCascaded => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeCascaded');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'projectIds');
  has RuleType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ruleType');
  has TargetIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'targetIdentifier', required => 1);
  has TargetType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'targetType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/list-rules/{targetType}/{targetIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListRulesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListRules - Arguments for method ListRules on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRules on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRules.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListRulesOutput = $datazone->ListRules(
      DomainIdentifier => 'MyDomainId',
      TargetIdentifier => 'MyString',
      TargetType       => 'DOMAIN_UNIT',
      Action           => 'CREATE_LISTING_CHANGE_SET',    # OPTIONAL
      AssetTypes       => [
        'MyAssetTypeIdentifier', ...                      # min: 1, max: 513
      ],    # OPTIONAL
      DataProduct     => 1,                              # OPTIONAL
      IncludeCascaded => 1,                              # OPTIONAL
      MaxResults      => 1,                              # OPTIONAL
      NextToken       => 'MyPaginationToken',            # OPTIONAL
      ProjectIds      => [ 'MyProjectId', ... ],         # OPTIONAL
      RuleType        => 'METADATA_FORM_ENFORCEMENT',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListRulesOutput->Items;
    my $NextToken = $ListRulesOutput->NextToken;

    # Returns a L<Paws::DataZone::ListRulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListRules>

=head1 ATTRIBUTES


=head2 Action => Str

The action of the rule.

Valid values are: C<"CREATE_LISTING_CHANGE_SET">, C<"CREATE_SUBSCRIPTION_REQUEST">

=head2 AssetTypes => ArrayRef[Str|Undef]

The asset types of the rule.



=head2 DataProduct => Bool

The data product of the rule.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain in which the rules are to be listed.



=head2 IncludeCascaded => Bool

Specifies whether to include cascading rules in the results.



=head2 MaxResults => Int

The maximum number of rules to return in a single call to C<ListRules>.
When the number of rules to be listed is greater than the value of
C<MaxResults>, the response contains a C<NextToken> value that you can
use in a subsequent call to C<ListRules> to list the next set of rules.



=head2 NextToken => Str

When the number of rules is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of rules, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<ListRules> to list the
next set of rules.



=head2 ProjectIds => ArrayRef[Str|Undef]

The IDs of projects in which rules are to be listed.



=head2 RuleType => Str

The type of the rule.

Valid values are: C<"METADATA_FORM_ENFORCEMENT">

=head2 B<REQUIRED> TargetIdentifier => Str

The target ID of the rule.



=head2 B<REQUIRED> TargetType => Str

The target type of the rule.

Valid values are: C<"DOMAIN_UNIT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRules in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

