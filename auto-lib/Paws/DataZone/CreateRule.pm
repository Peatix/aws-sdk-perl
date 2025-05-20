
package Paws::DataZone::CreateRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Detail => (is => 'ro', isa => 'Paws::DataZone::RuleDetail', traits => ['NameInRequest'], request_name => 'detail', required => 1);
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Scope => (is => 'ro', isa => 'Paws::DataZone::RuleScope', traits => ['NameInRequest'], request_name => 'scope', required => 1);
  has Target => (is => 'ro', isa => 'Paws::DataZone::RuleTarget', traits => ['NameInRequest'], request_name => 'target', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateRule - Arguments for method CreateRule on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRule on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRule.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateRuleOutput = $datazone->CreateRule(
      Action => 'CREATE_LISTING_CHANGE_SET',
      Detail => {
        MetadataFormEnforcementDetail => {
          RequiredMetadataForms => [
            {
              TypeIdentifier => 'MyFormTypeIdentifier',    # min: 1, max: 385
              TypeRevision   => 'MyRevision',              # min: 1, max: 64

            },
            ...
          ],    # min: 1, max: 5; OPTIONAL
        },    # OPTIONAL
      },
      DomainIdentifier => 'MyDomainId',
      Name             => 'MyRuleName',
      Scope            => {
        AssetType => {
          SelectionMode      => 'ALL',    # values: ALL, SPECIFIC
          SpecificAssetTypes => [
            'MyAssetTypeIdentifier', ...    # min: 1, max: 513
          ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        DataProduct => 1,    # OPTIONAL
        Project     => {
          SelectionMode    => 'ALL',                     # values: ALL, SPECIFIC
          SpecificProjects => [ 'MyProjectId', ... ],    # min: 1; OPTIONAL
        },    # OPTIONAL
      },
      Target => {
        DomainUnitTarget => {
          DomainUnitId            => 'MyDomainUnitId',    # min: 1, max: 256
          IncludeChildDomainUnits => 1,                   # OPTIONAL
        },    # OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $Action      = $CreateRuleOutput->Action;
    my $CreatedAt   = $CreateRuleOutput->CreatedAt;
    my $CreatedBy   = $CreateRuleOutput->CreatedBy;
    my $Description = $CreateRuleOutput->Description;
    my $Detail      = $CreateRuleOutput->Detail;
    my $Identifier  = $CreateRuleOutput->Identifier;
    my $Name        = $CreateRuleOutput->Name;
    my $RuleType    = $CreateRuleOutput->RuleType;
    my $Scope       = $CreateRuleOutput->Scope;
    my $Target      = $CreateRuleOutput->Target;
    my $TargetType  = $CreateRuleOutput->TargetType;

    # Returns a L<Paws::DataZone::CreateRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action of the rule.

Valid values are: C<"CREATE_LISTING_CHANGE_SET">, C<"CREATE_SUBSCRIPTION_REQUEST">

=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

The description of the rule.



=head2 B<REQUIRED> Detail => L<Paws::DataZone::RuleDetail>

The detail of the rule.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where the rule is created.



=head2 B<REQUIRED> Name => Str

The name of the rule.



=head2 B<REQUIRED> Scope => L<Paws::DataZone::RuleScope>

The scope of the rule.



=head2 B<REQUIRED> Target => L<Paws::DataZone::RuleTarget>

The target of the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRule in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

