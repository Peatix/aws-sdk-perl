
package Paws::Textract::ListAdapterVersions;
  use Moose;
  has AdapterId => (is => 'ro', isa => 'Str');
  has AfterCreationTime => (is => 'ro', isa => 'Str');
  has BeforeCreationTime => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAdapterVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::ListAdapterVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::ListAdapterVersions - Arguments for method ListAdapterVersions on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAdapterVersions on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method ListAdapterVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAdapterVersions.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $ListAdapterVersionsResponse = $textract->ListAdapterVersions(
      AdapterId          => 'MyAdapterId',            # OPTIONAL
      AfterCreationTime  => '1970-01-01T01:00:00',    # OPTIONAL
      BeforeCreationTime => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyPaginationToken',      # OPTIONAL
    );

    # Results:
    my $AdapterVersions = $ListAdapterVersionsResponse->AdapterVersions;
    my $NextToken       = $ListAdapterVersionsResponse->NextToken;

    # Returns a L<Paws::Textract::ListAdapterVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/ListAdapterVersions>

=head1 ATTRIBUTES


=head2 AdapterId => Str

A string containing a unique ID for the adapter to match for when
listing adapter versions.



=head2 AfterCreationTime => Str

Specifies the lower bound for the ListAdapterVersions operation.
Ensures ListAdapterVersions returns only adapter versions created after
the specified creation time.



=head2 BeforeCreationTime => Str

Specifies the upper bound for the ListAdapterVersions operation.
Ensures ListAdapterVersions returns only adapter versions created after
the specified creation time.



=head2 MaxResults => Int

The maximum number of results to return when listing adapter versions.



=head2 NextToken => Str

Identifies the next page of results to return when listing adapter
versions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAdapterVersions in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

