
package Paws::SecurityIR::ListCaseEdits;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'caseId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCaseEdits');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/cases/{caseId}/list-case-edits');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::ListCaseEditsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::ListCaseEdits - Arguments for method ListCaseEdits on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCaseEdits on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method ListCaseEdits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCaseEdits.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $ListCaseEditsResponse = $security -ir->ListCaseEdits(
      CaseId     => 'MyCaseId',
      MaxResults => 1,                                          # OPTIONAL
      NextToken  => 'MyListCaseEditsRequestNextTokenString',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListCaseEditsResponse->Items;
    my $NextToken = $ListCaseEditsResponse->NextToken;
    my $Total     = $ListCaseEditsResponse->Total;

    # Returns a L<Paws::SecurityIR::ListCaseEditsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/ListCaseEdits>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CaseId => Str

Required element used with ListCaseEdits to identify the case to query.



=head2 MaxResults => Int

Optional element to identify how many results to obtain. There is a
maximum value of 25.



=head2 NextToken => Str

Optional element for a customer provided token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCaseEdits in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

