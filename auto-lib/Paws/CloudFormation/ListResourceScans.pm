
package Paws::CloudFormation::ListResourceScans;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScanTypeFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceScans');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListResourceScansOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListResourceScansResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListResourceScans - Arguments for method ListResourceScans on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceScans on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListResourceScans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceScans.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListResourceScansOutput = $cloudformation->ListResourceScans(
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      ScanTypeFilter => 'FULL',           # OPTIONAL
    );

    # Results:
    my $NextToken             = $ListResourceScansOutput->NextToken;
    my $ResourceScanSummaries = $ListResourceScansOutput->ResourceScanSummaries;

    # Returns a L<Paws::CloudFormation::ListResourceScansOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListResourceScans>

=head1 ATTRIBUTES


=head2 MaxResults => Int

If the number of available results exceeds this maximum, the response
includes a C<NextToken> value that you can use for the C<NextToken>
parameter to get the next set of results. The default value is 10. The
maximum value is 100.



=head2 NextToken => Str

A string that identifies the next page of resource scan results.



=head2 ScanTypeFilter => Str

The scan type that you want to get summary information about. The
default is C<FULL>.

Valid values are: C<"FULL">, C<"PARTIAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceScans in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

