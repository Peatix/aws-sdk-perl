
package Paws::QBusiness::UpdateDataAccessor;
  use Moose;
  has ActionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::ActionConfiguration]', traits => ['NameInRequest'], request_name => 'actionConfigurations', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataAccessorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataAccessorId', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataAccessor');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dataaccessors/{dataAccessorId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateDataAccessorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateDataAccessor - Arguments for method UpdateDataAccessor on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataAccessor on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateDataAccessor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataAccessor.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateDataAccessorResponse = $qbusiness->UpdateDataAccessor(
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
      ApplicationId  => 'MyApplicationId',
      DataAccessorId => 'MyDataAccessorId',
      DisplayName    => 'MyDataAccessorName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateDataAccessor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionConfigurations => ArrayRef[L<Paws::QBusiness::ActionConfiguration>]

The updated list of action configurations specifying the allowed
actions and any associated filters.



=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the Amazon Q Business application.



=head2 B<REQUIRED> DataAccessorId => Str

The unique identifier of the data accessor to update.



=head2 DisplayName => Str

The updated friendly name for the data accessor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataAccessor in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

