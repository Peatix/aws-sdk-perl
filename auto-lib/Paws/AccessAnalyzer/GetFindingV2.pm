
package Paws::AccessAnalyzer::GetFindingV2;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'analyzerArn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindingV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findingv2/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::GetFindingV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetFindingV2 - Arguments for method GetFindingV2 on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindingV2 on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method GetFindingV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindingV2.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $GetFindingV2Response = $access -analyzer->GetFindingV2(
      AnalyzerArn => 'MyAnalyzerArn',
      Id          => 'MyFindingId',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyToken',         # OPTIONAL
    );

    # Results:
    my $AnalyzedAt           = $GetFindingV2Response->AnalyzedAt;
    my $CreatedAt            = $GetFindingV2Response->CreatedAt;
    my $Error                = $GetFindingV2Response->Error;
    my $FindingDetails       = $GetFindingV2Response->FindingDetails;
    my $FindingType          = $GetFindingV2Response->FindingType;
    my $Id                   = $GetFindingV2Response->Id;
    my $NextToken            = $GetFindingV2Response->NextToken;
    my $Resource             = $GetFindingV2Response->Resource;
    my $ResourceOwnerAccount = $GetFindingV2Response->ResourceOwnerAccount;
    my $ResourceType         = $GetFindingV2Response->ResourceType;
    my $Status               = $GetFindingV2Response->Status;
    my $UpdatedAt            = $GetFindingV2Response->UpdatedAt;

    # Returns a L<Paws::AccessAnalyzer::GetFindingV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/GetFindingV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the analyzer
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources)
that generated the finding.



=head2 B<REQUIRED> Id => Str

The ID of the finding to retrieve.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token used for pagination of results returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindingV2 in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

