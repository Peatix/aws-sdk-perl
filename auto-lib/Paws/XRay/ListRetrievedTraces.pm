
package Paws::XRay::ListRetrievedTraces;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RetrievalToken => (is => 'ro', isa => 'Str', required => 1);
  has TraceFormat => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRetrievedTraces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListRetrievedTraces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::ListRetrievedTracesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ListRetrievedTraces - Arguments for method ListRetrievedTraces on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRetrievedTraces on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method ListRetrievedTraces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRetrievedTraces.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $ListRetrievedTracesResult = $xray->ListRetrievedTraces(
      RetrievalToken => 'MyRetrievalToken',
      NextToken      => 'MyString',           # OPTIONAL
      TraceFormat    => 'XRAY',               # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListRetrievedTracesResult->NextToken;
    my $RetrievalStatus = $ListRetrievedTracesResult->RetrievalStatus;
    my $TraceFormat     = $ListRetrievedTracesResult->TraceFormat;
    my $Traces          = $ListRetrievedTracesResult->Traces;

    # Returns a L<Paws::XRay::ListRetrievedTracesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/ListRetrievedTraces>

=head1 ATTRIBUTES


=head2 NextToken => Str

Specify the pagination token returned by a previous request to retrieve
the next page of indexes.



=head2 B<REQUIRED> RetrievalToken => Str

Retrieval token.



=head2 TraceFormat => Str

Format of the requested traces.

Valid values are: C<"XRAY">, C<"OTEL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRetrievedTraces in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

