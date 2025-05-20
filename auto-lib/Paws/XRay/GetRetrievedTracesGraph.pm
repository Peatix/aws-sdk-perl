
package Paws::XRay::GetRetrievedTracesGraph;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RetrievalToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRetrievedTracesGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetRetrievedTracesGraph');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetRetrievedTracesGraphResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetRetrievedTracesGraph - Arguments for method GetRetrievedTracesGraph on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRetrievedTracesGraph on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method GetRetrievedTracesGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRetrievedTracesGraph.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $GetRetrievedTracesGraphResult = $xray->GetRetrievedTracesGraph(
      RetrievalToken => 'MyRetrievalToken',
      NextToken      => 'MyString',           # OPTIONAL
    );

    # Results:
    my $NextToken       = $GetRetrievedTracesGraphResult->NextToken;
    my $RetrievalStatus = $GetRetrievedTracesGraphResult->RetrievalStatus;
    my $Services        = $GetRetrievedTracesGraphResult->Services;

    # Returns a L<Paws::XRay::GetRetrievedTracesGraphResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/GetRetrievedTracesGraph>

=head1 ATTRIBUTES


=head2 NextToken => Str

Specify the pagination token returned by a previous request to retrieve
the next page of indexes.



=head2 B<REQUIRED> RetrievalToken => Str

Retrieval token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRetrievedTracesGraph in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

