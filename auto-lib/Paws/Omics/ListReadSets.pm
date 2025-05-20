
package Paws::Omics::ListReadSets;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::ReadSetFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SequenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sequenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReadSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sequencestore/{sequenceStoreId}/readsets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListReadSetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReadSets - Arguments for method ListReadSets on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReadSets on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListReadSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReadSets.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListReadSetsResponse = $omics->ListReadSets(
      SequenceStoreId => 'MySequenceStoreId',
      Filter          => {
        CreatedAfter  => '1970-01-01T01:00:00',     # OPTIONAL
        CreatedBefore => '1970-01-01T01:00:00',     # OPTIONAL
        CreationType  => 'IMPORT',            # values: IMPORT, UPLOAD; OPTIONAL
        GeneratedFrom => 'MyGeneratedFrom',   # min: 1, max: 127; OPTIONAL
        Name          => 'MyReadSetName',     # min: 1, max: 127; OPTIONAL
        ReferenceArn  => 'MyReferenceArnFilter',    # max: 127; OPTIONAL
        SampleId      => 'MySampleId',              # min: 1, max: 127; OPTIONAL
        Status        => 'ARCHIVED'
        , # values: ARCHIVED, ACTIVATING, ACTIVE, DELETING, DELETED, PROCESSING_UPLOAD, UPLOAD_FAILED; OPTIONAL
        SubjectId => 'MySubjectId',    # min: 1, max: 127; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListReadSetsResponse->NextToken;
    my $ReadSets  = $ListReadSetsResponse->ReadSets;

    # Returns a L<Paws::Omics::ListReadSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListReadSets>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::ReadSetFilter>

A filter to apply to the list.



=head2 MaxResults => Int

The maximum number of read sets to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 B<REQUIRED> SequenceStoreId => Str

The jobs' sequence store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReadSets in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

