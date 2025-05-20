
package Paws::CustomerProfiles::CreateCalculatedAttributeDefinition;
  use Moose;
  has AttributeDetails => (is => 'ro', isa => 'Paws::CustomerProfiles::AttributeDetails', required => 1);
  has CalculatedAttributeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CalculatedAttributeName', required => 1);
  has Conditions => (is => 'ro', isa => 'Paws::CustomerProfiles::Conditions');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::CustomerProfiles::Filter');
  has Statistic => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCalculatedAttributeDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::CreateCalculatedAttributeDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateCalculatedAttributeDefinition - Arguments for method CreateCalculatedAttributeDefinition on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCalculatedAttributeDefinition on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method CreateCalculatedAttributeDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCalculatedAttributeDefinition.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $CreateCalculatedAttributeDefinitionResponse =
      $profile->CreateCalculatedAttributeDefinition(
      AttributeDetails => {
        Attributes => [
          {
            Name => 'MyattributeName',    # min: 1, max: 64

          },
          ...
        ],    # min: 1, max: 2
        Expression => 'Mystring1To255',    # min: 1, max: 255

      },
      CalculatedAttributeName => 'MytypeName',
      DomainName              => 'Myname',
      Statistic               => 'FIRST_OCCURRENCE',
      Conditions              => {
        ObjectCount => 1,                  # min: 1, max: 100; OPTIONAL
        Range       => {
          Unit  => 'DAYS',                 # values: DAYS
          Value => 1,                      # min: 1, max: 366

        },    # OPTIONAL
        Threshold => {
          Operator => 'EQUAL_TO'
          ,    # values: EQUAL_TO, GREATER_THAN, LESS_THAN, NOT_EQUAL_TO
          Value => 'Mystring1To255',    # min: 1, max: 255

        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MysensitiveText',    # OPTIONAL
      DisplayName => 'MydisplayName',      # OPTIONAL
      Filter      => {
        Groups => [
          {
            Dimensions => [
              {
                Attributes => {
                  'MyattributeName' => {
                    DimensionType => 'INCLUSIVE'
                    , # values: INCLUSIVE, EXCLUSIVE, CONTAINS, BEGINS_WITH, ENDS_WITH, BEFORE, AFTER, BETWEEN, NOT_BETWEEN, ON, GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, EQUAL
                    Values => [
                      'Mystring1To255', ...    # min: 1, max: 255
                    ],    # min: 1, max: 10

                  },    # key: min: 1, max: 64
                },

              },
              ...
            ],    # min: 1, max: 10
            Type => 'ALL',    # values: ALL, ANY, NONE

          },
          ...
        ],    # min: 1, max: 2
        Include => 'ALL',    # values: ALL, ANY, NONE

      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $AttributeDetails =
      $CreateCalculatedAttributeDefinitionResponse->AttributeDetails;
    my $CalculatedAttributeName =
      $CreateCalculatedAttributeDefinitionResponse->CalculatedAttributeName;
    my $Conditions  = $CreateCalculatedAttributeDefinitionResponse->Conditions;
    my $CreatedAt   = $CreateCalculatedAttributeDefinitionResponse->CreatedAt;
    my $Description = $CreateCalculatedAttributeDefinitionResponse->Description;
    my $DisplayName = $CreateCalculatedAttributeDefinitionResponse->DisplayName;
    my $Filter      = $CreateCalculatedAttributeDefinitionResponse->Filter;
    my $LastUpdatedAt =
      $CreateCalculatedAttributeDefinitionResponse->LastUpdatedAt;
    my $Statistic = $CreateCalculatedAttributeDefinitionResponse->Statistic;
    my $Tags      = $CreateCalculatedAttributeDefinitionResponse->Tags;

# Returns a L<Paws::CustomerProfiles::CreateCalculatedAttributeDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/CreateCalculatedAttributeDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeDetails => L<Paws::CustomerProfiles::AttributeDetails>

Mathematical expression and a list of attribute items specified in that
expression.



=head2 B<REQUIRED> CalculatedAttributeName => Str

The unique name of the calculated attribute.



=head2 Conditions => L<Paws::CustomerProfiles::Conditions>

The conditions including range, object count, and threshold for the
calculated attribute.



=head2 Description => Str

The description of the calculated attribute.



=head2 DisplayName => Str

The display name of the calculated attribute.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 Filter => L<Paws::CustomerProfiles::Filter>

Defines how to filter incoming objects to include part of the
Calculated Attribute.



=head2 B<REQUIRED> Statistic => Str

The aggregation operation to perform for the calculated attribute.

Valid values are: C<"FIRST_OCCURRENCE">, C<"LAST_OCCURRENCE">, C<"COUNT">, C<"SUM">, C<"MINIMUM">, C<"MAXIMUM">, C<"AVERAGE">, C<"MAX_OCCURRENCE">

=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCalculatedAttributeDefinition in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

