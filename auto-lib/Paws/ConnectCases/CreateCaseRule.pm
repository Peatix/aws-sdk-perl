
package Paws::ConnectCases::CreateCaseRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Rule => (is => 'ro', isa => 'Paws::ConnectCases::CaseRuleDetails', traits => ['NameInRequest'], request_name => 'rule', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCaseRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/case-rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::CreateCaseRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateCaseRule - Arguments for method CreateCaseRule on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCaseRule on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method CreateCaseRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCaseRule.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $CreateCaseRuleResponse = $cases->CreateCaseRule(
      DomainId => 'MyDomainId',
      Name     => 'MyCaseRuleName',
      Rule     => {
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
      },
      Description => 'MyCaseRuleDescription',    # OPTIONAL
    );

    # Results:
    my $CaseRuleArn = $CreateCaseRuleResponse->CaseRuleArn;
    my $CaseRuleId  = $CreateCaseRuleResponse->CaseRuleId;

    # Returns a L<Paws::ConnectCases::CreateCaseRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/CreateCaseRule>

=head1 ATTRIBUTES


=head2 Description => Str

The description of a case rule.



=head2 B<REQUIRED> DomainId => Str

Unique identifier of a Cases domain.



=head2 B<REQUIRED> Name => Str

Name of the case rule.



=head2 B<REQUIRED> Rule => L<Paws::ConnectCases::CaseRuleDetails>

Represents what rule type should take place, under what conditions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCaseRule in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

