
package Paws::Textract::ListAdapters;
  use Moose;
  has AfterCreationTime => (is => 'ro', isa => 'Str');
  has BeforeCreationTime => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAdapters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::ListAdaptersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::ListAdapters - Arguments for method ListAdapters on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAdapters on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method ListAdapters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAdapters.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $ListAdaptersResponse = $textract->ListAdapters(
      AfterCreationTime  => '1970-01-01T01:00:00',    # OPTIONAL
      BeforeCreationTime => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyPaginationToken',      # OPTIONAL
    );

    # Results:
    my $Adapters  = $ListAdaptersResponse->Adapters;
    my $NextToken = $ListAdaptersResponse->NextToken;

    # Returns a L<Paws::Textract::ListAdaptersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/ListAdapters>

=head1 ATTRIBUTES


=head2 AfterCreationTime => Str

Specifies the lower bound for the ListAdapters operation. Ensures
ListAdapters returns only adapters created after the specified creation
time.



=head2 BeforeCreationTime => Str

Specifies the upper bound for the ListAdapters operation. Ensures
ListAdapters returns only adapters created before the specified
creation time.



=head2 MaxResults => Int

The maximum number of results to return when listing adapters.



=head2 NextToken => Str

Identifies the next page of results to return when listing adapters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAdapters in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

