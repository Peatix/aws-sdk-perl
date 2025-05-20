
package Paws::CloudFormation::ListGeneratedTemplates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGeneratedTemplates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListGeneratedTemplatesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListGeneratedTemplatesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListGeneratedTemplates - Arguments for method ListGeneratedTemplates on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGeneratedTemplates on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListGeneratedTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGeneratedTemplates.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListGeneratedTemplatesOutput = $cloudformation->ListGeneratedTemplates(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListGeneratedTemplatesOutput->NextToken;
    my $Summaries = $ListGeneratedTemplatesOutput->Summaries;

    # Returns a L<Paws::CloudFormation::ListGeneratedTemplatesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListGeneratedTemplates>

=head1 ATTRIBUTES


=head2 MaxResults => Int

If the number of available results exceeds this maximum, the response
includes a C<NextToken> value that you can use for the C<NextToken>
parameter to get the next set of results. By default the
C<ListGeneratedTemplates> API action will return at most 50 results in
each response. The maximum value is 100.



=head2 NextToken => Str

A string that identifies the next page of resource scan results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGeneratedTemplates in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

