
package Paws::ConnectCases::BatchGetCaseRule;
  use Moose;
  has CaseRules => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCases::CaseRuleIdentifier]', traits => ['NameInRequest'], request_name => 'caseRules', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetCaseRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{domainId}/rules-batch');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCases::BatchGetCaseRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::BatchGetCaseRule - Arguments for method BatchGetCaseRule on L<Paws::ConnectCases>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetCaseRule on the
L<Amazon Connect Cases|Paws::ConnectCases> service. Use the attributes of this class
as arguments to method BatchGetCaseRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetCaseRule.

=head1 SYNOPSIS

    my $cases = Paws->service('ConnectCases');
    my $BatchGetCaseRuleResponse = $cases->BatchGetCaseRule(
      CaseRules => [
        {
          Id => 'MyCaseRuleId',    # min: 1, max: 500

        },
        ...
      ],
      DomainId => 'MyDomainId',

    );

    # Results:
    my $CaseRules = $BatchGetCaseRuleResponse->CaseRules;
    my $Errors    = $BatchGetCaseRuleResponse->Errors;

    # Returns a L<Paws::ConnectCases::BatchGetCaseRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cases/BatchGetCaseRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseRules => ArrayRef[L<Paws::ConnectCases::CaseRuleIdentifier>]

List of case rule identifiers.



=head2 B<REQUIRED> DomainId => Str

Unique identifier of a Cases domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetCaseRule in L<Paws::ConnectCases>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

