
package Paws::ConnectCases::UpdateCaseRule;
  use Moose;
  has CaseRuleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseRuleId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Rule => (is => 'ro', isa => 'Paws::ConnectCases::CaseRuleDetails', traits => ['NameInRequest'], request_name => 'rule');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCaseRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/case-rules/{caseRuleId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::UpdateCaseRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::UpdateCaseRule - Arguments for method UpdateCaseRule on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCaseRule on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method UpdateCaseRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCaseRule.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $UpdateCaseRuleResponse = $cases->UpdateCaseRule(
      CaseRuleId  => 'MyCaseRuleId',
      DomainId    => 'MyDomainId',
      Description => 'MyCaseRuleDescription',    # OPTIONAL
      Name        => 'MyCaseRuleName',           # OPTIONAL
      Rule        => {
        Required => {
          Conditions => [
            {
              EqualTo => {
                OperandOne => {
                  FieldId => 'MyFieldId',    # min: 1, max: 500; OPTIONAL
                },
                OperandTwo => {
                  BooleanValue => 1,         # OPTIONAL
                  DoubleValue  => 1,         # OPTIONAL
                  EmptyValue   => {

                  },                         # OPTIONAL
                  StringValue => 'MyOperandTwoStringValueString'
                  ,                          # min: 1, max: 1500; OPTIONAL
                },
                Result => 1,                 # OPTIONAL

              },    # OPTIONAL
              NotEqualTo => {
                OperandOne => {
                  FieldId => 'MyFieldId',    # min: 1, max: 500; OPTIONAL
                },
                OperandTwo => {
                  BooleanValue => 1,         # OPTIONAL
                  DoubleValue  => 1,         # OPTIONAL
                  EmptyValue   => {

                  },                         # OPTIONAL
                  StringValue => 'MyOperandTwoStringValueString'
                  ,                          # min: 1, max: 1500; OPTIONAL
                },
                Result => 1,                 # OPTIONAL

              },    # OPTIONAL
            },
            ...
          ],    # max: 100
          DefaultValue => 1,    # OPTIONAL

        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/UpdateCaseRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseRuleId => Str

Unique identifier of a case rule.



=head2 Description => Str

Description of a case rule.



=head2 B<REQUIRED> DomainId => Str

Unique identifier of a Cases domain.



=head2 Name => Str

Name of the case rule.



=head2 Rule => L<Paws::ConnectCases::CaseRuleDetails>

Represents what rule type should take place, under what conditions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCaseRule in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

