
package Paws::DataZone::GetRule;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/rules/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetRule - Arguments for method GetRule on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRule on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRule.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetRuleOutput = $datazone->GetRule(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyRuleId',
      Revision         => 'MyRevision',    # OPTIONAL
    );

    # Results:
    my $Action        = $GetRuleOutput->Action;
    my $CreatedAt     = $GetRuleOutput->CreatedAt;
    my $CreatedBy     = $GetRuleOutput->CreatedBy;
    my $Description   = $GetRuleOutput->Description;
    my $Detail        = $GetRuleOutput->Detail;
    my $Identifier    = $GetRuleOutput->Identifier;
    my $LastUpdatedBy = $GetRuleOutput->LastUpdatedBy;
    my $Name          = $GetRuleOutput->Name;
    my $Revision      = $GetRuleOutput->Revision;
    my $RuleType      = $GetRuleOutput->RuleType;
    my $Scope         = $GetRuleOutput->Scope;
    my $Target        = $GetRuleOutput->Target;
    my $TargetType    = $GetRuleOutput->TargetType;
    my $UpdatedAt     = $GetRuleOutput->UpdatedAt;

    # Returns a L<Paws::DataZone::GetRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where the C<GetRule> action is to be invoked.



=head2 B<REQUIRED> Identifier => Str

The ID of the rule.



=head2 Revision => Str

The revision of the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRule in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

