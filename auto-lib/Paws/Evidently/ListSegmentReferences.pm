
package Paws::Evidently::ListSegmentReferences;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Segment => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'segment', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSegmentReferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/segments/{segment}/references');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::ListSegmentReferencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListSegmentReferences - Arguments for method ListSegmentReferences on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSegmentReferences on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method ListSegmentReferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSegmentReferences.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $ListSegmentReferencesResponse = $evidently->ListSegmentReferences(
      Segment    => 'MySegmentRef',
      Type       => 'EXPERIMENT',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListSegmentReferencesResponse->NextToken;
    my $ReferencedBy = $ListSegmentReferencesResponse->ReferencedBy;

    # Returns a L<Paws::Evidently::ListSegmentReferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/ListSegmentReferences>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response. If you omit
this, the default of 50 is used.



=head2 NextToken => Str

The token to use when requesting the next set of results. You received
this token from a previous C<ListSegmentReferences> operation.



=head2 B<REQUIRED> Segment => Str

The ARN of the segment that you want to view information for.



=head2 B<REQUIRED> Type => Str

Specifies whether to return information about launches or experiments
that use this segment.

Valid values are: C<"EXPERIMENT">, C<"LAUNCH">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSegmentReferences in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

