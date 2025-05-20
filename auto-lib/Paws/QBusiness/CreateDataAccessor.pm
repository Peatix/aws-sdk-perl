
package Paws::QBusiness::CreateDataAccessor;
  use Moose;
  has ActionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::ActionConfiguration]', traits => ['NameInRequest'], request_name => 'actionConfigurations', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has Principal => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principal', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataAccessor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dataaccessors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreateDataAccessorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateDataAccessor - Arguments for method CreateDataAccessor on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataAccessor on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreateDataAccessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataAccessor.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreateDataAccessorResponse = $qbusiness->CreateDataAccessor(
      ActionConfigurations => [
        {
          Action              => 'MyQIamAction',
          FilterConfiguration => {
            DocumentAttributeFilter => {
              AndAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
              ContainsAll   => {
                Name  => 'MyDocumentAttributeKey',            # min: 1, max: 200
                Value => {
                  DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                  LongValue       => 1,                        # OPTIONAL
                  StringListValue => [
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },

              },    # OPTIONAL
              ContainsAny => {
                Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                Value => {
                  DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                  LongValue       => 1,                        # OPTIONAL
                  StringListValue => [
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },

              },    # OPTIONAL
              EqualsTo => {
                Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                Value => {
                  DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                  LongValue       => 1,                        # OPTIONAL
                  StringListValue => [
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },

              },    # OPTIONAL
              GreaterThan => {
                Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                Value => {
                  DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                  LongValue       => 1,                        # OPTIONAL
                  StringListValue => [
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },

              },    # OPTIONAL
              GreaterThanOrEquals => {
                Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                Value => {
                  DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                  LongValue       => 1,                        # OPTIONAL
                  StringListValue => [
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },

              },    # OPTIONAL
              LessThan => {
                Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                Value => {
                  DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                  LongValue       => 1,                        # OPTIONAL
                  StringListValue => [
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },

              },    # OPTIONAL
              LessThanOrEquals => {
                Name  => 'MyDocumentAttributeKey',    # min: 1, max: 200
                Value => {
                  DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                  LongValue       => 1,                        # OPTIONAL
                  StringListValue => [
                    'MyString', ...    # min: 1, max: 2048
                  ],    # OPTIONAL
                  StringValue => 'MyDocumentAttributeValueStringValueString'
                  ,     # max: 2048; OPTIONAL
                },

              },    # OPTIONAL
              NotFilter    => <AttributeFilter>,
              OrAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
            },

          },    # OPTIONAL
        },
        ...
      ],
      ApplicationId => 'MyApplicationId',
      DisplayName   => 'MyDataAccessorName',
      Principal     => 'MyPrincipalRoleArn',
      ClientToken   => 'MyClientToken',        # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DataAccessorArn   = $CreateDataAccessorResponse->DataAccessorArn;
    my $DataAccessorId    = $CreateDataAccessorResponse->DataAccessorId;
    my $IdcApplicationArn = $CreateDataAccessorResponse->IdcApplicationArn;

    # Returns a L<Paws::QBusiness::CreateDataAccessorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreateDataAccessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionConfigurations => ArrayRef[L<Paws::QBusiness::ActionConfiguration>]

A list of action configurations specifying the allowed actions and any
associated filters.



=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the Amazon Q Business application.



=head2 ClientToken => Str

A unique, case-sensitive identifier you provide to ensure idempotency
of the request.



=head2 B<REQUIRED> DisplayName => Str

A friendly name for the data accessor.



=head2 B<REQUIRED> Principal => Str

The Amazon Resource Name (ARN) of the IAM role for the ISV that will be
accessing the data.



=head2 Tags => ArrayRef[L<Paws::QBusiness::Tag>]

The tags to associate with the data accessor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataAccessor in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

