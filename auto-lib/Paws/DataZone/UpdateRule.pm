
package Paws::DataZone::UpdateRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Detail => (is => 'ro', isa => 'Paws::DataZone::RuleDetail', traits => ['NameInRequest'], request_name => 'detail');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has IncludeChildDomainUnits => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeChildDomainUnits');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Scope => (is => 'ro', isa => 'Paws::DataZone::RuleScope', traits => ['NameInRequest'], request_name => 'scope');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/rules/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateRule - Arguments for method UpdateRule on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRule on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRule.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateRuleOutput = $datazone->UpdateRule(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyRuleId',
      Description      => 'MyDescription',    # OPTIONAL
      Detail           => {
        MetadataFormEnforcementDetail => {
          RequiredMetadataForms => [
            {
              TypeIdentifier => 'MyFormTypeIdentifier',    # min: 1, max: 385
              TypeRevision   => 'MyRevision',              # min: 1, max: 64

            },
            ...
          ],    # min: 1, max: 5; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      IncludeChildDomainUnits => 1,               # OPTIONAL
      Name                    => 'MyRuleName',    # OPTIONAL
      Scope                   => {
        AssetType => {
          SelectionMode      => 'ALL',            # values: ALL, SPECIFIC
          SpecificAssetTypes => [
            'MyAssetTypeIdentifier', ...          # min: 1, max: 513
          ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        DataProduct => 1,
        Project     => {
          SelectionMode    => 'ALL',                     # values: ALL, SPECIFIC
          SpecificProjects => [ 'MyProjectId', ... ],    # min: 1; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Action        = $UpdateRuleOutput->Action;
    my $CreatedAt     = $UpdateRuleOutput->CreatedAt;
    my $CreatedBy     = $UpdateRuleOutput->CreatedBy;
    my $Description   = $UpdateRuleOutput->Description;
    my $Detail        = $UpdateRuleOutput->Detail;
    my $Identifier    = $UpdateRuleOutput->Identifier;
    my $LastUpdatedBy = $UpdateRuleOutput->LastUpdatedBy;
    my $Name          = $UpdateRuleOutput->Name;
    my $Revision      = $UpdateRuleOutput->Revision;
    my $RuleType      = $UpdateRuleOutput->RuleType;
    my $Scope         = $UpdateRuleOutput->Scope;
    my $Target        = $UpdateRuleOutput->Target;
    my $UpdatedAt     = $UpdateRuleOutput->UpdatedAt;

    # Returns a L<Paws::DataZone::UpdateRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateRule>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the rule.



=head2 Detail => L<Paws::DataZone::RuleDetail>

The detail of the rule.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain in which a rule is to be updated.



=head2 B<REQUIRED> Identifier => Str

The ID of the rule that is to be updated



=head2 IncludeChildDomainUnits => Bool

Specifies whether to update this rule in the child domain units.



=head2 Name => Str

The name of the rule.



=head2 Scope => L<Paws::DataZone::RuleScope>

The scrope of the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRule in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

