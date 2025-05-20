
package Paws::QBusiness::SearchRelevantContent;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has AttributeFilter => (is => 'ro', isa => 'Paws::QBusiness::AttributeFilter', traits => ['NameInRequest'], request_name => 'attributeFilter');
  has ContentSource => (is => 'ro', isa => 'Paws::QBusiness::ContentSource', traits => ['NameInRequest'], request_name => 'contentSource', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has QueryText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryText', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchRelevantContent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/relevant-content');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::SearchRelevantContentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::SearchRelevantContent - Arguments for method SearchRelevantContent on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchRelevantContent on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method SearchRelevantContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchRelevantContent.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $SearchRelevantContentResponse = $qbusiness->SearchRelevantContent(
      ApplicationId => 'MyApplicationId',
      ContentSource => {
        Retriever => {
          RetrieverId => 'MyRetrieverId',    # min: 36, max: 36

        },    # OPTIONAL
      },
      QueryText       => 'MyQueryText',
      AttributeFilter => {
        AndAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
        ContainsAll   => {
          Name  => 'MyDocumentAttributeKey',            # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        ContainsAny => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        EqualsTo => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        GreaterThan => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        GreaterThanOrEquals => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        LessThan => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        LessThanOrEquals => {
          Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeValueStringValueString', # max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        NotFilter    => <AttributeFilter>,
        OrAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $SearchRelevantContentResponse->NextToken;
    my $RelevantContent = $SearchRelevantContentResponse->RelevantContent;

    # Returns a L<Paws::QBusiness::SearchRelevantContentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/SearchRelevantContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the Amazon Q Business application to search.



=head2 AttributeFilter => L<Paws::QBusiness::AttributeFilter>





=head2 B<REQUIRED> ContentSource => L<Paws::QBusiness::ContentSource>

The source of content to search in.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next set of results. (You received this token from a
previous call.)



=head2 B<REQUIRED> QueryText => Str

The text to search for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchRelevantContent in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

