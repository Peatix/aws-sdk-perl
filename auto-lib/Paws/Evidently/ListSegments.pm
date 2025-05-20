
package Paws::Evidently::ListSegments;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSegments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/segments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::ListSegmentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListSegments - Arguments for method ListSegments on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSegments on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method ListSegments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSegments.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $ListSegmentsResponse = $evidently->ListSegments(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSegmentsResponse->NextToken;
    my $Segments  = $ListSegmentsResponse->Segments;

    # Returns a L<Paws::Evidently::ListSegmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/ListSegments>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response. If you omit
this, the default of 50 is used.



=head2 NextToken => Str

The token to use when requesting the next set of results. You received
this token from a previous C<ListSegments> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSegments in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

